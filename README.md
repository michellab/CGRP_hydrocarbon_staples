# Files for the "Computational Design, Synthesis and Evaluation of Stapled Peptide-Based Antagonists of the CGRP Receptor" paper

## input_files

Contains scripts to run simulations with the AMBER molecular dynamics engine (`min`, `heat`, `eq`, `prod` files), as well as some utility scripts for removing water molecules from trajectories (`dry_trajectory.in`) and preparing PDB files as inputs for simulations (`tleap.in`).

## parameter_files

Contains the lib and frcmod files necessary to parameterise the stapled residues. These parameters have been prepared broadly following the approach described in this [paper](https://chemrxiv.org/engage/chemrxiv/article-details/68c3511c23be8e43d6760a9c), using a previous version of the protocol where no fragmentation was used.

## receptor_bound_models

Contains PDB files of the peptides in complex with the CGRP receptor, embedded in a lipid bilayer and solvated in water at 0.15 M NaCl. These files are processed with tleap to generate simulation input files.

## water_simulation_models

Contains PDB files of the peptides in the absence of receptor, membrane and water. These files are processed with tleap to generate simulation input files.

## scripts_notebooks

Contains scripts to prepare (`tleap_preparation_lipids.ipynb`), run (`md_receptor_script.sh`, `md_water_script.sh`) and post-process simulations (`trajectory_analysis.ipynb`, `loop_get_dynamic_interactions.sh`, `GetContactAnalysis_lig-rec.ipynb`, `GetContacts_lig-lig.ipynb`).

## Citation
TBD
