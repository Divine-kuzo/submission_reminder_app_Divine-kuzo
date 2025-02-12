#!/bin/bash

# Ask for the user's name
echo -n "Enter your name: "
read userName

# Create the main directory
main_dir="submission_reminder_${userName}"
mkdir -p "$main_dir"

# Create subdirectories
mkdir -p "$main_dir/config"
mkdir -p "$main_dir/scripts"
mkdir -p "$main_dir/data"
mkdir -p "$main_dir/logs"

# Create necessary files
touch "$main_dir/config/config.env"
touch "$main_dir/scripts/reminder.sh"
touch "$main_dir/scripts/functions.sh"
touch "$main_dir/scripts/startup.sh"
touch "$main_dir/data/submissions.txt"

# Populate the files with initial content
echo "# Configuration File" > "$main_dir/config/config.env"
echo "# Reminder script placeholder" > "$main_dir/scripts/reminder.sh"
echo "# Functions script placeholder" > "$main_dir/scripts/functions.sh"

echo "# Sample Submissions Data" > "$main_dir/data/submissions.txt"
echo "John Doe, Assignment 1, Due: 2025-02-20, Status: Pending" >> "$main_dir/data/submissions.txt"
echo "Jane Smith, Assignment 2, Due: 2025-02-22, Status: Submitted" >> "$main_dir/data/submissions.txt"

# Make scripts executable
chmod +x "$main_dir/scripts/reminder.sh"
chmod +x "$main_dir/scripts/functions.sh"
chmod +x "$main_dir/scripts/startup.sh"

# Success message
echo "Environment setup completed in $main_dir"
