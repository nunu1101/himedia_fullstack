import { useState,useEffect } from "react";


function Menu(){

    const [menuList, setMenuList] = useState([]);

    // useEffect(
    //     () => {
    //         setMenuList(getMenuList());
    //         console.log(getMenuList());
    //         console.table(getMenuList());
    //     },
    //     []
    // );

    return(
        <>
        <h1>판매 메뉴 목록</h1>
        <div>
            {/* { menuList.map(menu => <MenuItem menu={menu}/>)} */}
        </div>
        </>
    );
}

export default Menu;