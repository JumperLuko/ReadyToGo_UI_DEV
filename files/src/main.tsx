import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './tailwind.css'
// import './style.min.css'

//~ Ready to use

// import NavMenu from './components/NavMenu.jsx'
// import Tests from './components/Tests.jsx'
// import Center from './components/Center.jsx'
// import Article from './components/Article.jsx'
// import Footer from './components/Footer.jsx'

// createRoot(document.getElementById('root')!).render(
//   <StrictMode>
//     <NavMenu />
//     <Tests />
//     <Center />
//     <Article />
//     <Footer />
//   </StrictMode>,
// )

//~ Comment this
createRoot(document.getElementById('root')).render(
  <>
    <StrictMode>
      <App />
    </StrictMode>,
  </>
)

import App from './App.jsx'
import './index.css'
