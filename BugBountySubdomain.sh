#!/bin/bash

# Define colors
orange='\033[0;33m'
cyan='\033[0;36m'
red='\033[1;31m' # Bold red
NC='\033[0m' # No Color

# Display custom header with Mr.Error
echo -e "${orange}
███╗   ███╗██████╗    ███████╗██████╗ ██████╗  ██████╗ ██████╗ 
████╗ ████║██╔══██╗   ██╔════╝██╔══██╗██╔══██╗██╔═══██╗██╔══██╗
██╔████╔██║██████╔╝   █████╗  ██████╔╝██████╔╝██║   ██║██████╔╝
██║╚██╔╝██║██╔══██╗   ██╔══╝  ██╔══██╗██╔══██╗██║   ██║██╔══██╗
██║ ╚═╝ ██║██║  ██║██╗███████╗██║  ██║██║  ██║╚██████╔╝██║  ██║
╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝ 
${NC}"

# Display script name with a 2-second delay
echo -e "${cyan}Bug Bounty Subdomain Takeover Script${NC}"
sleep 2

# Prompt user for target website in red color with bold font
echo -e "${red}Enter your target website:${NC}"
read target

# Display target confirmation message
echo -e "${cyan}Target confirmed!${NC}"

# Check if the target website is reachable
echo "Analyzing your target..."
sleep 4
if curl --output /dev/null --silent --head --fail "$target"; then
    echo "Website is up! Proceeding with subdomain takeover..."
else
    echo -e "${red}Error: Unable to reach the target website. Please check the URL and try again.${NC}"
    exit 1
fi
sleep 2
# Extract domain name from the target URL
domain=$(echo $target | sed -E -n 's|https?://([^/]+).*|\1|p' | sed 's/\./_/g')
if [ -z "$domain" ]; then
    domain=$(echo $target | sed 's/\./_/g')
fi

# File names with domain name
subdomains_file="${domain}_subdomains.txt"
alive_subdomains_file="${domain}_alive_subdomains.txt"
subzy_results_file="${domain}_subzy_results.txt"

# Run subfinder to find subdomains
echo "Running subfinder to find subdomains..."
./subfinder -d $target -o $subdomains_file > /dev/null

# Run httpx to check live subdomains
echo "Checking live subdomains using httpx..."
./httpx -l $subdomains_file -o $alive_subdomains_file > /dev/null

# Run subzy to find vulnerable subdomains
echo "Running subzy to find vulnerable subdomains..."
./subzy run --targets $alive_subdomains_file | tee $subzy_results_file

# Display completion message in cyan color
echo -e "${cyan}Bug bounty subdomain takeover script completed!${NC}"

# Wait for 2 seconds
sleep 2

# Display thanks message in red color
echo -e "${red}Thanks for using my script!${NC}"
