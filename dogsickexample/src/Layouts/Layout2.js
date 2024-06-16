import Footer from "../components/Footer";
import Header2 from "../components/Header2";
import { Outlet } from "react-router-dom";

function Layout2(){
    return(
        <>
            <Header2/>
            <Outlet />
            <Footer />
        </>
    )
}

export default Layout2;