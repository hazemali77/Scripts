#!/bin/bash
variable1=$1
[[ $# -lt 1 ]]; echo "No arguemnt"
[[ $# == 1 ]]; variable2=${2:-$variable1}
[[ $# -gt 1 ]]; variable2=$2
let result=$variable1*$variable2
echo "result = $result"

