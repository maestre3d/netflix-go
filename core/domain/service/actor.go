package service

import (
	"errors"
	"github.com/maestre3d/netflix-go/core/domain/repository"
)

// ActorService Actor extra operations
type ActorService struct {
	actorRepo repository.ActorRepository
}

// Duplicated Verify if there's another duplicated record on persistence
func  (s *ActorService) Duplicated(name, surname string) error {
	actor, err := s.actorRepo.FindByFullName(name, surname)
	if err != nil {
		return err
	} else if actor != nil {
		return errors.New("actor already exists")
	}

	return nil
}