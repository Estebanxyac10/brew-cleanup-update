# Brew Cleanup & Update

A simple script to automate the essential Homebrew tasks on macOS. Keep your packages updated, clean, and organized with a single command.

![License: MIT](https://img.shields.io/badge/License-MIT-green)

---

## Features

- **Update Homebrew** and all installed packages.
- **Upgrade** outdated versions of installed packages.
- **Clean up** unnecessary files to free up disk space.
- **Display a summary** of actions taken.

## Requirements

- macOS with [Homebrew](https://brew.sh/) installed.
- Basic knowledge of using the terminal.

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/Estebanxyac10/brew-cleanup-update.git
   ```

2. **Navigate to the directory:**

   ```bash
   cd brew-cleanup-update
   ```

3. **Make the script executable:**

   ```bash
   chmod +x brew-cleanup-update.sh
   ```

## Usage

Run the script directly from your terminal:

```bash
./brew-cleanup-update.sh
```

The script will perform the following actions automatically:

- Update Homebrew.
- Upgrade all installed packages.
- Remove outdated versions of packages.
- Clean up unnecessary files.
- Display a summary of the actions taken.

> **Note for Apple Silicon (M1/M2/M3) Users:** \> If you are using Rosetta 2, please run the script using the following command:
>
> ```bash
> arch -arm64 zsh ./brew-cleanup-update.sh
> ```

## License

This project is licensed under the MIT License. See the [LICENSE](https://opensource.org/license/mit) file for details.

## Author

Created by Estebanxyac10.
