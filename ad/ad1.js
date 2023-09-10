var how_many_ads = 6 
var now = new Date() 
var sec = now.getSeconds() 
var ad = sec % how_many_ads; 
ad +=1; 
 
if (ad==1){ 
url="http://p.yiqifa.com/c?s=2f587d76&w=94640&c=255&i=150&l=0&e=cooc123&t=http://www.vancl.com"; 
alt="ad1";  
banner="ad/fcx.gif"; 
width="420"; 
height="60";  
} 

if (ad==2) { 
url="http://p.yiqifa.com/c?s=1390110b&w=94640&c=4275&i=4662&l=0&e=cooc123&t=http://www.m18.com"; 
alt="ad2"; 
banner="ad/m18.gif"; 
width="420"; 
height="60"; 
}  

if (ad==3) { 
url="http://p.yiqifa.com/c?s=eb644c76&w=94640&c=313&i=202&l=0&e=cooc123&t=http://www.letao.com"; 
alt="ad3"; 
banner="ad/letao.gif"; 
width="420"; 
height="60"; 
}  

if (ad==4) { 
url="http://p.yiqifa.com/c?s=ddf81ab8&w=94640&c=5331&i=11202&l=0&e=cooc123&t=http://www.yintai.com/"; 
alt="ad4"; 
banner="ad/yt.gif"; 
width="420"; 
height="60"; 
}  

if (ad==5) { 
url="http://p.yiqifa.com/c?s=dd79ddbe&w=94640&c=4858&i=7722&l=0&e=cooc123&t=http://www.shangpin.com/wm-yiqifa/"
alt="ad5"; 
banner="ad/zmly.jpg"; 
width="420"; 
height="60"; 
}  

if (ad==6) { 
url="http://p.yiqifa.com/c?s=9ba033b4&w=94640&c=5075&i=9422&l=0&e=cooc123&t=http://www.yihaodian.com/product/index.do"; 
banner="ad/gqmv.jpg"; 
width="420"; 
height="60"; 
}  


document.write('<left>'); 
document.write('<a href=\"' + url + '\" target=\"_blank\">'); 
document.write('<img src=\"' + banner + '\" width=') 
document.write(width + ' height=' + height + ' '); 
document.write('alt=\"' + alt + '\" border=0></a><br>'); 
document.write('</center>'); 