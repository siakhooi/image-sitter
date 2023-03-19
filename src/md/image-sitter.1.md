% IMAGE-SITTER(1) Siak Hooi Development Utilities 1.0.0|Image-Sitter
% Siak Hooi
% March 2023

# NAME
image-sitter - Run all 3 image-sitter commands on the list of groups given.

# SYNOPSIS
**image-sitter** group [group...]

# DESCRIPTION
For each *group* given, run the following image-sitter commands:

image-sitter-delete-if-exists *group*\
image-sitter-pull-if-not-exists *group*\
image-sitter-pull-always *group*

# ENVIRONMENT VARIABLES
IMAGE_SITTER_HOME
: the config directory, default to **$HOME/.image-sitter**

IMAGE_SITTER_CLI
: the command to run with each url, default to **docker**.

# DIRECTORIES
$HOME/.image-sitter/*group*/pull-always/*
: files contain url that **image-sitter-pull-always** will work on.

$HOME/.image-sitter/*group*/pull-if-not-exists/*
: files contain url that **image-sitter-pull-if-not-exists** will work on.

$HOME/.image-sitter/*group*/delete-if-exists/*
: files contain url that **image-sitter-delete-if-exists** will work on.

# LICENSE
MIT

# BUGS
Report bugs at https://github.com/siakhooi/image-sitter/issues.

# SEE ALSO
image-sitter-pull-always(1), image-sitter-pull-if-not-exists(1), image-sitter-delete-if-exists(1), image-sitter-init(1)
