# Simple File Cleanup Docker Image

This repository contains a Dockerfile and script for an Alpine Linux-based Docker image that periodically deletes files older than a certain number of days in a specific directory.


## How to use

You can run the Docker container with the following command:
`docker run -e DAYS_OLD=2 -v /your/host/directory:/mnt/target your-image-name` 

In this command:

-   `DAYS_OLD=2` sets the number of days old that a file must be for it to be deleted. If you don't specify this, it defaults to 1 day.
-   `/your/host/directory:/mnt/target` mounts the directory from your host machine that you want to clean up into the Docker container as `/mnt/target`. Replace `/your/host/directory` with the actual directory path you want to clean up.

Please note, the Docker container needs to have sufficient permissions to delete the files in the directory you mount as `/mnt/target`. You may need to adjust the permissions on your host machine or run the Docker container as a specific user to achieve this.

## Licence
All of this is published under the CC0 1.0 Universal licence.
<http://creativecommons.org/publicdomain/zero/1.0/>


Enjoy!