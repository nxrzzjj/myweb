const form = document.getElementById('form');
const username = document.getElementById('username');
const age = document.getElementById('age');
const password = document.getElementById('password');
const password2 = document.getElementById('password2');

form.addEventListener('submit', e => {
	e.preventDefault();
	
	checkInputs();
});

function checkInputs() {
	// trim to remove the whitespaces
	const usernameValue = username.value.trim();
	const ageValue = age.value.trim();
	const passwordValue = password.value.trim();
	const password2Value = password2.value.trim();
	
	if(usernameValue === '') {
		setErrorFor(username, '用户名不能为空');
	} else {
		setSuccessFor(username);
	}
	
	if(ageValue === '') {
		setErrorFor(age, '年龄不能为空');
	} else {
		setSuccessFor(age);
	}
	
	if(passwordValue === '') {
		setErrorFor(password, '密码不能为空');
	} else {
		setSuccessFor(password);
	}
	
	if(password2Value === '') {
		setErrorFor(password2, '密码不能为空');
	} else if(passwordValue !== password2Value) {
		setErrorFor(password2, '两次密码不正确');
	} else{
		setSuccessFor(password2);
	}
}

function setErrorFor(input, message) {
	const formControl = input.parentElement;
	const small = formControl.querySelector('small');
	formControl.className = 'form-control error';
	small.innerText = message;
}

function setSuccessFor(input) {
	const formControl = input.parentElement;
	formControl.className = 'form-control success';
}
	
