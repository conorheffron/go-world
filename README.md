## Run file
```shell
(base) % go run main/HelloWorld.go 
Hello World!%   
```
## or run package
```shell
(base)  % go mod init main
go: creating new go.mod: module main
go: to add module requirements and sums:
        go mod tidy

(base)  % go mod tidy


(base)  % go build main
package main is not in std (/usr/local/go/src/main)


(base)  % go build main/HelloWorld.go 


(base)  % ./HelloWorld 
Hello World!    
```                                                                                                                                                                                                         