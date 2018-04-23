
$(function () {
	
	//Effet sur le bouton d'inscription
	
	$("#buttonSub").hover(function() {
		$("#buttonSub").stop().fadeTo(1200, .5);
	},
	
	function(){
		$("#buttonSub").stop().fadeTo(600, 1);
	});
	
	//Fonctions de vérification
	
	$("#prenom").blur(function() {
   
		var fn = document.getElementById('prenom').value;
		if(fn == "" || (/^[0-9]+$/.test(document.getElementById("prenom").value)) || fn.length <=2){
			
			document.getElementById('prenom').style.borderColor = "red";
			return false;
		}else{
			document.getElementById('prenom').style.borderColor = "green";
		}
	});
	
	$("#nom").blur(function() {
   
		var fn = document.getElementById('nom').value;
		if(fn == "" || (/^[0-9]+$/.test(document.getElementById("nom").value)) || fn.length <=2){
			
			document.getElementById('nom').style.borderColor = "red";
			return false;
		}else{
			document.getElementById('nom').style.borderColor = "green";
		}
	});
	
	$("#contactInfo").blur(function() {
   
		var fn = document.getElementById('contactInfo').value;
		if(fn == ""){
			
			document.getElementById('contactInfo').style.borderColor = "red";
			return false;
		}else{
			document.getElementById('contactInfo').style.borderColor = "green";
		}
	});
	
	$("#contactInfoConfirm").blur(function() {
   
		var fn = document.getElementById('contactInfo').value;
		var fn2 = document.getElementById('contactInfoConfirm').value;
		if(fn != fn2){
			
			document.getElementById('contactInfoConfirm').style.borderColor = "red";
			return false;
		}else{
			document.getElementById('contactInfoConfirm').style.borderColor = "green";
		}
	});
	
	$("#password").blur(function() {
   
		var fn = document.getElementById('password').value;
		if(fn == "" || fn.length <= 6){
			 
			document.getElementById('password').style.borderColor = "red";
			return false;
		}
		else{
			document.getElementById('password').style.borderColor = "green";
		}
	});
	
	});