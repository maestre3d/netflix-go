package handler

import (
	"net/http"

	"github.com/go-chi/chi"
	"github.com/go-chi/render"
	"github.com/maestre3d/netflix-go/core/common/util"
)

// ActorHandler User http handler
type ActorHandler struct {
}

// NewActorHandler Get a new user handler instance
func NewActorHandler() *ActorHandler {
	return &ActorHandler{}
}

// Routes Export routes
func (u *ActorHandler) Routes() http.Handler {
	router := chi.NewRouter()
	router.Route("/", func(r chi.Router) {
		r.Get("/", u.getAll)
	})

	return router
}

func (u *ActorHandler) getAll(w http.ResponseWriter, r *http.Request) {
	render.Status(r, http.StatusNotFound)
	render.JSON(w, r, &util.ResponseModel{Message: "Hello from Actor!"})
	return
}
