#!/bin/bash

# geofail
# Geolocate fail2ban's banned IPs.
# Depends on fail2ban and geoip-bin packages, as well as GeoLiteCity DB from:
# http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz

fail2ban=( $(awk '/Ban/ {print $NF}' /var/log/fail2ban.log | uniq) )

# Iterate through array of banned IPs and geolocate each one.
for ip in ${fail2ban[@]}; do
        geoiplookup=$(geoiplookup -f /usr/share/GeoIP/GeoLiteCity.dat $ip | sed 's/.*: //g')
        echo -e $ip'\t'$geoiplookup
done
