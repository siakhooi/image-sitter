% IMAGE-SITTER-INIT(1) Siak Hooi DevUtils 1.0.0|Image-Sitter Commands
% Siak Hooi
% March 2023

# NAME
image-sitter-init - initialize a new image-sitter group.

# SYNOPSIS
**image-sitter-init** group

# DESCRIPTION
Initialize a new image-sitter group. A directory named *group* will be created in the image-sitter config directory, *$HOME/.image-sitter*, with 3 predefined subdirectories *pull-always*, *pull-if-not-exists*, *delete-if-exists* and sample files.


Directory structure:


\ \  $HOME/.image-sitter/*group*/\
\ \ \ \  + pull-always/\
\ \ \ \ \ \  + sample.images.txt\
\ \ \ \  + pull-if-not-exists/\
\ \ \ \ \ \  + sample.images.txt\
\ \ \ \  + delete-if-exists/\
\ \ \ \ \ \  + sample.images.txt

# EXAMPLES
**image-sitter-init** public-images

# ENVIRONMENT VARIABLES
IMAGE_SITTER_HOME
: the config directory, default to **$HOME/.image-sitter**

# DIRECTORIES
$HOME/.image-sitter
: the default config directory

# EXIT CODES
**1**
: If the group has been created previously, ie: the directory ~/.image-sitter/group already exists.

# LICENSE
MIT

# BUGS
Report bugs at https://github.com/siakhooi/image-sitter/issues.

# SEE ALSO
image-sitter(1), image-sitter-pull-always(1), image-sitter-pull-if-not-exists(1), image-sitter-delete-if-exists(1)
