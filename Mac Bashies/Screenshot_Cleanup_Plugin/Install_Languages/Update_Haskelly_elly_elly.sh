#!/bin/bash

# Update Haskell-related tools
echo "Updating Haskell-related tools..."

# Update GHC
echo "Updating GHC..."
ghcup upgrade

# Update GHCi
echo "Updating GHCi..."
ghcup install-ghc

# Update Stack
echo "Updating Stack..."
stack upgrade

# Update Cabal
echo "Updating Cabal..."
cabal update
cabal install cabal-install --upgrade-dependencies

echo "Haskell-related tools updated successfully!"
