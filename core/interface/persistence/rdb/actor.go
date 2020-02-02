package rdb

import (
	"database/sql"
	"errors"
	"fmt"
	"github.com/maestre3d/netflix-go/core/domain/model"
	"log"
	"sync"
)

// ActorRepository Actor repository for rds
type ActorRepository struct {
	mux *sync.Mutex
	rdb *sql.DB
}

// NewActorRepository Create a new actor rdb store
func NewActorRepository(db *sql.DB) *ActorRepository {
	return &ActorRepository{
		mux: &sync.Mutex{},
		rdb: db,
	}
}

func (r *ActorRepository) FindAll(limit, index int64) ([]*model.Actor, error) {
	r.mux.Lock()
	defer r.mux.Unlock()

	rows, err := r.rdb.Query(fmt.Sprintf("SELECT * FROM ACTOR WHERE ID > %d ORDER BY ID ASC FETCH FIRST %d ROWS ONLY", index, limit))
	if err != nil {
		return nil, err
	}

	actors := make([]*model.Actor, 0)
	for rows.Next() {
		actor := new(model.Actor)
		err := rows.Scan(&actor.ID, &actor.Name, &actor.Surname, &actor.Birth, &actor.Image, &actor.Popularity, &actor.Gender, &actor.Nationality, &actor.CreatedAt)
		if err != nil {
			return nil, err
		}
		actors = append(actors, actor)
	}

	return actors, nil
}

func (r *ActorRepository) FindByID(id int) (*model.Actor, error) {

}
func (r *ActorRepository) FindByFullName(name, surname string) (*model.Actor, error) {

}
func (r *ActorRepository) Save(actor *model.Actor) error {
	r.mux.Lock()
	defer r.mux.Unlock()

	query := `INSERT INTO ACTOR(NAME, SURNAME, BIRTH, POPULARITY, GENDER, NATIONALITY) VALUES ($1, $2, $3, $4, $5, $6) RETURNING ID`
	id := 0

	err := r.rdb.QueryRow(query, actor.Name, actor.Surname, actor.Birth, actor.Popularity, actor.Gender, actor.Nationality).Scan(&id)
	if err != nil {
		return err
	} else if id < 1 {
		return errors.New("couldn't create actor")
	}

	log.Printf("Created actor %d", id)

	return nil
}