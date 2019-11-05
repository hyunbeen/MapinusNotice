package main.controller;

import java.util.Calendar;
import java.util.TimeZone;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/popup")
public class PopupController {
	//팝업창으로 화면 이동
    @RequestMapping(value="/popup.mu")
    public void popup(){
    		
    }
     
    @RequestMapping(value="/todayClose.mu")
    @ResponseBody
    public void todayClose(HttpServletRequest request,HttpServletResponse response){
    		//쿠키값 저장
    		Cookie newCookie = new Cookie("todayClose", "true");
    		//하루를 초로 환산
    		int maxTime = 60 * 60 * 24;
    		
    		// 각국 주요 도시의 현재 시각을 얻을수 있습니다.
            TimeZone jst = TimeZone.getTimeZone("Asia/Seoul");
            Calendar cal = Calendar.getInstance(jst);
    	    // 현재의 시간을 계산
            int currentTime = cal.get ( Calendar.HOUR_OF_DAY ) * 60 * 60 + cal.get ( Calendar.MINUTE ) * 60 + cal.get ( Calendar.SECOND );
            // 하루에서 남은 시간을 계산하여 쿠키에 속성 부여
            newCookie.setMaxAge(maxTime - currentTime) ;
            // 쿠키 추가
            response.addCookie(newCookie);
            			
    }
    
    @RequestMapping(value="/popupOpen.mu")
    @ResponseBody
    public String popupOpen(@CookieValue(value="todayClose",defaultValue="0") String bool,HttpServletRequest req){

    	//쿠키값 확인을 통하여 팝업창을 띄울 여부를 판단
    	if(bool.equals("0")) {
    		return "0";
    	}else {
    		return "1";
    	}
        
    }

}

