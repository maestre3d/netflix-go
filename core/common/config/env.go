package config

import (
	"log"
	"os"

	"github.com/joho/godotenv"
)

var (
	// MainDatabase Main database connection
	MainDatabase string
)

// StartEnvironment Start a new environment, using dot env file
func StartEnvironment() {
	err := godotenv.Load()
	if err != nil {
		log.Fatalf("Error starting environment\nDetailed error: %v", err)
	}

	MainDatabase = os.Getenv("MAIN_DB")
}
