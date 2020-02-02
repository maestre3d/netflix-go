package repository

import "github.com/maestre3d/netflix-go/core/domain/model"

// DirectorRepository Director aggregate actions
type DirectorRepository interface {
	FindAll(limit, page int) ([]*model.Director, error)
	FindByID(id int) (*model.Director, error)
	FindByFullName(name, surname string) (*model.Director, error)
	Save(director *model.Director) error
}
