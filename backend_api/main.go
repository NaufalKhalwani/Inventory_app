package main

import (
	"github.com/gin-gonic/gin"

	"backend_api/config"
	"backend_api/services"
)

func main() {

	config.InitFirebase()

	r := gin.Default()

	r.GET("/services", services.GetServices)
	r.POST("/services", services.CreateService)

	r.Run(":8080")
}