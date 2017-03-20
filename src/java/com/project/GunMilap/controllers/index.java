/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project.GunMilap.controllers;


import com.project.GunMilap.model.ClientEmail;
import com.project.GunMilap.model.GunMilapParameter;
import com.project.GunMilap.model.TestModel;
import java.io.IOException;
import matchmaking.Chart;
import matchmaking.GunMilan;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author manvir
 * @author Hemant Shaw
 */
@Controller
public class index {
    //index page has singup and learnmore button
    @RequestMapping(value = {"home","index"})
    public ModelAndView HomePage(ModelAndView mv){
        mv = new ModelAndView("index");
        return mv;
    }
    
    // when clicked signup of index page do this
     @RequestMapping(value = {"register"})
    public ModelAndView SignUpPage(ModelAndView mv){
        mv = new ModelAndView("signup");
        return mv;
    }
    
    // when clicked signup on signup page do this 
    @RequestMapping(value = {"signup2"})
    public ModelAndView RegisterInfoPage(ModelAndView mv, @ModelAttribute ClientEmail ce){
        mv = new ModelAndView("signup-info");
        System.out.println(ce.getEmail()+" "+ce.getPassword()+" "+ce.getPasswordr());
        mv.addObject("email", ce.getEmail());
        mv.addObject("password", ce.getPassword());
        mv.addObject("passwordr", ce.getPasswordr());
        return mv;
    }
    
    // when click create account on signup-info page 
    @RequestMapping(value = {"myaccount"})
    public ModelAndView AccountPage(ModelAndView mv){
        
        return mv;
    }
       
 
    // works for error, ajax
    @RequestMapping(value= "comp", method = RequestMethod.POST)
    public @ResponseBody String helloAjaxTest() {
       return "hello! sorry there seems to be an error";
    }
    
    /*
    // works for successful ajax request
    @RequestMapping(value= "comp", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    public @ResponseBody String helloAjaxTest2(@RequestParam(required = true,value = "wrapper", defaultValue = "{\"hello\":\"error\"}") String data ) {
       System.out.println(data);
        return data;
    }*/
    
    // works for successful ajax request, and parsing is also a success
    @RequestMapping(value= "comp", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    public @ResponseBody String helloAjaxTest2(@RequestBody(required = true) TestModel abcd ) {
        return abcd.toString() ;
    }
   
     // returns compatability
    @RequestMapping(value= "compat", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    public @ResponseBody String returnCompatability(@RequestBody(required = true) GunMilapParameter gm ) {
        Chart male,female;
        GunMilan compat;
        ObjectMapper mapper = new ObjectMapper();
        int year,month,day,hour, min, sec, tdif ;
        double lon, lat;
                
        year=Integer.parseInt(gm.getM_year());
        month=Integer.parseInt(gm.getM_month());
        day=Integer.parseInt(gm.getM_day());
        hour=Integer.parseInt(gm.getM_hour());
        min=Integer.parseInt(gm.getM_min());
        sec=Integer.parseInt(gm.getM_sec());
        tdif=gm.getM_doff()+gm.getM_toff()/3600;
        lon=gm.getM_lon();
        lat=gm.getM_lat();
        
        male=new Chart(year, month, day, hour, min, tdif, lon, lat);
        
        year=Integer.parseInt(gm.getF_year());
        month=Integer.parseInt(gm.getF_month());
        day=Integer.parseInt(gm.getF_day());
        hour=Integer.parseInt(gm.getF_hour());
        min=Integer.parseInt(gm.getF_min());
        sec=Integer.parseInt(gm.getF_sec());
        tdif=gm.getF_doff()+gm.getF_toff()/3600;
        lon=gm.getF_lon();
        lat=gm.getF_lat();
        
        female=new Chart(year, month, day, hour, min, tdif, lon, lat);
        compat=new GunMilan(male, female);
                
        try{
            return mapper.writeValueAsString(compat);
        }
        	 catch (JsonGenerationException e) {
			e.printStackTrace();
                        return e.getMessage();
		} catch (JsonMappingException e) {
			e.printStackTrace();
                        return e.getMessage();
		} catch (IOException e) {
			e.printStackTrace();
                        return e.getMessage();
		}        
    }
    
}
