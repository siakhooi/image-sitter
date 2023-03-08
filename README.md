# Image Sitter

Programs to take care of your container images. It help you ensure you have a up to date local cache of the docker images that you frequently used.

## Introduction

You maintain the docker url in several files, categorize into groups, and also 3 predefined subgroup, which is 'pull-always', 'pull-if-not-exists', and 'delete-if-exists'.
`image-sitter` program will do the necessary pull or delete when it is triggered.

## Commands

```bash
image-sitter-init group
image-sitter group [group ...]
image-sitter-pull-always group [group ...]
image-sitter-pull-if-not-exists group [group ...]
image-sitter-delete-if-exists group [group ...]
```

## Quick Start

### Installation

```bash
$ sudo curl -L https://siakhooi.github.io/apt/siakhooi-apt.list | sudo tee /etc/apt/sources.list.d/siakhooi-apt.list > /dev/null
$ sudo curl -L https://siakhooi.github.io/apt/siakhooi-apt.gpg  | sudo tee /usr/share/keyrings/siakhooi-apt.gpg > /dev/null
$ sudo apt update
$ sudo apt install siakhooi-image-sitter
```

### Using Image Sitter

```bash
# create the group
image-sitter-init quick-start-1

# pull images
image-sitter quick-start-1
```

## Directory structure

```txt
~/.image-sitter/
   + group1/
      + pull-always/
         + file1.txt
         + file2.txt
         + ...
      + pull-if-not-exists/
         + file1.txt
         + file2.txt
         + ...
      + delete-if-exists/
         + file1.txt
         + file2.txt
         + ...
   + group2/
      + pull-always/
         + file1.txt
         + file2.txt
         + ...
      + pull-if-not-exists/
         + file1.txt
         + file2.txt
         + ...
      + delete-if-exists/
         + file1.txt
         + file2.txt
         + ...
   + ...
```

## Deployments

- <https://siakhooi.github.io/apt/>
- <https://siakhooi.jfrog.io/ui/packages>
