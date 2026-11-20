
#!/bin/bash

set -euo pipefail

# Configuration variables
BASE_DIR="$HOME/linux-lab/automated-project"
LOG_FILE="$BASE_DIR/setup.log"

# Create base directory
mkdir -p "$BASE_DIR"

# Function to write logs
log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" \
        | tee -a "$LOG_FILE"
}

log_message "Automation started"

# List of directories
directories=("scripts" "logs" "backups" "config")

# Create directories using a loop
for dir in "${directories[@]}"; do
    if [ ! -d "$BASE_DIR/$dir" ]; then
        mkdir -p "$BASE_DIR/$dir"
        log_message "Created directory: $dir"
    else
        log_message "Directory already exists: $dir"
    fi
done

# Create sample files
for i in {1..3}; do
    touch "$BASE_DIR/scripts/file$i.sh"
    log_message "Created file$i.sh"
done

log_message "Automation completed successfully"

