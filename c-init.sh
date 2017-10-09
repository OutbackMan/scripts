#: Title        c-init
#: Date         09/10/2017
#: Author       "Russell Coight" <rj.coight@gmail.com>
#: Description  Create directory structure for gnu-linux C project
#: Version      1.0.0
#: Usage        c-init <name>

script_name=${0##*/}
version=1.0.0

project_name=${1:?"Must pass name of project as argument"}
folder_names="lib,doc,config,include,src,test,scripts,bin,build"
file_names="README,LICENSE,Makefile"

mkdir "$project_name" && eval "touch \"\$project_name\"/{$file_names}" && eval "mkdir \"\$project_name\"/{$folder_names}"

