REPORTED_IP_LIST_FILE=~/abuseipdb-reported-ip-list

APIKEY=$1
COMMENT=$2
IP=$3
CATEGORIES=$4

if ! grep -Fqx $IP $REPORTED_IP_LIST_FILE
then
	echo $IP >> $REPORTED_IP_LIST_FILE
	curl --fail 'https://api.abuseipdb.com/api/v2/report' \
		-H 'Accept: application/json' \
		-H "Key: $APIKEY" \
		--data-urlencode "comment=$COMMENT" \
		--data-urlencode "ip=$IP" \
		--data "categories=$CATEGORIES"
fi
