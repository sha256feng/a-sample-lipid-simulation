#!/bin/bash
#

init="step5_charmm2omm"
cnt=1

pcnt=${cnt}-1
istep="step6.${cnt}_equilibration"
pstep="step6.${pcnt}_equilibration"

echo "python -u openmm_run.py -i ${istep}.inp -t toppar.str -p ${init}.psf -c ${init}.crd -b ${init}.str -orst ${istep}.rst -odcd ${istep}.dcd > ${istep}.out"
python -u openmm_run.py -i ${istep}.inp -t toppar.str -p ${init}.psf -c ${init}.crd -b ${init}.str -orst ${istep}.rst -odcd ${istep}.dcd > ${istep}.out
exit
