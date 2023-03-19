% IMAGE-SITTER-PULL-ALWAYS(1) | Image-Sitter Commands
% Siak Hooi
% March 2023

# NAME
image-sitter-pull-always - pull image for each url in the list of groups given.

# SYNOPSIS
**image-sitter-pull-always** group [group...]

# DESCRIPTION
**image-sitter-pull-always** will always pull image for each the url, regardless if it is locally exists. This is useful for those with *latest* tag.

# ENVIRONMENT VARIABLES
IMAGE_SITTER_HOME
: the config directory, default to **$HOME/.image-sitter**

IMAGE_SITTER_CLI
: the command to run with each url, default to **docker**.

# DIRECTORIES
$HOME/.image-sitter/*group*/pull-always/*
: files contain url that **image-sitter-pull-always** will work on.

# LICENSE
MIT

# BUGS
Report bugs at https://github.com/siakhooi/image-sitter/issues.

# SEE ALSO
image-sitter(1), image-sitter-pull-if-not-exists(1), image-sitter-delete-if-exists(1), image-sitter-init(1)
