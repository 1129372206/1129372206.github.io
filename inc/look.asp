<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>hao123网址之家 - 网友留言</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body {
	margin-top: 0px;
}
-->
</style>
</head>


<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<% 
mm="123456" '登陆密码修改处

flag=Trim(Request.QueryString("flag"))
if flag="0" then
if Trim(Request.Form("user"))=mm then
response.Cookies("links")="cr88"
end if
end if
user=request.Cookies("links")
id=Trim(Request.QueryString("id"))

if user="" then 
Response.Write("<form name=""myform"" action=""?flag=0"" method=""post""><table width=""500"" height=""300"" border=""0"" align=""center"" cellpadding=""0"" cellspacing=""0""><tr><td align=""center"">请输入密码：<input name=""user"" type=""password"" id=""user""><input type=""submit"" name=""Submit"" value=""  确 定   ""></td></tr></table></form>")
response.End()
end if 
set conn=server.createobject("ADODB.CONNECTION")
connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("links.mdb")
conn.open connstr
if flag="1" then 
conn.execute("update links set fy_pass='Y' where id="&id)
elseif flag="2" then
conn.execute("update links set fy_pass='N' where id="&id)
elseif flag="3" then
conn.execute("delete from links where id="&id)
elseif flag="4" then
set rs=conn.execute("select fy_logo,fy_url,fy_name from links where fy_pass='Y' and fy_class='2' order by id asc")
while not rs.eof
i=i+1
if i>7 then
i=1
all=all&"<BR><BR>"
end if
all=all&"&nbsp;&nbsp;&nbsp;<a href="&server.HTMLEncode(rs(1))&" target=_blank><img src="&server.HTMLEncode(rs(0))&" border=0 width=88 height=31 alt="&server.HTMLEncode(rs(2))&"></a>&nbsp;"
rs.movenext
wend
rs.close
all=all&"<BR><BR>"
set rs=conn.execute("select fy_name,fy_url from links where fy_pass='Y' and fy_class='1' order by id asc")
while not rs.eof
all=all&"<a href="&server.HTMLEncode(rs(1))&">"&server.HTMLEncode(rs(0))&"</a>&nbsp;" 
Response.Write("&nbsp;&nbsp;")
rs.movenext
wend
rs.close
all="document.write('"&all&"');"
path=Server.MapPath("link.js")
Set fso = Server.CreateObject("Scripting.FileSystemObject")
set file1=fso.CreateTextFile(path,true)
file1.writeline(all)
file1.close
set fso=nothing
ttt="<font color=red>已经成功生成文件&nbsp;</font>"
end if
set rs=server.CreateObject("ADODB.RecordSet")
sql="select * from links order by fy_pass, id desc"
rs.open sql,conn,1,1
ars=rs.GetRows(-1)
rs.close
set rs=nothing
conn.close
set conn=nothing
 %>

<body>


<table width="768" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="20" bgcolor="#A0A4AC"><div align="center">hao123网址之家 - 网友留言</div></td>
  </tr>
</table>


<table width="768" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1"><div align="center"></div></td>
  </tr>
</table>
<table width="768" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="20" bgcolor="#A0A4AC"><div align="center">　</div></td>
  </tr>
</table>
<table width="768" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1"><div align="center"></div></td>
  </tr>
</table>
<table width="768" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td bgcolor="#ffffff">&nbsp;
	<% 
for i=0 to ubound(ars,2)
txt=""
if ars(1,i)="1" then
t="提交意见"
else
t="提交网站"
end if
if ars(9,i)="N" then
tt="<font color=red>审核中</font>"
elseif ars(9,i)="Y" then 
tt="已认证"
end if
txt="项目名称："&t&"<BR>网站名称："&server.HTMLEncode(ars(2,i))&"<BR>网站网址：<a href="&server.HTMLEncode(ars(3,i))&" target=_blank>"&server.HTMLEncode(ars(3,i))&"</a><BR>网站分类："&server.HTMLEncode(ars(4,i))&"<BR>联系ＱＱ：<a href=http://wpa.qq.com/msgrd?V=1&Uin="&server.HTMLEncode(ars(5,i))&"&Site=hao123网址之家-www.hao123.cc&Menu=yes target=_blank>"&server.HTMLEncode(ars(5,i))&"</a><BR>给我意见："&server.HTMLEncode(ars(6,i))&"<BR>网站简介："&server.HTMLEncode(ars(7,i))&"<BR>申请时间："&ars(8,i)&"<BR>状  态："&tt&"------<a href=?flag=1&id="&ars(0,i)&">通过</a> - <a href=?flag=2&id="&ars(0,i)&">未通过</a> - <a href=?flag=3&id="&ars(0,i)&">删除</a>"&chr(13)

Response.Write("<p>"&txt&"</p><HR>")
next
 %> 
    </td>
  </tr>
</table>


<table width="768" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1" bgcolor="#FFFFFF"><div align="center"></div></td>
  </tr>
</table>
<table width="768" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#A0A4AC"><div align="center"><a href="http://www.hao123.cc" target="_blank"> hao123.cc</a> </div></td>
  </tr>
</table>
</body>
</html>
