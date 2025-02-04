<?php 
    function create_section_projects(){
        $servername="localhost";
        $username="root";
        $password="port";
        $dbname="portfolio";
        $connection=new mysqli($servername,$username,$password,$dbname);
        if($connection->connect_error){die("conessione fallita". $connection->connect_error);} 
        //dati section e div container
        $section="SELECT * FROM section WHERE section_class=\"projects\"";
        $section_res=$connection->query($section);
        $section=$section_res->fetch_assoc();
        //dati card
        $data_div="SELECT * FROM project_card";
        $data_div_res=$connection->query($data_div);
        //solo h2
        $h2="SELECT class_heading,text_heading FROM project_card WHERE class_heading=\"heading\"";
        $h2_res=$connection->query($h2);
        $h2=$h2_res->fetch_assoc();
        $html='<section class="'.htmlspecialchars($section['section_class'])
            .'" id="'.htmlspecialchars($section['section_id']).'">';
        $html.='<h2 class="'.htmlspecialchars($h2['class_heading']).'">'
            .htmlspecialchars($h2['text_heading']).'</h2>';
        $html.='<div class="'.htmlspecialchars($section['div_class_home']).'">';
        if($data_div_res->num_rows>0){
            while($row= $data_div_res->fetch_assoc()){
                $html.='<div class="'.htmlspecialchars($row['class_project_card']).'">'
                    .'<img src="'.htmlspecialchars($row['path_img']).'" alt="">'
                    .'<h3>'.htmlspecialchars($row['text_h3']).'</h3>'
                    .'<p>'.htmlspecialchars($row['paragraph']).'</p>'
                    .'<div class="'.htmlspecialchars($row['class_button']).'">'.htmlspecialchars($row['text_button']).'</div>'
                    .'</div>';
            }
        }
        $html.='</div> </section>';
        return $html;
}   