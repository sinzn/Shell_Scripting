#!/bin/bash

# Ensure the script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root (use sudo)"
    exit 1
fi

# Function to create a single user
create_user() {
    read -p "Enter username: " username
    read -s -p "Enter password: " password
    echo
    useradd -m "$username" -s /bin/bash
    echo "$username:$password" | chpasswd
    echo "User $username created successfully!"
}

# Function to delete a user
delete_user() {
    read -p "Enter username to delete: " username
    userdel -r "$username"
    echo "User $username deleted successfully!"
}

# Function to reset a user's password
reset_password() {
    read -p "Enter username: " username
    read -s -p "Enter new password: " password
    echo
    echo "$username:$password" | chpasswd
    echo "Password for $username reset successfully!"
}

# Function to bulk create users from a CSV file
bulk_create_users() {
    read -p "Enter path to CSV file (format: username,password): " csv_file
    if [[ ! -f "$csv_file" ]]; then
        echo "File not found: $csv_file"
        exit 1
    fi
    while IFS=',' read -r username password; do
        useradd -m "$username" -s /bin/bash
        echo "$username:$password" | chpasswd
        echo "User $username created."
    done < "$csv_file"
    echo "Bulk user creation complete!"
}

# Function to generate user activity report
generate_user_report() {
    report_file="user_activity_report_$(date +%F).txt"
    echo "User Activity Report - $(date)" > "$report_file"
    echo "---------------------------------" >> "$report_file"
    awk -F: '{ print $1, $3, $6 }' /etc/passwd >> "$report_file"
    echo "Report saved to $report_file"
}

# Main menu
while true; do
    echo
    echo "User Management Script"
    echo "-----------------------"
    echo "1. Create a new user"
    echo "2. Delete a user"
    echo "3. Reset a user's password"
    echo "4. Bulk create users from CSV"
    echo "5. Generate user activity report"
    echo "6. Exit"
    echo
    read -p "Choose an option (1-6): " choice

    case "$choice" in
        1)
            create_user
            ;;
        2)
            delete_user
            ;;
        3)
            reset_password
            ;;
        4)
            bulk_create_users
            ;;
        5)
            generate_user_report
            ;;
        6)
            echo "Exiting. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
