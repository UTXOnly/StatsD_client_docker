# StatsD_client_docker

Build a sandbox test environment to test StatsD client instansiation as well as Datadog Docker agent configuration. StatsD client is submitting custom metrics via `python` or `Go` script in a container, sent to a Datadog agent docker container.

## Requirements
This script requires a `.env` file to be placed in the repository's parent directory (./). Your `.env` file should contain environmental variables needs for your docker containers, in this case your `DD_API_KEY` and `DD_AGENT_HOST`

If you don't already have a `.env` file, you can create one by running the command below in this repository's parent directory (./):

`nano .env`

You can then add the necessary environment variables as depicted below:


 `DD_API_KEY= <YOUR_API_KEY_HERE>` \
 `DD_AGENT_HOST=host.docker.internal`

To run this script, simply run the follwing script from this repository's parent directory.

`./run.sh`

The run script simply builds fresh Docker images each instance, leveraging the `docker-compose` command

Once container is running, metrics will be queryable within Datadog or any StatsD server
![Datadog Metric Query](https://user-images.githubusercontent.com/49233513/196078074-39e4ae8d-7c42-4cc9-99cf-217a0fcca508.jpg)
