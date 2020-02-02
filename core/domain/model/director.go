package model

import "time"

// Director Director domain model
type Director struct {
	ID int64 `json:"id"`
	Name string `json:"name"`
	Surname string `json:"surname"`
	Birth time.Time `json:"birth"`
	Image *string `json:"image"`
	Popularity int `json:"popularity"`
	Gender bool `json:"gender"`
	Nationality string `json:"nationality"`
	CreatedAt time.Time `json:"created_at"`
}

// NewDirector Create a new director instance
func NewDirector() *Director {
	return &Director{}
}