# README
Demonstrate using rego on `docker scan` output

## Install
```sh
brew install conftest
```

## Docker Scan example
```sh
# create the source data
mkdir -p ./scans
docker scan ubuntu:21.04 --json > ./scans/ubuntu21_04.json  
```

## Test policy
```sh
# open repl
opa run ./scans/ubuntu21_04.json ./policy/scan.rego

# inside repl
data.vulnerabilities[_].severity
```


## Conftest


```sh
conftest test --policy <my-directory> <input-file(s)/input-folder>
```

# Resources  
* conftest docs [here](https://www.conftest.dev/)
