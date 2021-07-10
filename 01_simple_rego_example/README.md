# README
Simple example to demonstrate how to use rego 

TODO:
* How do I load a data and policy document inside the repl?
## Start tutorial
Following this [guide](https://www.openpolicyagent.org/docs/v0.11.0/get-started/)

This example deviates from the original to offer a little more investigation.    

## Start repl
```sh
# load the examples data and policy into repl
opa run data.json example.rego   

# print out the help (also show versions)
help

# print out runtime environment
opa.runtime()
```

Investigate data documents
```sh
# examine data
data.servers[_].id
data.opa.example.public_servers[x]

# switching modes to json
json
data.servers[_].id

# back to table
pretty
data.servers[_].id
```

## Indices
```sh
# create index
i := 0
data.servers[i]

# show rules
rules

# unset index and print out
unset i
data.servers[i]
```

## Packages and Imports
```sh
# import the data.servers object to create a server object  
import data.servers
servers[i].ports[_] == "p2"; id := servers[i].id

package opa.example
public_servers[x].protocols[_] == "http"
```

## Violations
```
import data.servers
violations[s] {
  s := servers[_]
  s.protocols[_] == "http"
  public_servers[s]
}
violations[server] = _
```

# Resources  
* language-reference [here](https://www.openpolicyagent.org/docs/v0.11.0/language-reference/#net)