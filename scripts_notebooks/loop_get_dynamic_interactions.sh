for i in {305..372}; do
    python /mnt/storage1/adam/getcontacts/get_dynamic_contacts.py --cores 10 --topology dry.prmtop --trajectory trajtotal.dcd --itypes all --sele "resid $i" --sele2 "resid 1 to 304" --output "${i}_all_interactions.tsv"
    python /mnt/storage1/adam/getcontacts/get_contact_frequencies.py --input_files "${i}_all_interactions.tsv" --output_file "${i}_all_interactions_freq.tsv"
    python /mnt/storage1/adam/getcontacts/get_dynamic_contacts.py --cores 10 --topology dry.prmtop --trajectory trajtotal.dcd --itypes hb --sele "resid $i" --sele2 "resid 1 to 304" --output "${i}_hb_interactions.tsv"
    python /mnt/storage1/adam/getcontacts/get_contact_frequencies.py --input_files "${i}_hb_interactions.tsv" --output_file "${i}_hb_interactions_freq.tsv"
    python /mnt/storage1/adam/getcontacts/get_dynamic_contacts.py --cores 10 --topology dry.prmtop --trajectory trajtotal.dcd --itypes sb --sele "resid $i" --sele2 "resid 1 to 304" --output "${i}_sb_interactions.tsv"
    python /mnt/storage1/adam/getcontacts/get_contact_frequencies.py --input_files "${i}_sb_interactions.tsv" --output_file "${i}_sb_interactions_freq.tsv"
    python /mnt/storage1/adam/getcontacts/get_dynamic_contacts.py --cores 10 --topology dry.prmtop --trajectory trajtotal.dcd --itypes vdw --sele "resid $i" --sele2 "resid 1 to 304" --output "${i}_vdw_interactions.tsv"
    python /mnt/storage1/adam/getcontacts/get_contact_frequencies.py --input_files "${i}_vdw_interactions.tsv" --output_file "${i}_vdw_interactions_freq.tsv"
    python /mnt/storage1/adam/getcontacts/get_dynamic_contacts.py --cores 10 --topology dry.prmtop --trajectory trajtotal.dcd --itypes hp --sele "resid $i" --sele2 "resid 1 to 304" --output "${i}_hp_interactions.tsv"
    python /mnt/storage1/adam/getcontacts/get_contact_frequencies.py --input_files "${i}_hp_interactions.tsv" --output_file "${i}_hp_interactions_freq.tsv" --itypes hp
    python /mnt/storage1/adam/getcontacts/get_contact_frequencies.py --input_files "${i}_hp_interactions.tsv" --output_file "${i}_hplp_interactions_freq.tsv" --itypes hplp
    python /mnt/storage1/adam/getcontacts/get_dynamic_contacts.py --cores 10 --topology dry.prmtop --trajectory trajtotal.dcd --itypes pc --sele "resid $i" --sele2 "resid 1 to 304" --output "${i}_pc_interactions.tsv"
    python /mnt/storage1/adam/getcontacts/get_contact_frequencies.py --input_files "${i}_pc_interactions.tsv" --output_file "${i}_pc_interactions_freq.tsv"
    python /mnt/storage1/adam/getcontacts/get_dynamic_contacts.py --cores 10 --topology dry.prmtop --trajectory trajtotal.dcd --itypes ps --sele "resid $i" --sele2 "resid 1 to 304" --output "${i}_ps_interactions.tsv"
    python /mnt/storage1/adam/getcontacts/get_contact_frequencies.py --input_files "${i}_ps_interactions.tsv" --output_file "${i}_ps_interactions_freq.tsv"
    python /mnt/storage1/adam/getcontacts/get_dynamic_contacts.py --cores 10 --topology dry.prmtop --trajectory trajtotal.dcd --itypes ts --sele "resid $i" --sele2 "resid 1 to 304" --output "${i}_ts_interactions.tsv"
    python /mnt/storage1/adam/getcontacts/get_contact_frequencies.py --input_files "${i}_ts_interactions.tsv" --output_file "${i}_ts_interactions_freq.tsv"
done