# README
Installation and configuration (tips for VSCode)

## Install
```sh 
brew info opa 
brew install opa
```

## Install VSCode Extension
```sh 
code --install-extension tsandall.opa
```

To use the vscode extension you'll need to be in the directory with the policy and data.  
```sh
cd xx_example
code .
```

Once loaded you can execute the policy using `Cmd+Shift+P` -> `OPA: Evaluate Package`

The objects will need to be named after the source data.  Therefore, `data` will be populated from data.json file
```
allow {
    data.books[_].id == 112
}
```

You can evaluate selections by highlighting them.  `OPA: Evaluate Selection`  

# Resources  
* vscode extension [here](https://marketplace.visualstudio.com/items?itemName=tsandall.opa)