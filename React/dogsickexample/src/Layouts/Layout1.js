import Footer from "../components/Footer";
import Header1 from "../components/Header1";
import { Outlet } from "react-router-dom";

function Layout1(){
    return(
        <>
            <Header1/>
            <Outlet/>
            <Footer/>
        </>
    )
}

export default Layout1;