<?php
include 'header.php';
include 'section_home.php';
include 'section_about.php';
include 'section_services.php';
include 'section_projects.php';
include 'footer.php';
function create_page(){
    echo create_header();
    echo create_section_home();
    echo create_section_about();
    echo create_section_services();
    echo create_section_projects();
    echo create_footer();
}
