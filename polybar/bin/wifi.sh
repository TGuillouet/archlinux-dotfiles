#!/bin/bash

full_connectivity=""
limited_connectivity=""
none_connectivity=""
unknown_connectivity=""

connected_networks=$(nmcli d | grep " connected " | head -1)
connectivity=$(nmcli -f connectivity -m multiline g)
connected=($(echo $connected_networks | tr " " "\n"))

network_icon=""
if [[ $connectivity == *"full"* ]]; then
	network_icon=${full_connectivity}
fi
if [[ $connectivity == *"limited"* ]]; then
	network_icon=${limited_connectivity}
fi
if [[ $connectivity == *"none"* ]]; then
	network_icon=${none_connectivity}
fi
if [[ $connectivity == *"unknown"* ]]; then
	network_icon=${unknown_connectivity}
fi

net_label="No network"
if [[ ${connected[3]} != "" ]]; then
	net_label=${connected[3]}
fi

echo ${network_icon} ${net_label}
