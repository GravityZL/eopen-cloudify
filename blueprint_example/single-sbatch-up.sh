#!/bin/bash
cd single-sbatch-job
cfy blueprints upload -b sample-job blueprint.yaml
read -n 1 -s -p "Press any key to continue"
echo ''
cfy deployments create -b sample-job -i ../local-blueprint-inputs.yaml --skip-plugins-validation sample-job
read -n 1 -s -p "Press any key to continue"
echo ''
cfy executions start -d sample-job install
read -n 1 -s -p "Press any key to continue"
echo ''
cfy executions start -d sample-job run_jobs
