Goal: Make a simple Rails app that reads the included YAML file
and renders it in an HTML page in a format something like this:

---------------------------
| name: eth0              |
| ipaddr: 192.168.12.166  |
| netmask: 255.255.255.0  |
| gateway: 192.168.12.254 |
|--------------------------
| name: br0               |
| ipaddr: 192.168.12.199  |
| netmask: 255.255.255.0  |
| gateway: 192.168.12.204 |
|-------------------------|

Note: this is just ASCII art, it's fine to render with HTML or whatever,
as long as it looks roughly like the above.
