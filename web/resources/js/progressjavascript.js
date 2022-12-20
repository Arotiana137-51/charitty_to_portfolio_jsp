/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
const progresscloth =  document.querySelector('#chlothdone');

setTimeout(()=>{
    
progresscloth.style.width =progress.getAttribute('data-done')+'%';
progresscloth.style.opacity = 1;

},200);


const progress =  document.querySelector('.specialprogress-done');

setTimeout(()=>{
    
progress.style.width =progress.getAttribute('data-done')+'%';
progress.style.opacity = 1;

},500);



const progressmeidc =  document.querySelector('#medicdone');

setTimeout(()=>{
    
progressmedic.style.width =progress.getAttribute('data-done')+'%';
progressmedic.style.opacity = 1;

},500);







////mbola ampiasaina indray androanyaaaaaaa
 function progressfunction(selected){
  console.log("accessing to the  js method");  
 const gprogress =  document.querySelector('.'+selected);

setTimeout(()=>{
    
gprogress.style.width =progress.getAttribute('data-done')+'%';
gprogress.style.opacity = 1;

},500);   
    
};