#!/bin/sh

#SBATCH -J "MNXB11 Pi approximation"
#SBATCH --time=00:1:00 
#SBATCH -A hep2023-1-6

apptainer run -B /projects:/projects /projects/hep/fs10/mnxb11/containers/mnxb11_al9.latest.sif ./buildnrun_picalc.sh 9

WHEREAMI=$(pwd)
WHOAMI=$(id)

echo "I am $WHOAMI and I live in $WHEREAMI"
echo "I am being run on :"
hostname
echo "The time I have worked is: "
time
echo "I am a very smart script, look at me count to 10:"
for i in {1..10}; do
    echo "$i";
done
FOODARRAY=(Pizza Hamburger Blodpudding)
echo "My favorite foods are:"
for i in "${FOODARRAY[@]}"; do echo "$i"; done

echo "I'm tired, sleepy..."
sleep 5m

