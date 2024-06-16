import Layout1 from "./Layouts/Layout1.js"
import Layout2 from "./Layouts/Layout2.js";
import Company from "./pages/Company.js";
import Main from "./pages/Main";
import {BrowserRouter, Routes, Route} from 'react-router-dom';

function App() {
  return (
    <>
      <BrowserRouter>
        <Routes>

          {/* 로그인 O */}
          <Route path="/" element={<Layout1/>}>
            <Route index element={<Main/>}/>
            <Route path="/company" element={<Company/>} />
          </Route>

          {/* 로그인 X */}
          <Route path="/" element={<Layout2/>}>
            <Route index element={<Main/>}/>
            <Route path="/company" element={<Company/>} />
          </Route>
        </Routes>
      </BrowserRouter>
    </>
  );
}

export default App;
