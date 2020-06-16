Repo for singularity and docker build files.

Singularity: 
Naming conventions:
In order to be able to track versions and share images with multiple pipelines and groups, Singularity bootstrap files should include:
 1. name of main program installed (ie pindel requires samtools/htslib, but is called 'pindel')
 2. exact version of main program (ie pindel-0.2.5b8, not just pindel-0.2.5)

To create a singularity image:

 singularity build (name-version).simg Singularity-build-file

To run singularity image:

 ./(name-version).simg
 
 OR
 
 singularity run/exec (name-version).simg

To bind a directory to image:
 Can append :ro to make it read only 
 singularity run/exec --bind (abs/path)/(path/in/container):ro (name-version).simg

Docker:
Naming conventions:
In order to be able to track versions and share images with multiple pipelines and groups, docker build files should include:
 1. name folder of main program installed (ie pindel requires samtools/htslib, but is called 'pindel')
 2. exact version of main program (ie pindel-0.2.5b8, not just pindel-0.2.5)

To create a docker image:

 cd program_folder
 docker build -t (name:version) .

To run docker image:

 docker run name:version
 
 OR interactively 
 
 docker run -it name:version

To bind a directory to image:
 Can append :ro to make it read only 
 docker run/exec -v (abs/path)/(path/in/container):ro name:version
