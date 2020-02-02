package service

import (
	"errors"
	"github.com/maestre3d/netflix-go/core/domain/repository"
)

// DirectorService Director extra operations
type DirectorService struct {
	directorRepo repository.DirectorRepository
}

// Duplicated Verify if there's another duplicated record on persistence
func (s *DirectorService) Duplicated(name, surname string) error {
	director, err := s.directorRepo.FindByFullName(name, surname)
	if err != nil {
		return err
	} else if director != nil {
		return errors.New("director already exists")
	}

	return nil
}
