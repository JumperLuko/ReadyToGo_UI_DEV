#!/bin/bash

# Apply folder name if is not set
if [ ! -n "${folderName:-}" ]; then
  folderName="ready"
fi

if [ ! -n "${scriptsPWD:-}" ]; then
  scriptsPWD=$(pwd)
fi

echo ""
echo "Doing: Vite, react, tailwindcss, sass, GIT"
echo ""
read -p "Enter to continue..."

#~ Create template Vite = React
npm create vite@latest $folderName -- --template react &&

#~ Enter folder
cd $folderName &&

#~ Install TailwindCSS
npm install tailwindcss @tailwindcss/vite &&

#~ OLD
## Remove the last line
#sed -i '$ d' vite.config.js &&
## Customize file
#echo "  root: ''," >> vite.config.js &&
#echo "  build: {" >> vite.config.js &&
#echo "    outDir: '../dist'," >> vite.config.js &&
#echo "  }," >> vite.config.js &&
#echo "});" >> vite.config.js &&

#~ Backup file
mv vite.config.js vite.config.js.bkp &&

#> Copy the files
cp -r $scriptsPWD/files/* $scriptsPWD/$folderName/ &&

#~ Create css files
touch $scriptsPWD/$folderName/src/style.scss &&
touch $scriptsPWD/$folderName/src/style.min.css &&

npm run build &&
git init &&
git gui &
npm run dev &&


