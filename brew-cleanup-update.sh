#!/bin/bash

check_command() {
    if ! command -v "$1" &>/dev/null; then
        echo "Error: $1 command not found. Please install it first."
        exit 1
    fi
}

check_rosetta() {
    if [[ "$(uname -m)" == "i386" && "$(sysctl -n sysctl.proc_translated 2>/dev/null)" == "1" ]]; then
        echo "⚠️  You're running this script under Rosetta 2."
        echo "❌ Homebrew in /opt/homebrew (ARM64) cannot be used under Rosetta."
        echo "💡 Please run this script using native ARM64 with:"
        echo "    arch -arm64 zsh ./brew-cleanup-update.zsh"
        exit 1
    fi
}

manage_service() {
    local action=$1
    echo "\n=== Running: brew $action ==="
    if brew "$action"; then
        echo "✅ Successfully completed: brew $action."
    else
        echo "❌ Error: Failed to run brew $action."
        exit 1
    fi
}

check_command "brew"

check_rosetta

manage_service "autoremove"
manage_service "update"
manage_service "upgrade"
manage_service "cleanup"
manage_service "leaves"

echo "\n🎉 Brew cleanup and service management completed successfully."
