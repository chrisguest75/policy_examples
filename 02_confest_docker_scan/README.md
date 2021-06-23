# README
Demonstrate using rego on `docker scan` output

## Install
```sh
brew install conftest
```

## Docker Scan example
```sh
mkdir -p ./scans
docker scan ubuntu:21.04 --json > ./scans/ubuntu21_04.json  
```


opa run ./scans/ubuntu21_04.json ./policy/scan.rego 
data.vulnerabilities[_].severity







conftest test --policy <my-directory> <input-file(s)/input-folder>


# Resources  
https://www.conftest.dev/