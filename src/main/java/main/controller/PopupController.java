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
	//�˾�â���� ȭ�� �̵�
    @RequestMapping(value="/popup.mu")
    public void popup(){
    		
    }
     
    @RequestMapping(value="/todayClose.mu")
    @ResponseBody
    public void todayClose(HttpServletRequest request,HttpServletResponse response){
    		//��Ű�� ����
    		Cookie newCookie = new Cookie("todayClose", "true");
    		//�Ϸ縦 �ʷ� ȯ��
    		int maxTime = 60 * 60 * 24;
    		
    		// ���� �ֿ� ������ ���� �ð��� ������ �ֽ��ϴ�.
            TimeZone jst = TimeZone.getTimeZone("Asia/Seoul");
            Calendar cal = Calendar.getInstance(jst);
    	    // ������ �ð��� ���
            int currentTime = cal.get ( Calendar.HOUR_OF_DAY ) * 60 * 60 + cal.get ( Calendar.MINUTE ) * 60 + cal.get ( Calendar.SECOND );
            // �Ϸ翡�� ���� �ð��� ����Ͽ� ��Ű�� �Ӽ� �ο�
            newCookie.setMaxAge(maxTime - currentTime) ;
            // ��Ű �߰�
            response.addCookie(newCookie);
            			
    }
    
    @RequestMapping(value="/popupOpen.mu")
    @ResponseBody
    public String popupOpen(@CookieValue(value="todayClose",defaultValue="0") String bool,HttpServletRequest req){

    	//��Ű�� Ȯ���� ���Ͽ� �˾�â�� ��� ���θ� �Ǵ�
    	if(bool.equals("0")) {
    		return "0";
    	}else {
    		return "1";
    	}
        
    }

}

