$(document).on('page: ready load change', function(){
		setTimeout(function(){ 
		$(".alert").slideUp();
	 }, 3000);

    $(function () {
      $('#datetimepicker1,#datetimepicker2').datetimepicker({format: 'YYYY-MM-DD'});
    });

    $(function () {
      $('#datetimepicker').datetimepicker({format: 'YYYY-MM-DD HH:MM'});
    });


})