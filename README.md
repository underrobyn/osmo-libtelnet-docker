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

## Cannot access nanoBTS

Ensure that cli is enabled.

```
root@nuc-i5a:/home/user# ipaccess-config -qG 192.168.0.203
<0007> ipaccess-config-e1-driver.c:403 E1TS(0:1) enabling ipaccess BTS mode, OML connecting to 192.168.0.203:3006
inp_sig_cb(): Input signal 'LINE-INIT' received
getting Attributes (3): 88 91 86
<0004> abis_nm.c:663 OC=BASEBAND-TRANSCEIVER(04) INST=(00,00,ff): Get Attributes Response: Primary OML IP is 192.168.0.121:0
<0004> abis_nm.c:669 OC=BASEBAND-TRANSCEIVER(04) INST=(00,00,ff): Get Attributes Response: Unit ID is 1/0/0
Received SIGNAL S_NM_GET_ATTR_REP
{
    "primary_oml_ip": "192.168.0.121",
    "primary_oml_port": "0",
    "unit_id": "1/0/0",
    "nv_flags": {
        "static-ip": "no",
        "static-gw": "no",
        "no-dhcp-vsi": "no",
        "dhcp-enabled": "yes",
        "led-enabled": "yes",
        "secondary-oml-enabled": "yes",
        "diag-enabled": "yes",
        "cli-enabled": "yes",
        "http-enabled": "yes",
        "post-enabled": "yes",
        "snmp-enabled": "yes"
    }
}
```