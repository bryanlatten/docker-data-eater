# docker-data-eater

TEST

## DO NOT USE IN PRODUCTION

Use to endlessly thrash a machine by consuming disk space.

### Usage
- Use environment variables to modify behavior
- Inputs are to `dd` binary, see [man page](https://linux.die.net/man/1/dd) for further explanations

Variable | Default | Description
--- | --- | ---
BLOCKS | 1000000 | copies BLOCKS inputs (maps to `dd` count variable)
BYTES | 128M | write BYTES bytes at a time
WAIT_TIME | 1 | seconds between writes

### Running

1. Clone repo, `cd docker-data-eater`
1. Build the container `docker build -t eater .`
1. Run container `docker run --rm eater`
