# Bugbounty-Subdomain-Takeover-Script-

![Mr.Error Bug Bounty Script](script_banner.png)

## Overview

The Bug Bounty Subdomain Takeover Script is a powerful Bash tool meticulously crafted by Mr.Error to enhance the efficiency of bug bounty hunters in identifying subdomain takeover vulnerabilities. This script seamlessly integrates popular tools such as Subfinder, httpx, and Subzy to automate the entire subdomain reconnaissance and vulnerability assessment process.

## Features

- **Automated Workflow:** Streamlines subdomain enumeration, live subdomain checking, and vulnerability assessment.
- **Automatic File Creation:** Generates essential TXT files to store subdomains and results.
- **Tool Chaining:** Automatically passes output files from one tool to the next for a seamless workflow.
- **Informative Outputs:** Clearly structured outputs, including subdomains file, live subdomains file, and Subzy results file.
- **User Prompt:** Guides users through the process with a user-friendly prompt for the target website.

## Usage

1. **Clone the Repository:**

git clone https://github.com/Mr-Error313/Bugbounty-Subdomain-Takeover-Script-.git

2. **Go to Directory:**
 
cd bug-bounty-subdomain-takeover-script

3. **Make the script executable:**

chmod +x bug_bounty_script.sh

4. **Run the script:**

./bug_bounty_script.sh

## Output Files

**Subdomains File:**
domain_subdomains.txt

**Live Subdomains File:** 
domain_alive_subdomains.txt

**Subzy Results File:** 
domain_subzy_results.txt

## Requirements

These three tools must be need to run these Bugbounty Subdomain Takeover Script without these Bugbounty Subdomain Takeover Script can't be run:

Subfinder
Download (github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest)

httpx
Download (github.com/projectdiscovery/httpx/cmd/httpx@latest)

Subzy
Download (github.com/LukaSikic/subzy@latest)

