package main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import main.object.MailVO;
import main.service.MailService;

@Controller
@RequestMapping(value="/main")
public class MainController {


	@Autowired
	private MailService mailservice;

	//���� Ȩ���� �̵�
	@RequestMapping(value="/home.mu")
	public void home(String lang,Model model){
		
		model.addAttribute("lang", lang);//��� ����
		
	}

	


	@RequestMapping(value="/mail.mu")
	public String mail(MailVO mail , Model model, String lang){
	
		mailservice.mailSend(mail);//���� ���� ȣ��
		model.addAttribute("lang", lang);//��� ����
		
		return "main/home";
	}
}

