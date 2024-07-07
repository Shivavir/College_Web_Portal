<%@page import="common.Cryptography" %>
<%
Cryptography cg=new Cryptography();
String EncrPass=cg.EncryptMyData("Bhumika@456");
out.print("Encrypted password is: "+EncrPass);

%>