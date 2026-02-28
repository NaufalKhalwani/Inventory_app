package services

import (
	"context"
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
	"backend_api/config"
)

type Service struct {
	ID    string `json:"id"`
	Name  string `json:"name"`
	Price int    `json:"price"`
}

func GetServices(c *gin.Context) {
	ctx := context.Background()

	docs, err := config.FirestoreClient.Collection("services").Documents(ctx).GetAll()
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	fmt.Println("Jumlah docs:", len(docs)) // DEBUG

	services := []Service{}

	for _, doc := range docs {
		var service Service
		doc.DataTo(&service)
		service.ID = doc.Ref.ID
		services = append(services, service)
	}

	c.JSON(http.StatusOK, services)
}

func CreateService(c *gin.Context) {
	var service Service

	if err := c.ShouldBindJSON(&service); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	ctx := context.Background()

	docRef, _, err := config.FirestoreClient.Collection("services").Add(ctx, map[string]interface{}{
		"name":  service.Name,
		"price": service.Price,
	})

	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	service.ID = docRef.ID

	c.JSON(http.StatusOK, service)
}