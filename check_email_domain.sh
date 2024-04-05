#!/bin/bash

# Define the expected domain
domain="nirphalabhijeet72@gmail.com"

# Get the configured email from git
email="$(git config user.email)"

# Check if the email matches the domain
if [[ "$email" == "$domain" ]]; then
    echo "You are using the email $email as per configuration. Proceeding to commit."
    exit 0
else
    echo "Error: Configured email ($email) does not match the expected domain ($domain)."
    echo "Please configure your email to $domain and try again."
    exit 1
fi
