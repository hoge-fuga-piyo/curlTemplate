#!/bin/bash

declare -A params
params["hoge"]="hogehoge"
params["fuga"]="fuga"

function runPostCurl(){
  for key in ${!params[@]}; do
    local value=${params[$key]}
    body=$body"&"$key=$value
  done
  curl -X POST -d "$body" http://localhost:8080
}

runPostCurl
