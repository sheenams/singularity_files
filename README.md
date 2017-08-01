To create a singularity image:

singularity create <name-version>.img

To bootstrap a Singularity file into an image:

sudo singularity bootstrap <name-version>.img Singularity-<name-version>

To run singularity image:

singularity run/exec <name-version>.img

To bind a directory to image:

singularity run/exec --bind <abs/path> <name-version>.img

