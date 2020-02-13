function myFunction(){
	var amount,rate,years;
	amount=parseFloat(prompt("Enter the Principal Amount"));
	rate=parseFloat(prompt("Enter the rate"));
	years=parseFloat(prompt("Enter the years"));
	var si=(amount*rate*years)/100;
	document.write("Simple Interest is:"+si);
}
myFunction.call();
