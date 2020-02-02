package usecase

import (
	"github.com/maestre3d/netflix-go/core/domain/model"
	"github.com/maestre3d/netflix-go/core/domain/repository"
	"github.com/maestre3d/netflix-go/core/domain/service"
	"strconv"
	"strings"
	"time"
)

// ActorUseCase Actor business boundaries actions
type ActorUseCase interface {
	ListActor(limit, index int64) ([]*model.Actor, error)
	RegisterActor(name, surname, birth, popularity, gender, nationality string) error
}

type actorUseCase struct {
	actorRepo repository.ActorRepository
	actorService *service.ActorService
}

// NewActorUseCase Create a new actor use case
func NewActorUseCae(repo repository.ActorRepository, service *service.ActorService) *actorUseCase {
	return &actorUseCase{
		actorRepo:repo,
		actorService:service,
	}
}

// ListActor List all actors by limit and page
func (a *actorUseCase) ListActor(limit, index int64) ([]*Actor, error) {
	actors, err := a.actorRepo.FindAll(limit, index)
	if err != nil {
		return nil, err
	}

	return toActor(actors), nil
}

// RegisterActor Save a new actor
func (a *actorUseCase) RegisterActor(name, surname, birth, popularity, gender, nationality string) error {
	err := a.actorService.Duplicated(name, surname)
	if err != nil {
		return err
	}

	actor := model.NewActor()
	actor.Name = name
	actor.Surname = surname
	actor.Birth, err = time.Parse("01/06/2006", birth)
	actor.Gender, err = strconv.ParseBool(gender)
	actor.Nationality = strings.ToUpper(nationality)
	actor.Popularity, err = strconv.Atoi(popularity)
	actor.CreatedAt = time.Now()
	if err != nil {
		return err
	}


	if err := a.actorRepo.Save(actor); err != nil {
		return err
	}

	return nil
}

// Actor Actor DAO
type Actor struct {
	ID      int64  `json:"id"`
	Name    string `json:"name"`
	Surname string `json:"surname"`
	Birth   time.Time `json:"birth"`
	Image	*string `json:"image"`
	Popularity int	`json:"popularity"`
	Gender bool `json:"gender"`
	Nationality string `json:"nationality"`
	CreatedAt	time.Time `json:"created_at"`
}

// Map Domain Model -> DAO
func toActor(actors []*model.Actor) []*Actor {
	res := make([]*Actor, len(actors))
	for i, actor := range actors {
		res[i] = &Actor{
			ID:          actor.ID,
			Name:        actor.Name,
			Surname:     actor.Surname,
			Birth:       actor.Birth,
			Image:       actor.Image,
			Popularity:  actor.Popularity,
			Gender:      actor.Gender,
			Nationality: actor.Nationality,
			CreatedAt:   actor.CreatedAt,
		}
	}
	return res
}