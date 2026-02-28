package handlers

import (
	"context"
	"net/http"

	"backend_api/config"
	"backend_api/model"

	"github.com/gin-gonic/gin"
)

func GetItems(c *gin.Context) {
	ctx := context.Background()

	docs, err := config.FirestoreClient.Collection("items").Documents(ctx).GetAll()
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	items := []model.Item{}

	for _, doc := range docs {
		var item model.Item
		doc.DataTo(&item)
		item.ID = doc.Ref.ID
		items = append(items, item)
	}

	c.JSON(http.StatusOK, items)
}

func CreateItem(c *gin.Context) {
	var item model.Item

	if err := c.ShouldBindJSON(&item); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": err.Error(),
		})
		return
	}

	ctx := context.Background()

	doc, _, err := config.FirestoreClient.
		Collection("items").
		Add(ctx, item)

	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"id": doc.ID,
	})
}
