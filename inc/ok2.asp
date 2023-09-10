<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<% 
dim fy_class,fy_name,fy_url,fy_logo,fy_qq,fy_yj,fy_zhu
fy_yj=Trim(Request.Form("yj"))
if fy_yj="" then
errer="<SCRIPT>alert('好像你还没有填写内容哦~~');top.location.href = 'index.htm'; </SCRIPT>"
else
set conn=server.createobject("ADODB.CONNECTION")
connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("links.mdb")
conn.open connstr
set rs=server.CreateObject("ADODB.RecordSet")
sql="select top 1 * from links"
rs.open sql,conn,1,3
rs.addnew
rs(1)="1"
rs(2)="#"
rs(3)="#"
rs(4)="#"
rs(5)="#"
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
Response.Write("<SCRIPT>alert('谢谢你的保贵意见！');top.location.href = 'http://www.OpenHao123.cc/'; </SCRIPT> ")
else
Response.Write(errer)

end if
 %>
