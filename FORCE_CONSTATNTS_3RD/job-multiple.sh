!/bin/sh
#$ -S /bin/sh
#$ -v LD_LIBRARY_PATH,PATH
#$ -R y
#$ -cwd
#$ -pe mpi* 12
#

#Intel OneAPI Fortran Complier
source /opt/intel/oneapi/setvars.sh intel64
export LD_LIBRARY_PATH=/opt/intel/oneapi/mkl/2021.2.0/lib/intel64:$LD_LIBRARY_PATH
#


wd=`pwd`
iam=`whoami`

echo Running on host `hostname`
echo Started at `date`
echo Starting Directory is `pwd`
for i in {301..444}
        do
                cd dir-$i
#               ln -sf ../INCAR
#               ln -sf ../KPOINTS
#               ln -sf ../POTCAR
                mpirun -np 12 vasp_std > vasp.out
                cd ..
        done

echo Finished at `date`

exit

