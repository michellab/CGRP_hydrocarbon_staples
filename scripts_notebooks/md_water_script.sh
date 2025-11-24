pmemd.cuda -O -i min.in -o min.out -p CGRP_water.prmtop -c CGRP_water.inpcrd -r min.rst 
pmemd.cuda -O -i heat1.in -o heat1.out -p CGRP_water.prmtop -c min.rst -r heat1.rst -ref min.rst -x heat1.nc 
pmemd.cuda -O -i heat2.in -o heat2.out -p CGRP_water.prmtop -c heat1.rst -r heat2.rst -ref heat1.rst -x heat2.nc 
pmemd.cuda -O -i eq1.in -o eq1.out -p CGRP_water.prmtop -c heat2.rst -r eq1.rst -ref heat2.rst -x eq1.nc 
pmemd.cuda -O -i eq2.in -o eq2.out -p CGRP_water.prmtop -c eq1.rst -r eq2.rst -ref eq1.rst -x eq2.nc 
pmemd.cuda -O -i prod.in -o prod.out -p CGRP_water.prmtop -c eq2.rst -r prod.rst -ref eq2.rst -x prod.nc
