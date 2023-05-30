# Simple File Cleanup Docker Image

This Docker image periodically deletes files older than a certain number of minutes in a specific directory.


## How to use

You can run the Docker container with the following command:
`docker run -e MINUTES_OLD=1440 -v /your/host/directory:/mnt/target simple_file_pruning` 

In this command:

-   `MINUTES_OLD=1440` sets the number of days old that a file must be for it to be deleted. If you don't specify this, it defaults to 1440 minutes (1 day).
-   `/your/host/directory:/mnt/target` mounts the directory from your host machine that you want to clean up into the Docker container as `/mnt/target`. Replace `/your/host/directory` with the actual directory path you want to clean up.

Please note, the Docker container needs to have sufficient permissions to delete the files in the directory you mount as `/mnt/target`. You may need to adjust the permissions on your host machine or run the Docker container as a specific user to achieve this.

## Licence
All of this is published under the CC0 1.0 Universal licence.
<http://creativecommons.org/publicdomain/zero/1.0/>


Enjoy!