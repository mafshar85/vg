#!/usr/bin/env bash

set -o pipefail -o nounset -o xtrace -o errexit

DNS_IPS=("178.22.122.100" "185.51.200.2")

# Set Shekan DNS IPS
#DNS_IPS=("178.22.122.100" "185.51.200.2")
shekan () { 
sudo rm /etc/resolv.conf 
for dns_ip in "${DNS_IPS[@]}"; do 
echo "nameserver $dns_ip" | sudo tee -a /etc/resolv.conf 
done 
}
shekan
