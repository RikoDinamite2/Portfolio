let menuIcon=document.querySelector('#menu-icon');
let navbar=document.querySelector('.navbar');
menuIcon.onclick = () => {
    menuIcon.classList.toggle('bx-x');
    navbar.classList.toggle('active');
} 
function donwload_pdf(){
    const link=document.createElement('a');
    link.href='../pdf/cv.pdf';
    link.download='curriculum.pdf';
    link.click();
}