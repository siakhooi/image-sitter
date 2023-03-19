% IMAGE-SITTER-DELETE-IF-EXISTS(1) |Image-Sitter Commands
% Siak Hooi
% March 2023

# NAME
image-sitter-delete-if-exists - remove image for each url in the list of groups given, if it is exists in local.

# SYNOPSIS
**image-sitter-delete-if-exists** group [group...]

# DESCRIPTION
**image-sitter-delete-if-exists** will remove image for each the url, if it is locally exists.

# ENVIRONMENT VARIABLES
IMAGE_SITTER_HOME
: the config directory, default to **$HOME/.image-sitter**

IMAGE_SITTER_CLI
: the command to run with each url, default to **docker**.

# DIRECTORIES
$HOME/.image-sitter/*group*/delete-if-exists/*
: files contain url that **image-sitter-delete-if-exists** will work on.

# LICENSE
MIT

# BUGS
Report bugs at https://github.com/siakhooi/image-sitter/issues.

# SEE ALSO
image-sitter(1), image-sitter-pull-always(1), image-sitter-pull-if-not-exists(1), image-sitter-init(1)
