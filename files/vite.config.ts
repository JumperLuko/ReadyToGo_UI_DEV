import { resolve } from 'path'
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react(),tailwindcss(),],
  root: '',
  build: {
    outDir: './dist',
    rollupOptions: {
      input: {
        main: resolve(__dirname, 'index.html'),
        animations: resolve(__dirname, 'pages/animations/index.html'),
        // about: resolve(__dirname, 'pages/about/index.html'),
      },
    },
  },
});
