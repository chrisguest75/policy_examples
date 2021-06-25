# README
Simple example to demonstrate how to use rego 

## Start tutorial
Following this [guide](https://www.openpolicyagent.org/docs/v0.11.0/get-started/)

## Start repl
```sh
opa run data.json example.rego   
```

Load and view documents
```rego
data.servers[_].id
data.opa.example.public_servers[x]
```

```rego
# create index
i := 0
data.servers[i]

# unset index
unset i
data.servers[i]
```

```
import data.servers
servers[i].ports[_] == "p2"; id := servers[i].id

package opa.example
public_servers[x].protocols[_] == "http"
```

Violations
```
import data.servers
violations[s] {
  s := servers[_]
  s.protocols[_] == "http"
  public_servers[s]
}
```

# Resources  
