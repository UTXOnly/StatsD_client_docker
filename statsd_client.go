package main

import (
	"log"
	"time"

	"github.com/DataDog/datadog-go/v5/statsd"
)

func main() {
	statsd, err := statsd.New("127.0.0.1:8125")
	if err != nil {
		log.Fatal(err)
	}
	for {

		statsd.Count("jobs.enqueue", 1, []string{"environment:dev"}, 1)
		time.Sleep(10 * time.Second)
	}
}
