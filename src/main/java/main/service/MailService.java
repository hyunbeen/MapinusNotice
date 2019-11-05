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
		
		String setfrom = mail.getSendemail(); // ������ �̸���        
		String tomail  = mail.getReceiveemail();     // �޴� ��� �̸���
		String title   = mail.getSubject();      // ����
		String content = "���� : "+mail.getMsg();    // ����
		String sendcontent = "���� �̸��� : "+setfrom+"\n\n"; // ���Ͽ� ������ ��� ǥ��
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper 
			= new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom);  // �����»�� �����ϰų� �ϸ� �����۵��� ����
			messageHelper.setTo(tomail);     // �޴»�� �̸���
			messageHelper.setSubject(title); // ���������� ������ �����ϴ�
			messageHelper.setText(sendcontent+content);  // ���� ����

			mailSender.send(message);

		} catch(Exception e){
			System.out.println(e);
			
		}
		
	}
	
}
