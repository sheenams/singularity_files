Naming conventions:
In order to be able to track versions and share images with multiple pipelines and groups, Singularity bootstrap files should include:
 1. name of main program installed (ie pindel requires samtools/htslib, but is called 'pindel')
 2. exact version of main program (ie pindel-0.2.5b8, not just pindel-0.2.5)

To create a singularity image:

 singularity create (name-version).img

If needed, you can change the size (pindel required this)

 singularity create --size 2048 (name-version).img
 
To bootstrap a Singularity file into an image:

 sudo singularity bootstrap (name-version).img Singularity-(name-version)

To run singularity image:

 ./(name-version).img
 
 OR
 
 singularity run/exec (name-version).img

To bind a directory to image:
 Can append :ro to make it read only 
 singularity run/exec --bind (abs/path)/(path/in/container):ro (name-version).img

