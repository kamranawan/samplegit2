$(document).on("page: ready load change" , function(){
	$("#order_advance , #order_total").keyup(function(){
		var total = $("#order_total").val();
		var advance = $("#order_advance").val();
		var balance = total - advance ;
			$("#order_balance").val(balance);	
	})
	
})