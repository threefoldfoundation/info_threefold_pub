## Redis

For now, Redis is an external dependency of the protocol used to communicate with nodes on the Grid.

### Install

#### Linux
If you don't find Redis in your distro's package manager, check the [Redis downloads](https://redis.io/download) page for source code and installation instructions.

#### MacOS
Homebrew can be used to install Redis, as follows:

```
brew update
brew install redis
```

Alternatively, it can be built from source, using the same download page linked for Linux above.

### Run
Launch the Redis server with:

```
redis-server
```
