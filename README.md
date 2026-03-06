# Computational Design, Synthesis, and Evaluation of Stapled Peptide-Based Antagonists of the CGRP Receptor
This repository contains files related to the computational study as described in the "Computational Design, Synthesis, and Evaluation of Stapled Peptide-Based Antagonists of the CGRP Receptor" paper.

## simulation_scripts

Contains scripts to run simulations with the AMBER molecular dynamics engine (`min`, `heat`, `eq`, `prod` files), as well as some utility scripts for removing water and lipid bilayer molecules from trajectories (`dry_trajectory.in`) and preparing PDB files as inputs for simulations (`tleap.in`).

## parameter_files

Contains the lib and frcmod files necessary to parameterise the stapled residues. These parameters have been prepared broadly following the approach described in this [paper](https://chemrxiv.org/engage/chemrxiv/article-details/68c3511c23be8e43d6760a9c), using a previous version of the protocol where no fragmentation was used.

## receptor_bound_models

Contains PDB files of the peptides in complex with the CGRP receptor, embedded in a lipid bilayer and solvated in water at 0.15 M NaCl. These files were afterwards processed with tleap to generate input files for simulations in the presence of the receptor. We have also included alternative files where the receptor and ligand are in different chains to facilitate visualising in e.g. PyMol.

## water_simulation_models

Contains PDB files of the peptides in the absence of receptor, membrane and water. These files were afterwards processed with tleap to generate input files for simulations in the absence of the receptor.

## input_files

Contains topology and coordinate files used as input for MD simulations.

## output_files

Contains output files from MD simulations (PDB of representative structures and simulation trajectories in tar.xz format). Note that water molecules, lipid bilayer molecules, Na+ and Cl- ions, and hydrogen atoms have been removed to allow for smaller trajectory file sizes. Additionally, the trajectory files have been compressed. To uncompress them, run:
``tar -xvf file.tar.xz``

## scripts_notebooks

Contains scripts to prepare (`tleap_preparation_lipids.ipynb`), run (`md_receptor_script.sh`, `md_water_script.sh`) and post-process simulations (`trajectory_analysis.ipynb`, `loop_get_dynamic_interactions.sh`, `GetContactAnalysis_lig-rec.ipynb`, `GetContacts_lig-lig.ipynb`).

## Citation
Schofield, A.L.; Notari, E.; Rožňovcová, M.; Cox, K.W.; D'Aloisio, V.; Steuer, C.; Michel, J.; Cottrell, G.S.; Coxon, C.R. Computational Design, Synthesis, and Evaluation of Stapled Peptide-Based Antagonists of the CGRP Receptor. *J. Med. Chem.* **2026**, Article ASAP.
