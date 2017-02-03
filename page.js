window.onload=function(){
	document.getElementById('newNo1').onclick=delivery1;
	document.getElementById('newNo2').onclick=delivery1;
	document.getElementById('newNo3').onclick=delivery1;
	document.getElementById('newNo4').onclick=delivery1;
	document.getElementById('newNo5').onclick=delivery1;
	document.getElementById('popularNo1').onclick=delivery2;
	document.getElementById('popularNo2').onclick=delivery2;
	document.getElementById('popularNo3').onclick=delivery2;
	document.getElementById('popularNo4').onclick=delivery2;
	document.getElementById('popularNo5').onclick=delivery2;
	function delivery1(){
		num=this.id.substr(5);		
		document.getElementById('newForm'+num).submit();
	}
	
	function delivery2(){
		num=this.id.substr(9);
		
		
		document.getElementById('popularForm'+num).submit();
	}
	
	
}
