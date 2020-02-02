package persistence

import (
	"database/sql"

	// PSQL Driver
	_ "github.com/lib/pq"
)

// ConnectDBPool Connect to main database pool
func ConnectDBPool(connectionString string) (*sql.DB, error) {
	db, err := sql.Open("postgres", connectionString)
	if err != nil {
		return nil, err
	}

	if err := db.Ping(); err != nil {
		return nil, err
	}

	return db, nil
}
