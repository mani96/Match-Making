/* 
 * This is the data sending and receiving,, the first 2 function is place, the second 2 
 * funtion are the timezone function and the last is the ajax function
 */

var lat_male, lng_male, lat_female, lng_female;
var geocoder = new google.maps.Geocoder();
var myear, mmonth, mday, mhour, mmin, msec;
var fyear, fmonth, fday, fhour, fmin, fsec;
var mdstoff, mtimeoff, fdstoff, ftimeoff;


function mygeocode(){
       
        var male_address = document.getElementById('MsearchTextField').value;
        
         geocoder.geocode( { 'address' : male_address }, function( results, status ) {
        if( status === google.maps.GeocoderStatus.OK ) {
            lat_male= results[0].geometry.location.lat();
            lng_male= results[0].geometry.location.lng();
        
            
            femalepartsync();
        }
        else {
            //alert( 'Geocode was not successful for the following reason: ' + status );
        }
    });
       
       
 }
 
function femalepartsync(){
   
    var female_address = document.getElementById('FsearchTextField').value;
    geocoder.geocode( { 'address' : female_address }, function( results2, status2 ) {
        if( status2 === google.maps.GeocoderStatus.OK ) {
           
            
            lat_female= results2[0].geometry.location.lat();
            lng_female= results2[0].geometry.location.lng();
        
            
            get_gmt();
        }
        else {
           // alert( 'Geocode was not successful for the following reason: ' + status2 );
        }
      });
}

function get_gmt(){
     
     var date ;
     
    
     myear= document.getElementById('MYear').value;
     
     mmonth= document.getElementById('MMonth').value;
    
     mday= document.getElementById('Mday').value;
    
     mhour= document.getElementById('MHour').value;
     
     mmin= document.getElementById('MMin').value;
    
     msec= document.getElementById('MSec').value;    
     date= new Date(myear, mmonth-1, mday, mhour, mmin, msec);
    
    $.ajax(
            {
                url:"https://maps.googleapis.com/maps/api/timezone/json?location="+lat_male+","+lng_male+"&timestamp="+(Math.round((date.getTime())/1000)).toString()+"&sensor=false&key=AIzaSyAlY1O8wohWM9UH4xGJK1lDL0iO-j3M8y0"
        }).done(function(response){
       
       // alert(JSON.stringify(response, null, 20));  
        if(response.timeZoneId != null){
        
        mdstoff=response.dstOffset;
        mtimeoff=response.rawOffset;
        
        get_fgmt();
   }
});
    
}


function get_fgmt(){
     
     var date ;
     
     //alert('in gmt function');
     fyear= document.getElementById('FYear').value;
     //alert('ok');
     //alert(fyear);
     fmonth= document.getElementById('FMonth').value;
     //alert(fmonth);
     fday= document.getElementById('Fday').value;
     // alert(fday);
     fhour= document.getElementById('FHour').value;
     // alert(fhour);
     fmin= document.getElementById('FMin').value;
     // alert(fmin);
     fsec= document.getElementById('FSec').value;
     // alert(fsec);
     
     //alert(fyear+" "+fmonth+" "+fday);
     
     date= new Date(fyear, fmonth-1, fday, fhour, fmin, fsec);
     //alert(date); 
    
    $.ajax({url:"https://maps.googleapis.com/maps/api/timezone/json?location="+lat_female+","+lng_female+"&timestamp="+(Math.round((date.getTime())/1000)).toString()+"&sensor=false&key=AIzaSyAlY1O8wohWM9UH4xGJK1lDL0iO-j3M8y0"
        }).done(function(response){
       // alert("in timezonefunction");
     //   alert(JSON.stringify(response, null, 20));  
        if(response.timeZoneId != null){
            //do something
        //alert(response.timeZoneId);
        fdstoff=response.dstOffset;
        ftimeoff=response.rawOffset;
        //alert("dstoffset: "+fdstoff+" and timeoffset: "+ftimeoff);
        
        getCompatViaAjax();
   }
});
    
}


function getCompatViaAjax(){
    
     var data_to_send={          
                                m_year:   myear, 
                                m_month:  mmonth,
                                m_day:    mday,
                                m_hour:   mhour,
                                m_min:    mmin,
                                m_sec:    msec,
                                m_lon:    lng_male,
                                m_lat:    lat_male,
                                m_toff:   mtimeoff,
                                m_doff:   mdstoff,
                                f_year:   fyear, 
                                f_month:  fmonth,
                                f_day:    fday,
                                f_hour:   fhour,
                                f_min:    fmin,
                                f_sec:    fsec,
                                f_lon:    lng_female,
                                f_lat:    lat_female,
                                f_toff:   ftimeoff,
                                f_doff:   fdstoff                         
    };
    
   // alert(JSON.stringify(data_to_send, null, 20)); 
    
    $.ajax({
		type : "POST",
		contentType : "application/json ;charset=utf-8",
		url : "/GunMilan/compat",
		data : JSON.stringify(data_to_send,null,20),
		dataType : 'json',
		timeout : 100000,
		success : function(data) {
			//alert("i m fine");
                     //   alert(JSON.stringify(data, null, 20)+" success");
                       //  $("#result").html("compatability = "+(data.compatibility*100/36)+"%");
                         settestresult(data);
                        
		},
		error : function(e) {
			alert("no not fine");
                        alert(JSON.stringify(e,null,20));
                        $("#result").html(e.responseText);
		},
		done : function(e) {
			alert("no done");
		}
	});
}

// this is a test function no longer used
function tryajaxtest(){
     alert("inside ajax test");
     var data_to_send={a:"hello world", 
                       b:"nice day isnt it"};
     alert("initialized variable: "+ JSON.stringify(data_to_send, null, 20));
     
     $.ajax({
		type : "POST",
		contentType : "application/json ;charset=utf-8",
		url : "/GunMilan/comp",
		data : JSON.stringify(data_to_send,null,20),
		dataType : 'json',
		timeout : 100000,
		success : function(data) {
			alert("i m fine");
                        alert(JSON.stringify(data, null, 20)+" success");
                        
		},
		error : function(e) {
			alert("no not fine");
                        alert(JSON.stringify(e,null,20));
                        $("#result").html(e.responseText);
		},
		done : function(e) {
			alert("no done");
		}
	});

}
