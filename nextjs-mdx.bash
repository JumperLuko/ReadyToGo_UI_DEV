#!/bin/bash

echo "Do you want to continue to install NextJS with MDX?"
echo "This is a heavy package"
echo ""
read -p "Enter to continue..."
#~ Go heavy, but SSG (static site generation) with MDX
npm install next@latest react@latest react-dom@latest &&
