package config

import (
	"context"
	"fmt"
	firebase "firebase.google.com/go"
	"google.golang.org/api/option"
	"cloud.google.com/go/firestore"
)

var FirestoreClient *firestore.Client

func InitFirebase() {
	ctx := context.Background()

	opt := option.WithCredentialsFile("serviceAccountKey.json")

	app, err := firebase.NewApp(ctx, &firebase.Config{
		ProjectID: "inventoryapp-f5ffd",
	}, opt)
	if err != nil {
		panic(fmt.Sprintf("error initializing app: %v", err))
	}

	client, err := app.Firestore(ctx)
	if err != nil {
		panic(fmt.Sprintf("error initializing firestore: %v", err))
	}

	FirestoreClient = client

	fmt.Println("✅ Firebase connected successfully")
}