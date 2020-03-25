REPORTED_IP_LIST_FILE=~/abuseipdb-reported-ip-list

APIKEY=$1
IP=$2

sed -i "/^$IP\$/d" $REPORTED_IP_LIST_FILE

# TODO: Make an unban request to AbuseIPDB if it's possible
# TODO: Add script configuration to actionunban if the first TODO is applicable
