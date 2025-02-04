<?php
    function create_header(){
        //credenziali
        $servername="localhost";
        $username="root";
        $password="port";
        $dbname="portfolio";
        $connection=new mysqli($servername,$username,$password,$dbname);
        if($connection->connect_error){die("conessione fallita". $connection->connect_error);}   
        //dati header
        $header_query="SELECT * FROM header_config LIMIT 1";
        $header_query_res=$connection->query($header_query);
        $header_query=$header_query_res->fetch_assoc();
        //dati navbar
        $navbar="SELECT href,content FROM navbar_links ORDER BY position ASC";
        $navbar_res=$connection->query($navbar);
        //dati button
        $button="SELECT button_text, class, action FROM buttons LIMIT 1";
        $button_res=$connection->query($button);
        $button=$button_res->fetch_assoc();
        $header='<header class="'.htmlspecialchars($header_query['header_class']).'">';
        $header.='<a href="'.htmlspecialchars($header_query['logo_href']).'" class="logo">'
            .htmlspecialchars($header_query['logo_text']).' '
            .'<span>'.htmlspecialchars($header_query['highlighted_text']).'</span></a>';
        $header.='<i class="'.htmlspecialchars($header_query['menu_icon_class']).'" id="'
            .htmlspecialchars($header_query['menu_icon_id']).'"></i>';
        $header.='<nav class="navbar">';
        if($navbar_res->num_rows>0){
            while($link=$navbar_res->fetch_assoc()){
                $header.='<a href="'.htmlspecialchars($link['href']).'">'
                    .htmlspecialchars($link['content']).'</a>';
            }
        }
        $header.='</nav>';
        if($button){
            $header.='<button class="'.htmlspecialchars($button['class']).'">'
                .htmlspecialchars($button['button_text']).'</button>';
        }
        $header.='</header>';
        $connection->close();
        return $header;
    }
?>