# Bugbounty-Subdomain-Takeover-Script-

![Mr.Error Bug Bounty Script](script_banner.png)

## Overview

The Bug Bounty Subdomain Takeover Script is a powerful Bash tool meticulously crafted by Mr.Error to enhance the efficiency of bug bounty hunters in identifying subdomain takeover vulnerabilities. This script seamlessly integrates popular tools such as Subfinder, httpx, and Subzy to automate the entire subdomain reconnaissance and vulnerability assessment process.

## Features

Here are interesting features of the Bug Bounty Subdomain Takeover Script:

1. **Automated Workflow:**
   - The script orchestrates a seamless workflow, automating subdomain enumeration, live subdomain checking, and vulnerability assessment, saving valuable time for bug bounty hunters.

2. **Dynamic Output File Naming:*"
   - The script intelligently creates output files dynamically using the name of the target website. This ensures that every time you run the script on a new website, the resulting subdomains file, live subdomains file, and Subzy results file are uniquely named based on the target site. This feature facilitates easy identification and organization of results, allowing for efficient management when working with multiple targets.

3. **Automatic File Creation:**
   - The script intelligently generates necessary TXT files to store subdomains and results, eliminating manual file creation and streamlining the data storage process.

4. **Tool Chaining:**
   - Implements tool chaining to automatically pass output files from one tool to the next, creating a continuous and efficient subdomain takeover workflow.

5. **User-Friendly Prompt:**
   - Guides users through the process with a user-friendly prompt, making it accessible even for individuals with limited experience in bug bounty hunting.

6. **Informative Outputs:**
   - Provides structured and informative outputs, including dedicated files for subdomains, live subdomains, and Subzy results, enhancing clarity and organization.

7. **Dynamic Subdomain File Naming:**
   - Dynamically generates file names based on the domain name, ensuring clarity and preventing potential naming conflicts when working with multiple targets.

8. **Dependency Integration:**
   - Utilizes popular and reliable tools such as Subfinder, httpx, and Subzy, ensuring the script leverages well-established solutions for efficient subdomain reconnaissance.

9. **Flexible Customization:**
   - Encourages users to customize the script according to their needs, allowing for the addition of new features, modification of existing functionalities, and fostering community contributions.

These features collectively contribute to making the Bug Bounty Subdomain Takeover Script a versatile, user-friendly, and professional tool for bug bounty hunters.

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

**Subfinder:**

(https://github.com/projectdiscovery/subfinder)

**httpx:**

(https://github.com/projectdiscovery/httpx)

**Subzy:**

(https://github.com/PentestPad/subzy)

**Customization:**
Feel free to customize the script to suit your needs, add new features, or modify existing functionalities. Contributions are welcome.

**License:**
This project is licensed under the MIT License.

**Author:**
Mr.Error

