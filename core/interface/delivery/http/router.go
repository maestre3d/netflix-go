package delivery

import (
	"log"
	"time"

	"github.com/go-chi/chi"
	"github.com/go-chi/chi/middleware"
	"github.com/go-chi/cors"
	"github.com/go-chi/render"
	"github.com/maestre3d/netflix-go/core/common/config"
	"github.com/maestre3d/netflix-go/core/interface/delivery/http/handler"
)

// NewRouter Create new HTTP Router
func NewRouter() *chi.Mux {
	mux := chi.NewMux()

	// Configure mux instance
	initConfiguration(mux)

	// Set routes and mount required sub-routers
	initRoutes(mux)

	log.Printf(config.ServiceStart, "HTTP Server")

	return mux
}

func initConfiguration(mux *chi.Mux) {
	// Basic CORS
	// for more ideas, see: https://developer.github.com/v3/#cross-origin-resource-sharing
	corsConfig := cors.New(cors.Options{
		// AllowedOrigins: []string{"https://foo.com"}, // Use this to allow specific origin hosts
		AllowedOrigins: []string{"*"},
		// AllowOriginFunc:  func(r *http.Request, origin string) bool { return true },
		AllowedMethods:   []string{"GET", "POST", "PUT", "DELETE", "OPTIONS"},
		AllowedHeaders:   []string{"Accept", "Authorization", "Content-Type", "X-CSRF-Token"},
		ExposedHeaders:   []string{"Link"},
		AllowCredentials: true,
		MaxAge:           300, // Maximum value not ignored by any of major browsers
	})

	mux.Use(
		corsConfig.Handler, //	Use user-defined CORS policies

		middleware.RequestID,               //	Set an ID to every request
		middleware.Logger,                  //	Log API request
		middleware.RealIP,                  //	Gets the real IP Address from request
		middleware.Recoverer,               //	Recover from panics without crashing server
		middleware.DefaultCompress,         //	Compress results, gzip assets and json
		middleware.RedirectSlashes,         //	Redirect slashes to no slash URL versions
		middleware.Timeout(60*time.Second), //	Set a timeout value on the request context (ctx)

		render.SetContentType(render.ContentTypeJSON), // Set response headers Content-Type to application/json
	)

}

func initRoutes(mux *chi.Mux) {
	mux.Route("/api/v1", func(r chi.Router) {
		r.Mount("/actor", handler.NewActorHandler().Routes())
	})
}
