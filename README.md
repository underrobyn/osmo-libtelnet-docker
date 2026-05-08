# osmo-libtelnet-docker

Will build Osmocom's libtelnet for use in docker.

Source code for libtelnet: https://gitea.osmocom.org/osmocom/libtelnet

Run the container like so:
`docker compose run --rm --build -it libtelnet`


## Example:

Once inside the container:
```
root@docker-desktop:/opt# ipaccess-telnet 192.168.0.203 3210

nanoBTS (c) ip.access Ltd 2001



>help
>
CLI Categories:

CONFIG      - Configuration commands
DANGER      - Commands which can render the BTS unusable
DEV         - Development commands
DIAG        - Diagnostic commands
FTT         - Factory Test commands
DEPPRECATED - Commands that are currently valid
              but will be removed in future releases

>
```