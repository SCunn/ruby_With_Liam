function emailValidator(){
	
	var first_name = document.getElementById('fname').value;
	var last_name = document.getElementById('lastname').value;
	var userEmail = document.getElementById('email').value;
	var message = document.getElementById('message').value;
	
	
	var emailRegex = /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+(?:[A-Z]{2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|asia|jobs|museum|ie|uk)\b$/;
	var inputPassword = document.getElementById('pass').value;
	//any Uppercase/Lowercase letters & numbers, between 6-10 characters
    var passwordRegex = /^[A-Za-z\d]{6,10}$/;
    //Check Email not empty AND address is valid based on Email Regex 
	
	
	if(first_name !== "" && last_name !== "" && userEmail !== "" && emailRegex.test(userEmail) && inputPassword !== "" 
		&& passwordRegex.test(inputPassword)
		&& message !== ""){
			window.alert("We will get back to you shortly!");
			window.location = "post.html";
		
	}
	else if (first_name === ""){
		window.alert("You did nat enter a first name!");
		document.getElementById('fname').focus();
	}
		
	else if (last_name === "") {
		window.alert("You did not enter a last name!");
		document.getElementById('lastname').focus();
	} 
	
	else if (userEmail === ""){
		window.alert("You did not enter an Email Address!");
		document.getElementById('email').focus();
	} 
	else if (inputPassword === ""){
		window.alert("You did not enter a password!");
		document.getElementById('pass').focus();
	}
	else if (message === ""){
		window.alert("You did not leave a message!");
		document.getElementById('message').focus();
	} else {
		// Input was Invalid
		window.alert("Input Not Valid!");
		document.getElementById('pass').focus();
	}
}










