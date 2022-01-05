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
> :warning: **Start-up may take a while** Docker needs to download container image and neo4j needs to install plugins

  * verify container is ready
    * view log by clicking on the container on Docker Desktop GUI
      * wait for the last line "Started" 
      ```
Changed password for user 'neo4j'.
Fetching versions.json for Plugin 'apoc' from https://neo4j-contrib.github.io/neo4j-apoc-procedures/versions.json
Installing Plugin 'apoc' from https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/4.4.0.1/apoc-4.4.0.1-all.jar to /plugins/apoc.jar
Applying default values for plugin apoc to neo4j.conf
Fetching versions.json for Plugin 'graph-data-science' from https://s3-eu-west-1.amazonaws.com/com.neo4j.graphalgorithms.dist/graph-data-science/versions.json
Installing Plugin 'graph-data-science' from https://s3-eu-west-1.amazonaws.com/com.neo4j.graphalgorithms.dist/graph-data-science/neo4j-graph-data-science-1.8.1.jar to /plugins/graph-data-science.jar
Applying default values for plugin graph-data-science to neo4j.conf
2022-01-05 13:51:37.227+0000 INFO  Starting...
2022-01-05 13:51:37.693+0000 INFO  This instance is ServerId{683332ff} (683332ff-2345-4093-8d0f-2f68cb667042)
2022-01-05 13:51:38.733+0000 INFO  ======== Neo4j 4.4.2 ========
2022-01-05 13:51:58.117+0000 INFO  Performing postInitialization step for component 'security-users' with version 3 and status CURRENT
2022-01-05 13:51:58.118+0000 INFO  Updating the initial password in component 'security-users'
2022-01-05 13:51:59.816+0000 INFO  Called db.clearQueryCaches(): Query cache already empty.
2022-01-05 13:52:00.053+0000 INFO  Bolt enabled on 0.0.0.0:7687.
2022-01-05 13:52:00.880+0000 INFO  Remote interface available at http://localhost:7474/
2022-01-05 13:52:00.887+0000 INFO  id: C181B97243545BB769316BF55C6772AEC9BE724A306305057668F8A68E2D709A
2022-01-05 13:52:00.888+0000 INFO  name: system
2022-01-05 13:52:00.889+0000 INFO  creationDate: 2022-01-05T08:42:10.578Z
2022-01-05 13:52:00.889+0000 INFO  Started.
      ```

* Access Neo4J browser
  * [http://localhost:7474](http://localhost:7474)

* Shutdown
  * either from Docker Desktop GUI
  * or using ```docker stop testneo4j```


## Credits
* [madsonic](https://stackoverflow.com/users/270958/madsonic)
  * [Checking of Docker Desktop](https://stackoverflow.com/questions/43978837/how-to-check-if-docker-daemon-is-running/43981501)
