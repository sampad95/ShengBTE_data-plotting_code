#!/bin/bash
for fl in 3RD.POSCAR.*
do
# fl $fl
# echo fl
# echo "${fl%%-*}"
 echo "${fl##*.}"
for i in ${fl##*.}; do
 mkdir dir-$i;
 mv 3RD.POSCAR.$i dir-$i/POSCAR;
 cp INCAR KPOINTS POTCAR dir-$i;
done
done
