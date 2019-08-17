package main

import "github.com/choujimmy/gomakefile/pkg/version"

func main() {
	println("Hello, app1")
	println("Version:", version.GitVersion)
	println("BuildAt:", version.BuildDate)
}
