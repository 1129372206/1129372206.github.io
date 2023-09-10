var how_many_ads = 3 
var now = new Date() 
var sec = now.getSeconds() 
var ad = sec % how_many_ads; 
ad +=1; 
 
if (ad==1){ 
url="http://p.yiqifa.com/c?s=a14cb33f&w=420640&c=245&i=201&l=0&e=c&t=http://www.amazon.cn"; 
alt="ad1";  
banner="ad/joyo.jpg"; 
width="100"; 
height="60";  
} 

if (ad==2) { 
url="http://p.yiqifa.com/c?s=df846081&w=420640&c=247&i=159&l=0&e=c&t=http://www.dangdang.com"; 
alt="ad2"; 
banner="ad/dd.gif"; 
width="100"; 
height="60"; 
}

if (ad==3) { 
url="http://www.dongbeihuo.com"; 
alt="ad2"; 
banner="ad/dongbeihuo.gif"; 
width="100"; 
height="60"; 
}  

document.write('<center>'); 
document.write('<a href=\"' + url + '\" target=\"_blank\">'); 
document.write('<img src=\"' + banner + '\" width=') 
document.write(width + ' height=' + height + ' '); 
document.write('alt=\"' + alt + '\" border=0></a><br>'); 
document.write('</center>'); 