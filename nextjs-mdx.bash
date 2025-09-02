#!/bin/bash

#~ Work, but still not great

# Apply folder name if is not set
# if [ ! -n "${folderName:-}" ]; then
  folderName="ready-next"
# fi

if [ ! -n "${scriptsPWD:-}" ]; then
  scriptsPWD=$(pwd)
fi

echo "Do you want to continue to install NextJS with MDX?"
echo "This is a heavy package"
echo ""
read -p "Enter to continue..."

# pnpm create next-app@latest $folderName --yes
# cd $folderName
# pnpm dev

#~ Create template
npx create-next-app@latest $folderName --yes &&

#~ Enter folder
cd $folderName &&

#~ Install the components
npm install next@latest react@latest react-dom@latest &&
npm install @next/mdx @mdx-js/loader @mdx-js/react @types/mdx &&

#~ Copy the files
cp -r $scriptsPWD/files-next/* $scriptsPWD/$folderName/ &&

echo "please OPEN http://localhost:3000/pages-test/1"

#~ Test
npm run dev