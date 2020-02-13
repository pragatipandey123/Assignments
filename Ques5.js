var arr=[
    {Name:"pragati",age:"21",salary:"15000",DOB:"29/08/1998"},
    {Name:"prankur",age:"22",salary:"20000",DOB:"01/08/1998"},
    {Name:"sanskriti",age:"67",salary:"100",DOB:"24/05/1998"},
    {Name:"shashank",age:"23",salary:"9000",DOB:"02/08/1998"},
    
   ];
function check_salary(){ 
   function check_sal(e,i)
   {
       if(e.salary>5000)
       {
           return e;
       }
   }
   alert("You are going to get the details  of the person whose salary is greater then 5000");
   document.getElementById("first").innerHTML=JSON.stringify(arr.filter(check_sal));
}
function sort_by_age(){
    alert("You are going to get details of the employes grouped by their age");
   document.getElementById("second").innerHTML=JSON.stringify(arr.sort(function(a, b){return a.age - b.age}));

}
function raise()
{
   function check_sal1(e,i)
   {
       if(e.age>20 && e.salary<1000)
       {
           return e;
       }
   }
   var temp=arr.filter(check_sal1);
   temp.forEach(element => {
       element.salary=(element.salary*5);
   });
   alert("salary hiked!!!")
   document.getElementById("third").innerHTML=JSON.stringify(temp);
 }