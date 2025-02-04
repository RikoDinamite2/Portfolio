<?php
    function create_section_about(){
        $servername="localhost";
        $username="root";
        $password="port";
        $dbname="portfolio";
        $connection=new mysqli($servername,$username,$password,$dbname);
        if($connection->connect_error){die("conessione fallita". $connection->connect_error);} 
        //dati sections
        $section="SELECT * FROM section WHERE section_class=\"about\"";
        $section_res=$connection->query($section);
        $section=$section_res->fetch_assoc();
        //dati img
        $image="SELECT * FROM image WHERE div_class=\"about-img\"";
        $image_res=$connection->query($image);
        $image=$image_res->fetch_assoc();
        //dati title, href e paragrafo
        $title="SELECT * FROM title WHERE text_in_span=\"Me\"";
        $title_res=$connection->query($title);
        $title=$title_res->fetch_assoc();
        $result_html='<section class="'.htmlspecialchars($section['section_class'])
            .'" id="'.htmlspecialchars($section['section_id']).'">';
        $result_html.='<div class="'.htmlspecialchars($image['div_class']).'" >'
            .'<img src="'.htmlspecialchars($image['src_img']).'" alt="" /> </div>';
        $result_html.= '<div class="'.htmlspecialchars($section['div_class_home']).'">';
        $result_html.= '<h2>'.htmlspecialchars($title['text_before_span'])
            .'<span>'.htmlspecialchars($title['text_in_span']).'</span></h2>';
        $result_html.= '<p>'.htmlspecialchars($title['paragraph']).'</p>';
        $result_html.=  '<a href="'.htmlspecialchars($title['text_brefore_description']).'"' 
            .' class="btn">'.htmlspecialchars($title['text_in_description']).'</a>';
        $result_html.= '</div> </section>';
        return $result_html;
    }