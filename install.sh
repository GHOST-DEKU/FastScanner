#!/bin/bash

# FastScanner Installer for Linux/macOS

LIB_DIR="$HOME/JavaLibs"
INSTALL_DIR="$LIB_DIR/FastScanner"

echo -e "\033[0;36mInstalling FastScanner...\033[0m"

# 1. Create Directory
mkdir -p "$INSTALL_DIR"
echo -e "\033[0;32mCreated directory: $INSTALL_DIR\033[0m"

# 2. Copy Files
cp ./FastScanner/FastScanner.java "$INSTALL_DIR/"
echo -e "\033[0;32mCopied source files.\033[0m"

# 3. Compile
echo -e "\033[0;36mCompiling...\033[0m"
if javac "$INSTALL_DIR/FastScanner.java"; then
    echo -e "\033[0;32mCompilation successful.\033[0m"
else
    echo -e "\033[0;31mCompilation failed. Ensure 'javac' is installed.\033[0m"
    exit 1
fi

# 4. Update CLASSPATH
SHELL_CONFIG=""
if [ -f "$HOME/.zshrc" ]; then
    SHELL_CONFIG="$HOME/.zshrc"
elif [ -f "$HOME/.bashrc" ]; then
    SHELL_CONFIG="$HOME/.bashrc"
    
# If neither exists, perform a rudimentary check for bash_profile or profile
elif [ -f "$HOME/.bash_profile" ]; then
    SHELL_CONFIG="$HOME/.bash_profile"
elif [ -f "$HOME/.profile" ]; then
    SHELL_CONFIG="$HOME/.profile"
fi


if [ -n "$SHELL_CONFIG" ]; then
    if grep -q "export CLASSPATH=.*$LIB_DIR" "$SHELL_CONFIG"; then
        echo -e "\033[0;33mCLASSPATH already configured in $SHELL_CONFIG\033[0m"
    else
        echo "" >> "$SHELL_CONFIG"
        echo "# JavaLibs CLASSPATH" >> "$SHELL_CONFIG"
        echo "export CLASSPATH=\".:$LIB_DIR:\$CLASSPATH\"" >> "$SHELL_CONFIG"
        echo -e "\033[0;32mAdded CLASSPATH to $SHELL_CONFIG\033[0m"
        echo -e "\033[0;33mRun 'source $SHELL_CONFIG' to apply changes immediately.\033[0m"
    fi
else
    echo -e "\033[0;31mCould not detect shell configuration file (.bashrc/.zshrc). Please add this manually:\033[0m"
    echo "export CLASSPATH=\".:$LIB_DIR:\$CLASSPATH\""
fi

echo -e "\n\033[0;36mInstallation Complete!\033[0m"
