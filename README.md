# About this Project
Local environment to test out neo4J
* Uses Docker container

# Getting Started
## Prerequisites
* git clone repo
* install Docker Desktop (tested on macOS)

## Installation
* None at moment

## Usage
* Start-up
  * script checks if Docker Desktop is running
    * if not start Docker Desktop first
  * runs neo4j community edition in the container
```
./run.sh
```
* Access Neo4J browser
  * [http://localhost:7474](http://localhost:7474)

* Shutdown
  * either from Docker Desktop GUI
  * or using ```docker stop testneo4j```


## Credits
* [madsonic](https://stackoverflow.com/users/270958/madsonic)
  * [Checking of Docker Desktop](https://stackoverflow.com/questions/43978837/how-to-check-if-docker-daemon-is-running/43981501)
