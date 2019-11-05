$(function(){
	$('#sendBtn').click(function(){
		var sendemail = $('#sendemail').val();
		var subject = $('#subject').val();
		var receiveemail = $('#receiveemail').val();
		var msg = $('#msg').val();
		var lang = $('input[name="lang"]').val();
	
		//나라별 alert창 
		var qsendemail = $('#qsendemail').val();
		var qreceiveemail = $('#qreceiveemail').val();
		var qsubject = $('#qsubject').val();
		var qmsg = $('#qmsg').val();

		//email check
		var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;

		//email error
		var receiveerr = $('#receiveerr').val();
		var senderr = $('#senderr').val();
		
		//perfect message
		var perfect = $('#perfect').val();

		
		//입력여부 체크
		if(sendemail==''){
			alert(qsendemail);
		}else if(!sendemail.match(regExp)){
			alert(senderr);
		}else if(receiveemail == ''){
			alert(qreceiveemail);
		}else if(!receiveemail.match(regExp)){
			alert(receiveerr);
		}else if(subject == ''){

			alert(qsubject);
		}else if(msg == ''){
			alert(qmsg);
		}else{
		
			$('#frm').submit();

		}

	});
});