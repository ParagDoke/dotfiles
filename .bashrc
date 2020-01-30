
export PS1=$(echo ${PS1} | sed -e 's/w/W/g' -e 's/$/ /')
set -o vi
