/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * 
 * 
 * 
 */


function settestresult(data){
   // $("#result").html("compatability = "+(data.compatibility*100/36)+"%");   
   var p = data.compatibility*100/36;
   var bar = "progress-bar-danger";
   if(p <= 50) bar = "progress-bar-danger"
   else bar = "progress-bar-success";
  
   
   p = p.toFixed(2);
    $("#result").html(
      "<div class=\"progress\">  \n\
<div class=\"progress-bar "+ bar + " progress-bar-striped active\" role=\"progressbar\" aria-valuenow=\"70\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:"+p+"%\" > \n\
"+p+"% \n\
</div>\n\
</div>"    
            );
}