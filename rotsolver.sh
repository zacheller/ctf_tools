#!/bin/bash
# rotsolver

#accept piping in arguments
args=$@
[[ -p /dev/stdin ]] && { mapfile -t; set -- "${MAPFILE[@]}"; set -- $@ $args; }
#https://superuser.com/questions/461946/can-i-use-pipe-output-as-a-shell-script-argument

if [ $# == 1 ]; then
    echo "$(echo $1 | tr '[A-Za-z]' '[ZA-Yza-y]') ; ROT1"  
    echo "$(echo $1 | tr '[A-Za-z]' '[Y-ZA-Xy-za-x]') ; ROT2"
    echo "$(echo $1 | tr '[A-Za-z]' '[X-ZA-Wx-za-w]') ; ROT3"
    echo "$(echo $1 | tr '[A-Za-z]' '[W-ZA-Vw-za-v]') ; ROT4"
    echo "$(echo $1 | tr '[A-Za-z]' '[V-ZA-Uv-za-u]') ; ROT5"
    echo "$(echo $1 | tr '[A-Za-z]' '[U-ZA-Tu-za-t]') ; ROT6"
    echo "$(echo $1 | tr '[A-Za-z]' '[T-ZA-St-za-s]') ; ROT7"
    echo "$(echo $1 | tr '[A-Za-z]' '[S-ZA-Rs-za-r]') ; ROT8"
    echo "$(echo $1 | tr '[A-Za-z]' '[R-ZA-Qr-za-q]') ; ROT9"
    echo "$(echo $1 | tr '[A-Za-z]' '[Q-ZA-Pq-za-p]') ; ROT10"
    echo "$(echo $1 | tr '[A-Za-z]' '[P-ZA-Op-za-o]') ; ROT11"
    echo "$(echo $1 | tr '[A-Za-z]' '[O-ZA-No-za-n]') ; ROT12"
    echo "$(echo $1 | tr '[A-Za-z]' '[N-ZA-Mn-za-m]') ; ROT13 / CAESAR"
    echo "$(echo $1 | tr '[A-Za-z]' '[M-ZA-Lm-za-l]') ; ROT14"
    echo "$(echo $1 | tr '[A-Za-z]' '[L-ZA-Kl-za-k]') ; ROT15"
    echo "$(echo $1 | tr '[A-Za-z]' '[K-ZA-Jk-za-j]') ; ROT16"
    echo "$(echo $1 | tr '[A-Za-z]' '[J-ZA-Ij-za-i]') ; ROT17"
    echo "$(echo $1 | tr '[A-Za-z]' '[I-ZA-Hi-za-h]') ; ROT18"
    echo "$(echo $1 | tr '[A-Za-z]' '[H-ZA-Gh-za-g]') ; ROT19"
    echo "$(echo $1 | tr '[A-Za-z]' '[G-ZA-Fg-za-f]') ; ROT20"
    echo "$(echo $1 | tr '[A-Za-z]' '[F-ZA-Ef-za-e]') ; ROT21"
    echo "$(echo $1 | tr '[A-Za-z]' '[E-ZA-De-za-d]') ; ROT22"
    echo "$(echo $1 | tr '[A-Za-z]' '[D-ZA-Cd-za-c]') ; ROT23"
    echo "$(echo $1 | tr '[A-Za-z]' '[C-ZA-Bc-za-b]') ; ROT24"
    echo "$(echo $1 | tr '[A-Za-z]' '[B-ZAb-za]') ; ROT25"
    echo "$(echo $1 | tr '\!-~' 'P-~\!-O') ; ROT47 / 94 PRINTABLE ASCII CHARACTERS FROM ! (33) TO ~ (126)"
else
    echo "Syntax: rotsolver encrypted_text"
    echo "Note: piping is enabled"
fi
