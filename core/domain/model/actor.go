package model

import "time"

// Actor Actor domain model
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

// NewActor Create a new actor
func NewActor() *Actor {
	return &Actor{}
}