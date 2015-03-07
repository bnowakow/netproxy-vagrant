# netproxy-vagrant

netproxy-vagrant is a Vagrant box which automatically runs docker image made by https://github.com/skorokithakis/netproxy enabling "Netflix/Hulu/Pandora/etc proxy in a box. Simply build the Docker image on a US server, set your computer's DNS IP to it, and enjoy your favorite US-only sites". At current stage it's ready to run on Amazon AWS out-of-the-box

# Motivation

http://bnowakowski.pl/proof-of-concept-for-making-your-own-netflix-and-hulu-dns-proxy-outside-us/

# Running

After clone you need to (setup AWS and then):
```
./init_chef_cookbooks.sh
./set_aws_variables.sh
```
Then just set public ip of AWS machine as your primary DNS and you're ready to go with Netflix/Hulu/Pandora/etc outside US.
