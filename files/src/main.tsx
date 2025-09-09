import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './tailwind.css'
// import './style.min.css'

//~ Ready to use

// import { spring } from "motion"
// import NavMenu from './components/NavMenu.tsx'
// import Tests from './components/Tests.tsx'
// import Center from './components/Center.tsx'
// import Article from './components/Article.tsx'
// import Footer from './components/Footer.tsx'

// createRoot(document.getElementById('root')!).render(
//   <>
//     <StrictMode>
//       <NavMenu />
//       <Tests />
//       <Center />
//       <Article />
//       <Footer />
//     </StrictMode>
//     <a href='/pages/animations/'>Animations</a>
//     <div className='bg-amber-200 w-fit h-fit'>Tailwind background test</div>
//     <style>
//       {`
//         * {
//           // transition: all ${spring({ keyframes: [0,1], stiffness: 300, damping: 20, mass: 10 })};
//         }
//       `}
//     </style>
//   </>
// )

//~ Comment this
createRoot(document.getElementById('root')!).render(
  <>
    <StrictMode>
      <App />
    </StrictMode>,
  </>
)

import App from './App.tsx'
import './index.css'
