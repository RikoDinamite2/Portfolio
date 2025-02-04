<?php
    function create_section_home(){
        $servername="localhost";
        $username="root";
        $password="port";
        $dbname="portfolio";
        $connection=new mysqli($servername,$username,$password,$dbname);
        if($connection->connect_error){die("conessione fallita". $connection->connect_error);} 
        //dati section
        $section="SELECT * FROM section WHERE section_class=\"home\"";
        $section_res=$connection->query($section);
        $section=$section_res->fetch_assoc();
        //dati tittle
        $title="SELECT * FROM title WHERE text_in_span=\"Popa\"";
        $title_res=$connection->query($title);
        $title=$title_res->fetch_assoc();
        //dati icons
        $icons="SELECT * FROM icons ";
        $icons_res=$connection->query($icons);
        //dati group contanct
        $buttons="SELECT * FROM contact_me";
        $buttons_res=$connection->query($buttons);
        //dati image
        $image="SELECT * FROM image WHERE div_class=\"home-img\"";
        $image_res=$connection->query($image);
        $image=$image_res->fetch_assoc();
        $result_html='<section class="'.htmlspecialchars($section['section_class'])
        .'" id="'.htmlspecialchars($section['section_id']).'">';
        $result_html.= '<div class="'.htmlspecialchars($section['div_class_home']).'">';
        $result_html.= '<h1>'.($title['text_before_span']).'<span>'
            .($title['text_in_span']).'</span></h1>';
        $result_html.= '<h3>'.($title['text_brefore_description'])
            .'<span>'.($title['text_in_description']).'</span></h3>';  
        $result_html.= '<p>'.($title['paragraph']).'</p>';
        $i=0;
        if($icons_res->num_rows>0){
            while($link=$icons_res->fetch_assoc()){
                if($i==0){$result_html.= '<div class="'.htmlspecialchars($link['class_div']).'">';}
                $result_html.='<a href="'.htmlspecialchars($link['href_icon']).'" target="_blank">'
                    .'<i class="'.htmlspecialchars($link['class_icon']).'"></i></a>';
                $i++;    
            }
        }
        $result_html.= '</div>';
        $i=0;
        if($buttons_res->num_rows>0){
            while($link=$buttons_res->fetch_assoc()){
                if($i==0){$result_html.= '<div class="'.htmlspecialchars($link['class_div']).'">';}
                $result_html.='<a href="'.htmlspecialchars($link['href']).'" '
                    .'class="'.htmlspecialchars($link['class_button']).'">'
                    .htmlspecialchars($link['text_button']).'</a>';
                $i++;
            }
        }
        $result_html.= '</div>';
        $result_html.= '</div>';
        $result_html.= '<div class="'.htmlspecialchars($image['div_class']).'">'
            .'<img src="'.htmlspecialchars($image['src_img']).'" alt="" /> </div>';
        $result_html.='</section>';
        $connection->close();
        return $result_html;
    }
