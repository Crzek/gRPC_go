package models

type Student struct {
	Id    string `json:"id"`
	Email string `json:"email"`
	Name  string `json:"name"`
	Age   int32  `json:"age"`
}
