var obj1={name: "Pragati", id:4088, location: "lucknow"};
var copyobj ={};
for(var k in obj1)
{
	copyobj[k] = obj1[k];
}
console.log(obj1)
console.log(copyobj);