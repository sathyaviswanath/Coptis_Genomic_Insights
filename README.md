# Plant Genomics Analysis of *Coptis chinensis*

## 📌 Project Overview

 - This project focuses on the **draft de novo genome analysis of *Coptis chinensis***, a medicinal plant known for its bioactive alkaloids.
 - The objective was to assemble the genome from NGS data, identify coding regions, and perform **functional and pathway analysis** to understand the biological roles of predicted genes.
 - Downstream analysis involved **data cleaning, visualization, and interpretation** using Python in a Jupyter Notebook environment.

---

## 🌿 Selection of Plant Species – *Coptis chinensis*

*Coptis chinensis* is a traditional medicinal plant widely used in herbal medicine due to its production of pharmacologically important compounds such as **berberine**.
Understanding its genomic architecture can provide insights into:

* Secondary metabolite biosynthesis
* Functional gene distribution
* Evolutionary and biological pathways

---

## 🧬 Methodology

### 1️⃣ Draft *De Novo* Genome Assembly

* Raw NGS reads were used for **draft de novo genome assembly**
* Assembly was performed to reconstruct genomic contigs without a reference genome using **SPAdes** tool and assembly quality was assessed by **QUAST** tool.
* Assembly quality was assessed prior to downstream analysis.

---

### 2️⃣ ORF Prediction 

* Assembled contigs were subjected to **Open Reading Frame (ORF) prediction** by using **EMBOSS getorf tool**.
  

---

### 3️⃣ Functional Annotation and Pathway Analysis

* Functional annotation was carried out using **eggNOG-mapper** on the **Galaxy platform**
* Annotation outputs included:

  * Functional category classifications (COG)
  * Gene Ontology (GO) terms
  * KEGG pathway assignments
  * Pfam Domain distribution
* This step enabled biological role inference for predicted genes

---

### 4️⃣ Data Processing and Visualization

* eggNOG output files were imported into **Jupyter Notebook**

* Data cleaning and processing were performed using **Python packages**, including:

  * `pandas` for data handling
  * `numpy` for handling missing values
  * `matplotlib` and `seaborn` for visualization

* Visualizations generated:

  * **Bar plots** representing functional category distributions, Top GO & KEGG pathways
  * **Pie charts** showing Top Pfam domain distributions

---

### 5️⃣ Interpretation of Results

* Bar plots were interpreted to identify **dominant functional gene classes, GO terms and KEGG pathways**
* Pie charts provided insights into top Pfam domin distributions

**Key observations included:**

* Enrichment of genes related to metabolic and biosynthetic processes
* Presence of pathways associated with secondary metabolite production
* Functional diversity indicating complex biological regulation in *Coptis chinensis*

---

## 🛠 Tools and Technologies Used

* **Genome Assembly:** De novo assembly tools - SAPdes, QUAST and EMBOSS getorf
* **Annotation Platform:** Galaxy
* **Functional Annotation:** eggNOG-mapper
* **Programming & Analysis:** Python
* **Visualization:** Jupyter Notebook, Matplotlib, Seaborn

---

## 📊 Outcomes

* Successfully assembled a **draft genome**
* Identified **protein-coding genes**
* Visualized and interpreted **functional and pathway-level insights**
* Demonstrated an end-to-end **plant genomics workflow** from raw data to biological interpretation

---

## 📁 Repository Structure

```text
Coptis_Genomic_Insights/
│
├── README.md
│
├── Documentation/
│   ├── 1_Project_goals.md
│   ├── 2_Plant_genomics_intro.md
│   ├── 3_Coptis_overview.md
│   ├── 4_Genome_assembly.md
│   ├── 5_ORF_Functional_Pathway_Annotation.md
│   └── 6_ORF_Functional_Annotation_Interpretation.md
│
├── Raw_Data/
│
├── Output/
│
├── Images/
    ├── Barplots/
    └── Piecharts/

```
---

## 📌 Conclusion

This project demonstrates hands-on experience in **plant genomics**, **functional annotation** and **bioinformatics data visualization**, highlighting the ability to translate computational results into meaningful biological interpretations.

---

