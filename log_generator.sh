#!/bin/bash

LOGFILE="/tmp/sample.log"
LINES=11599999  # Adjust for desired size (e.g., 1 million = ~1 GB)

echo "Generating $LINES lines to $LOGFILE (fast mode)..."
rm -f "$LOGFILE"

# Fixed log line with timestamp generated once
LOG_LINE="$(date '+%Y-%m-%d %H:%M:%S') host=fastgen level=INFO msg=\"Quick log entry aman\""

# Pipe it as repeated line to head -n
yes "$LOG_LINE" | head -n "$LINES" > "$LOGFILE"

echo "Done. Log file size:"
du -sh "$LOGFILE"
