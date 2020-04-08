# go-template

## usage

### 1. setup git

```shell script
$ git clone git@github.com:MH4GF/go-template.git
$ cd ..
# copy and rename to APP_NAME
$ cp -r go-template <APP_NAME>
$ cd <APP_NAME>
$ rm -rf .git
$ git init
```

### 2. go mod init

```shell script
$ go mod init <APP_NAME>
go: creating new go.mod: module <APP_NAME>
```

### 3. rename APP_NAME in sources.

```shell script
$ vim Dockerfile

- ARG app-name="app-name"
+ ARG app-name="<APP_NAME>"

$ vim Makefile

- NAME        := app-name
+ NAME        := <APP_NAME>

$ vim build.sh

- declare -r Name="app-name"
+ declare -r Name="<APP_NAME>"
```

### 4. build

```shell script
$ make build
$ bin/<APP_NAME>
hello world!
```
