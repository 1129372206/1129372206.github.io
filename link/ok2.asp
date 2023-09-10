<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<% 
dim fy_class,fy_name,fy_url,fy_logo,fy_qq,fy_yj,fy_zhu
fy_yj=Trim(Request.Form("fy_yj"))
fy_class=Trim(Request.Form("fy_class"))
fy_name=Trim(Request.Form("fy_name"))
fy_url=Trim(Request.Form("fy_url"))
fy_qq=Trim(Request.Form("fy_qq"))
if fy_yj="" then
errer="<SCRIPT>alert('好像你还没有填写内容哦~~');top.location.href = 'index.htm'; </SCRIPT>"
else
end if
if fy_class="" then
errer="<SCRIPT>alert('好像你还没有填写分类哦~~');top.location.href = 'index.htm'; </SCRIPT>"
else
end if
if fy_url="" then
errer="<SCRIPT>alert('好像你还没有填写地址哦~~');top.location.href = 'index.htm'; </SCRIPT>"
else
end if
if fy_qq="" then
errer="<SCRIPT>alert('好像你还没有填写qq哦~~');top.location.href = 'index.htm'; </SCRIPT>"
else
end if
if fy_name="" then
errer="<SCRIPT>alert('好像你还没有填写名称哦~~');top.location.href = 'index.htm'; </SCRIPT>"
else
set conn=server.createobject("ADODB.CONNECTION")
connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("links.mdb")
conn.open connstr
set rs=server.CreateObject("ADODB.RecordSet")
sql="select top 1 * from links"
rs.open sql,conn,1,3
rs.addnew
rs(1)=fy_class
rs(2)=fy_name
rs(3)=fy_url
rs(4)="#"
rs(5)=fy_qq
rs(6)=fy_yj
rs(7)="#"
rs.update
rs.close
set rs=nothing
conn.close
set conn=nothing
end if
 %>

<% 
if errer="" then
Response.Write("<SCRIPT>alert('您的网站已提交，请等待管理员审核！');top.location.href = 'http://www.OpenHao123.cc/'; </SCRIPT> ")
else
Response.Write(errer)

end if
 %>
