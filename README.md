# Image Sitter

Programs to take care of your container images. It helps to ensure you have an up to date local cache of the docker images that are frequently used.

## Introduction

By maintaining the docker url in several files, categorize into groups, and 3 predefined subgroups, which are 'pull-always', 'pull-if-not-exists', and 'delete-if-exists'.
`image-sitter` programs will do the necessary pull or delete when they are triggered.

## Format of files

- Each line of a file is a docker url, such as: nginx:latest.
- lines started with # will be ignored.
- blank lines will also be ignored.

## Commands

```bash
image-sitter-init group
image-sitter group [group ...]
image-sitter-pull-always group [group ...]
image-sitter-pull-if-not-exists group [group ...]
image-sitter-delete-if-exists group [group ...]
```

## Sample

![sample](sample.gif "Sample")

## Quick Start

### Installation

- Pre-requisite
  - yq <https://github.com/mikefarah/yq>
  - docker <https://docs.docker.com/engine/install/>

```bash
$ sudo curl -L https://siakhooi.github.io/apt/siakhooi-apt.list | sudo tee /etc/apt/sources.list.d/siakhooi-apt.list > /dev/null
$ sudo curl -L https://siakhooi.github.io/apt/siakhooi-apt.gpg  | sudo tee /usr/share/keyrings/siakhooi-apt.gpg > /dev/null
$ sudo apt update
$ sudo apt install siakhooi-image-sitter
```

- To setup bash completion, add the following code in `~/.bashrc` file.

```bash
source <(image-sitter-completion)
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

## Badges

![GitHub](https://img.shields.io/github/license/siakhooi/image-sitter?logo=github)
![GitHub last commit](https://img.shields.io/github/last-commit/siakhooi/image-sitter?logo=github)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/siakhooi/image-sitter?logo=github)
![GitHub issues](https://img.shields.io/github/issues/siakhooi/image-sitter?logo=github)
![GitHub closed issues](https://img.shields.io/github/issues-closed/siakhooi/image-sitter?logo=github)
![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/siakhooi/image-sitter?logo=github)
![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed-raw/siakhooi/image-sitter?logo=github)
![GitHub top language](https://img.shields.io/github/languages/top/siakhooi/image-sitter?logo=github)
![GitHub language count](https://img.shields.io/github/languages/count/siakhooi/image-sitter?logo=github)
![Lines of code](https://img.shields.io/tokei/lines/github/siakhooi/image-sitter?logo=github)
![GitHub repo size](https://img.shields.io/github/repo-size/siakhooi/image-sitter?logo=github)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/siakhooi/image-sitter?logo=github)
![Workflow](https://img.shields.io/badge/Workflow-github-purple)
![workflow](https://github.com/siakhooi/image-sitter/actions/workflows/workflow-build-with-quality-checks.yml/badge.svg)
![workflow](https://github.com/siakhooi/image-sitter/actions/workflows/workflow-deployments.yml/badge.svg)
![Release](https://img.shields.io/badge/Release-github-purple)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/siakhooi/image-sitter?label=GPR%20release&logo=github)
![GitHub all releases](https://img.shields.io/github/downloads/siakhooi/image-sitter/total?color=33cb56&logo=github)
![GitHub Release Date](https://img.shields.io/github/release-date/siakhooi/image-sitter?logo=github)

[![Generic badge](https://img.shields.io/badge/Funding-BuyMeACoffee-33cb56.svg)](https://www.buymeacoffee.com/siakhooi)
[![Generic badge](https://img.shields.io/badge/Funding-Ko%20Fi-33cb56.svg)](https://ko-fi.com/siakhooi)
![visitors](https://hit-tztugwlsja-uc.a.run.app/?outputtype=badge&counter=ghmd-image-sitter)
