# StatsD_client_docker

Build as a sandbox test environment to test StatsD client instansiation as well as Datadog Docker agent configuration.

##Requirements

This script requires a `.env` file to be placed in the repositorie's parent directory (./). Your `.env` file should contain environmental variables needs for your docker containers, in this case your `DD_API_KEY` and `DD_AGENT_HOST`

If you don't already have a `.env` file, you can create one by running the command below in this repositorie's parent directory (./):

`touch .env`

You can then add the necessary environment variables as depicted below:


` DD_API_KEY=
  DD_AGENT_HOST=host.docker.internal`

To run this script, simply enter the below command in your terminal and press enter.

`./run.sh`

The run script simply builds fresh Docker images each instance, leveraging the `docker-compose` command
