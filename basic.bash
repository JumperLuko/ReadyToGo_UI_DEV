#!/bin/bash

echo ""
echo "Doing: Vite, react, Typescritp, tailwindcss, sass, GIT"
echo ""
read -p "Enter a name folder (lowercase) or just press enter: " folderName

# Apply folder name if is not set
if [ ! -n "${folderName:-}" ]; then
  folderName="ready"
fi

if [ ! -n "${scriptsPWD:-}" ]; then
  scriptsPWD=$(pwd)
fi

#~ Create template Vite = React
npm create vite@latest $folderName -- --template react-ts &&

#~ Enter folder
cd $folderName &&

#~ Install TailwindCSS
npm install tailwindcss @tailwindcss/vite &&

#~ Backup file
mv vite.config.js vite.config.js.bkp &&

#~ Copy the files
cp -r $scriptsPWD/files/* $scriptsPWD/$folderName/ &&

#~ Create css files
touch $scriptsPWD/$folderName/src/style.scss &&
touch $scriptsPWD/$folderName/src/style.min.css &&

#~ Final process
npm run build &&
git init &&
git gui
npm run dev

