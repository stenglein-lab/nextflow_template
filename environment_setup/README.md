### This directory contains files necessary to setup a server to run this pipeline

To setup a conda environment containing all of the dependencies necessary to run this pipeline, change to the directory containing these files and run:

In the example commands below change <environment_name> with some identifying name (e.g. mapping_conda_environment> and change <yaml_file> with the name of the yaml file that defines the conda environment's packages (e.g. conda_environment.yaml>.  

This command will install conda and create a new directory in your user's home directory that contains the new conda environment

```
./setup_environment.sh <environment_name> <yaml_file>

#   for instance:
#     ./setup_environment.sh taxonomy_conda_environment conda_environment.yaml
#   
#    this will create a new directory $HOME/taxonomy_conda_environment that contains a new conda environment with the packages specified in conda_environment.yaml
```

If you'd like to update this conda environment with additional conda packages, add them to the .yaml file, change to this directory, and run:

```
conda env update --prefix=$HOME/<environment_name> --file <yaml_file>
```

