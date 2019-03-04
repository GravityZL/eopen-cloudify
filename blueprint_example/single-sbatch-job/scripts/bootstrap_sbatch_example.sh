#!/bin/bash -l

FILE="touch.script"

cat > $FILE <<- EOM
#!/bin/bash -l

#SBATCH -p fast
#PBS -l nodes=1:ppn=1
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --ntasks-per-node=1
#PBS -l walltime=60
#SBATCH -t 00:01

cd ${CURRENT_WORKDIR}
touch $1.test
EOM
