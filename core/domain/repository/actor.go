package repository

import "github.com/maestre3d/netflix-go/core/domain/model"

// ActorRepository Actor aggregate actions
type ActorRepository interface {
	FindAll(limit, index int64) ([]*model.Actor, error)
	FindByID(id int) (*model.Actor, error)
	FindByFullName(name, surname string) (*model.Actor, error)
	Save(actor *model.Actor) error
}
