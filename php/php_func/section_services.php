<?php 
    function create_section_services(){
        $servername="localhost";
        $username="root";
        $password="port";
        $dbname="portfolio";
        $connection=new mysqli($servername,$username,$password,$dbname);
        if($connection->connect_error){die("conessione fallita". $connection->connect_error);} 
        //dati h2
        $h2="SELECT class_heading,text_heading FROM service_box WHERE class_heading=\"heading\"";
        $h2_res=$connection->query($h2);
        $h2=$h2_res->fetch_assoc();
        //dati class_services
        $class_services="SELECT * FROM section WHERE section_class=\"services\"";
        $class_services_res=$connection->query($class_services);
        $class_services=$class_services_res->fetch_assoc();
        //dati ogni div
        $service_box="SELECT * FROM service_box";
        $service_box_res=$connection->query($service_box);
        $html='<section class="'.htmlspecialchars($class_services['section_class'])
            .'" id="'.htmlspecialchars($class_services['section_id']).'"'
            .'>';
        $html.='<h2 class="'.htmlspecialchars($h2['class_heading']).'">'
            .htmlspecialchars($h2['text_heading']).'</h2>';
        $html.='<div class="'.htmlspecialchars($class_services['div_class_home']).'">';
        if($service_box_res->num_rows>0){
            while($row=$service_box_res->fetch_assoc()){
                $html.='<div class="'.htmlspecialchars($row['class_service_box']).'">'
                    .'<div class="'.htmlspecialchars($row['class_service_info']).'">'
                    .'<i class="'.htmlspecialchars($row['class_tag_i']).'"> </i>'
                    .'<h4>'.htmlspecialchars($row['title']).'</h4>'
                    .'<p>'.htmlspecialchars($row['paragraph']).'</p>'
                    .'</div> </div>';
            }
        }
        $html.='</div> </section>';
        return $html;
}   