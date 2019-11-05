package main.service;

import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import main.object.MailVO;

@Service
public class MailService {
	@Autowired
	private JavaMailSender mailSender;
	
	public void mailSend(MailVO mail) {
		
		String setfrom = mail.getSendemail(); // 보내는 이메일        
		String tomail  = mail.getReceiveemail();     // 받는 사람 이메일
		String title   = mail.getSubject();      // 제목
		String content = "내용 : "+mail.getMsg();    // 내용
		String sendcontent = "질문 이메일 : "+setfrom+"\n\n"; // 메일에 보내는 사람 표시
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper 
			= new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(tomail);     // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(sendcontent+content);  // 메일 내용

			mailSender.send(message);

		} catch(Exception e){
			System.out.println(e);
			
		}
		
	}
	
}
