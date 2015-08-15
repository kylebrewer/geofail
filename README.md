# geofail
A quick shell script to geolocate fail2ban's banned IPs.
Depends on the fail2ban and geoip-bin packages, as well as MaxMind's GeoLiteCity database.

The GeoLiteCity database can be retrieved at the following URL:
http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz

Uncompress the database, and place it in /usr/share/GeoIP.
