<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<% call gc() %>
<%
sub gc()
mail=Trim(request("mail"))
username=replace(trim(request("username")),",","")
password=replace(trim(request("password")),",","")
if mail="163" Then
url="<script>location.href='https://reg.163.com/logins.jsp?type=1&url=http://entry.mail.163.com/coremail/fcg/ntesdoor2?lightweight%3D1%26verifycookie%3D1%26&username="+username+"&password="+password+"'</script>"
else if mail="126" Then
url="<script>location.href='https://reg.163.com/logins.jsp?type=1&product=mail126&url=http://entry.mail.126.com/cgi/ntesdoor?hid%3D10010102%26lightweight%3D1%26&username="+username+"&password="+password+"'</script>"
else 
url="<script>location.href='http://www.OpenHao123.cc/'</script>"
end if
end if
response.write(url)
end sub
%>
