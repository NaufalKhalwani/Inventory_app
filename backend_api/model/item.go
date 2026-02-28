package model

type Item struct {
	ID    string  `json:"id,omitempty"`
	Name  string  `json:"name"`
	Price float64 `json:"price"`
}
