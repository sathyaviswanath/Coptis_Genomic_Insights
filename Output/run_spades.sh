set -e
true
true
/opt/conda/bin/spades-hammer /workspaces/Coptis_Genomic_Insights/Output/corrected/configs/config.info
/home/codespace/.python/current/bin/python3 /opt/conda/share/spades/spades_pipeline/scripts/compress_all.py --input_file /workspaces/Coptis_Genomic_Insights/Output/corrected/corrected.yaml --ext_python_modules_home /opt/conda/share/spades --max_threads 4 --output_dir /workspaces/Coptis_Genomic_Insights/Output/corrected --gzip_output
true
true
/opt/conda/bin/spades-core /workspaces/Coptis_Genomic_Insights/Output/K21/configs/config.info /workspaces/Coptis_Genomic_Insights/Output/K21/configs/careful_mode.info
/opt/conda/bin/spades-core /workspaces/Coptis_Genomic_Insights/Output/K33/configs/config.info /workspaces/Coptis_Genomic_Insights/Output/K33/configs/careful_mode.info
/opt/conda/bin/spades-core /workspaces/Coptis_Genomic_Insights/Output/K55/configs/config.info /workspaces/Coptis_Genomic_Insights/Output/K55/configs/careful_mode.info
/opt/conda/bin/spades-core /workspaces/Coptis_Genomic_Insights/Output/K77/configs/config.info /workspaces/Coptis_Genomic_Insights/Output/K77/configs/careful_mode.info
/home/codespace/.python/current/bin/python3 /opt/conda/share/spades/spades_pipeline/scripts/copy_files.py /workspaces/Coptis_Genomic_Insights/Output/K77/before_rr.fasta /workspaces/Coptis_Genomic_Insights/Output/before_rr.fasta /workspaces/Coptis_Genomic_Insights/Output/K77/assembly_graph_after_simplification.gfa /workspaces/Coptis_Genomic_Insights/Output/assembly_graph_after_simplification.gfa /workspaces/Coptis_Genomic_Insights/Output/K77/final_contigs.fasta /workspaces/Coptis_Genomic_Insights/Output/contigs.fasta /workspaces/Coptis_Genomic_Insights/Output/K77/first_pe_contigs.fasta /workspaces/Coptis_Genomic_Insights/Output/first_pe_contigs.fasta /workspaces/Coptis_Genomic_Insights/Output/K77/strain_graph.gfa /workspaces/Coptis_Genomic_Insights/Output/strain_graph.gfa /workspaces/Coptis_Genomic_Insights/Output/K77/scaffolds.fasta /workspaces/Coptis_Genomic_Insights/Output/scaffolds.fasta /workspaces/Coptis_Genomic_Insights/Output/K77/scaffolds.paths /workspaces/Coptis_Genomic_Insights/Output/scaffolds.paths /workspaces/Coptis_Genomic_Insights/Output/K77/assembly_graph_with_scaffolds.gfa /workspaces/Coptis_Genomic_Insights/Output/assembly_graph_with_scaffolds.gfa /workspaces/Coptis_Genomic_Insights/Output/K77/assembly_graph.fastg /workspaces/Coptis_Genomic_Insights/Output/assembly_graph.fastg /workspaces/Coptis_Genomic_Insights/Output/K77/final_contigs.paths /workspaces/Coptis_Genomic_Insights/Output/contigs.paths
true
true
/home/codespace/.python/current/bin/python3 /opt/conda/share/spades/spades_pipeline/scripts/correction_iteration_script.py --corrected /workspaces/Coptis_Genomic_Insights/Output/contigs.fasta --assembled /workspaces/Coptis_Genomic_Insights/Output/misc/assembled_contigs.fasta --assembly_type contigs --output_dir /workspaces/Coptis_Genomic_Insights/Output --bin_home /opt/conda/bin
/home/codespace/.python/current/bin/python3 /opt/conda/share/spades/spades_pipeline/scripts/correction_iteration_script.py --corrected /workspaces/Coptis_Genomic_Insights/Output/scaffolds.fasta --assembled /workspaces/Coptis_Genomic_Insights/Output/misc/assembled_scaffolds.fasta --assembly_type scaffolds --output_dir /workspaces/Coptis_Genomic_Insights/Output --bin_home /opt/conda/bin
true
/home/codespace/.python/current/bin/python3 /opt/conda/share/spades/spades_pipeline/scripts/breaking_scaffolds_script.py --result_scaffolds_filename /workspaces/Coptis_Genomic_Insights/Output/scaffolds.fasta --misc_dir /workspaces/Coptis_Genomic_Insights/Output/misc --threshold_for_breaking_scaffolds 3
true
