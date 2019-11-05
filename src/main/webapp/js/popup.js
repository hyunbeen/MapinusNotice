
$(function(){
	$('#closeBtn').click(function(){

		//하루동안 열림여부 체크
		if($('#todayCheck').is(":checked")==true){
			$.ajax({
				url:'todayClose.mu',
				success:function(){
					self.close();
				}
			});
			
		}else{
			self.close();
		};
		
	});
	
});
