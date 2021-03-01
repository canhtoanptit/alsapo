package main

import (
	_ "github.com/canhtoanptit/alsapo/alsapo_server/db"
	"github.com/canhtoanptit/alsapo/alsapo_server/router"
	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	router.InitRouter(r)
	r.Run() // listen and serve on 0.0.0.0:8080
}