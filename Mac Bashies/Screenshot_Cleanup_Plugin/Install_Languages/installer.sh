#!/bin/bash

# Install Homebrew (if not already installed)
install_homebrew() {
    if ! command -v brew &> /dev/null; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Homebrew is already installed."
    fi
}

# Install Go
install_go() {
    echo "Installing Go..."
    # Download the Go installer
    curl -O https://golang.org/dl/go1.17.7.darwin-amd64.pkg
    # Install Go
    sudo installer -pkg go1.17.7.darwin-amd64.pkg -target /
    # Clean up
    rm go1.17.7.darwin-amd64.pkg
    echo "Go installed successfully!"
}

# Install Haskell and Stack
install_haskell() {
    echo "Installing Haskell and Stack..."
    # Install GHC (Haskell compiler)
    brew install ghc
    # Install Stack (Haskell build tool)
    curl -sSL https://get.haskellstack.org/ | sh
    echo "Haskell and Stack installed successfully!"
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
}

# Install Python
install_python() {
    echo "Installing Python..."
    brew install python
    echo "Python installed successfully!"
}

# Main function
main() {
    install_homebrew
    install_go
    install_haskell
    install_python
}

main
