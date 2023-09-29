#!/bin/bash
#PBS -N vasp_std
#PBS -l nodes=1:ppn=20
#PBS -q user5
cd $PBS_O_WORKDIR
export FI_PROVIDER=tcp

for i in {001..568}
	do
		cd dir-$i
#		ln -sf ../INCAR
#		ln -sf ../KPOINTS
#		ln -sf ../POTCAR
		mpirun -np 20 vasp_std > vasp.out 
		cd ..
	done
 
