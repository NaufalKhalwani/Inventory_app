package routes

import (
	"backend_api/handlers"

	"github.com/gin-gonic/gin"
)

func SetupRouter() *gin.Engine {
	r := gin.Default()

	r.GET("/items", handlers.GetItems)
	r.POST("/items", handlers.CreateItem)

	return r
}
