import os
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# 1. Load sample metadata ---------------------------------
samples = pd.read_csv("samples.tsv", sep="\t")
print("Loaded samples:")
print(samples)
print("COLUMNS:", list(samples.columns))

# 2. Read Salmon quant files ------------------------------
tpm_tables = []

for _, row in samples.iterrows():
    # Use column positions: 0 = sample, 1 = condition, 2 = path
    sample = row.iloc[0]
    quant_dir = row.iloc[2]
    quant_path = os.path.join(quant_dir, "quant.sf")

    if not os.path.exists(quant_path):
        raise FileNotFoundError(f"Missing quant.sf for {sample}: {quant_path}")

    df = pd.read_csv(quant_path, sep="\t")
    df = df[["Name", "TPM"]].copy()
    df.rename(columns={"TPM": sample}, inplace=True)
    tpm_tables.append(df)

# 3. Merge all samples ------------------------------------
expression = tpm_tables[0]
for df in tpm_tables[1:]:
    expression = expression.merge(df, on="Name", how="outer")

os.makedirs("Output/RNAseq", exist_ok=True)
expression.to_csv("Output/RNAseq/TPM_matrix_all_samples.csv", index=False)
print("Saved TPM matrix to Output/RNAseq/TPM_matrix_all_samples.csv")

# 4. Simple heatmap of top variable transcripts -----------
expr_nonzero = expression.set_index("Name")
expr_nonzero = expr_nonzero[(expr_nonzero > 0).any(axis=1)]

top_var = expr_nonzero.var(axis=1).sort_values(ascending=False).head(100).index
expr_top = expr_nonzero.loc[top_var]

os.makedirs("Output/Images", exist_ok=True)
plt.figure(figsize=(8, 10))
sns.heatmap(expr_top, cmap="viridis", yticklabels=False)
plt.title("Top 100 variable transcripts (TPM)")
plt.tight_layout()
plt.savefig("Output/Images/TPM_heatmap_top100.png", dpi=300)
plt.close()
print("Saved heatmap to Output/Images/TPM_heatmap_top100.png")
