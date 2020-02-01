package main

import (
	"net/http"

	"github.com/maestre3d/netflix-go/core/config"
	delivery "github.com/maestre3d/netflix-go/delivery/http"
)

func main() {
	// HTTP Server init
	mux := delivery.NewRouter()
	srv := http.Server{
		Addr:    config.HTTPServerAddress,
		Handler: mux,
	}

	srv.ListenAndServe()

}
