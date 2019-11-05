package main.controller;

import java.util.Map;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/include")
public class IncludeController {
    
//     footer import
    @RequestMapping(value="/footer.mu")
    public void includeFooter(){
  
    }
//    header import
    @RequestMapping(value="/header.mu")
    public void includeHeader(){

    }
}

