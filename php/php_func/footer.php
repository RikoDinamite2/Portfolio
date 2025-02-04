<?php 
function create_footer(){
    $servername="localhost";
    $username="root";
    $password="port";
    $dbname="portfolio";
    $connection=new mysqli($servername,$username,$password,$dbname);
    if($connection->connect_error){die("conessione fallita". $connection->connect_error);}  
    //classi footer
    $footer="SELECT * FROM footer";
    $footer_res= $connection->query($footer);
    $footer=$footer_res->fetch_assoc();
    //dati icons
    $icons="SELECT href_icon,class_icon FROM icons";
    $icons_res= $connection->query($icons);
    //dati section per la lista
    $lista="SELECT href,content FROM navbar_links";
    $lista_res= $connection->query($lista);
    $html='<footer class="'.htmlspecialchars($footer['class_footer']).'">';
    $html.='<div class="'.htmlspecialchars($footer['class_icons']).'">';
    if($icons_res->num_rows>0){
        while($row=$icons_res->fetch_assoc()){
            $html.='<a href="'.htmlspecialchars($row['href_icon']).'" target="_blank">';
            $html.= '<i class="'.htmlspecialchars($row['class_icon']).'"></i>';
            $html.= '</a>';
        }
    }
    $html.='</div>';
    $html.='<ul class="'.htmlspecialchars($footer['class_list']).'">';
    if($lista_res->num_rows>0){
        while($row=$lista_res->fetch_assoc()){
            $html.= '<li><a href="'.htmlspecialchars($row['href'])
                .'">'.htmlspecialchars($row['content']).'</a></li>';
        }
    }
    $html.='</ul> </footer>';
    return $html;
}