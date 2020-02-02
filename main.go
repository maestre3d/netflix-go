package main

import (
	"log"
	"net/http"

	"github.com/maestre3d/netflix-go/core/common/config"
	delivery "github.com/maestre3d/netflix-go/core/interface/delivery/http"
)

func main() {
	// HTTP Server init
	mux := delivery.NewRouter()
	srv := http.Server{
		Addr:    config.HTTPServerAddress,
		Handler: mux,
	}

	err := srv.ListenAndServe()
	if err != nil {
		log.Fatalf("Error creating HTTP Server\nDetail: %v", err)
	}

}
