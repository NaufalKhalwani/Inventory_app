package main

import (
	"backend_api/config"
	"backend_api/routes"
)

func main() {
	config.InitFirebase()

	r := routes.SetupRouter()
	r.Run(":8080")
}
