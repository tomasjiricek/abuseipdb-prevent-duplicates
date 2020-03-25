# Installation & Usage

- Download the file abuseipdb-fail2ban-report.sh
- Allow execution on the file if not done already (chmod +x abuseipdb-fail2ban-report.sh)
- Modify path to the IP list file if necessary (inside the file abuseipdb-fail2ban-report.sh)
- Modify your config for AbuseIPDB (`/etc/fail2ban/action.d/abuseipdb.conf`) with following:

```
# Modify 1st line of the following code and don't touch the second line.

actionban = /path/to/abuseipdb-fail2ban-report.sh \
    "<abuseipdb_apikey>" "<matches>" "<ip>" "<abuseipdb_category>"
```
