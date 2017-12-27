# Commands to run after compilation

# Step#1: Enables nginx to be accessible at a standard location on ubuntu
ln -s /etc/nginx/sbin/nginx /usr/sbin/nginx

# Step#2: Create nginx vhosts site config directories
mkdir /etc/nginx/conf/sites-available
mkdir /etc/nginx/conf/sites-enabled

# Step#3: Copy the naxsi rules from the naxsi source code to nginx conf directory
cp /usr/src/naxsi-master/naxsi_config/naxsi_core.rules /etc/nginx/conf/

# Step#4: Create a naxsi whitelist directory
mkdir /etc/nginx/conf/naxsi-whitelist/

# Step#5: Create whitelist.conf file that shall be used for whitelisting false-positives 
touch /etc/nginx/conf/whitelist.conf
