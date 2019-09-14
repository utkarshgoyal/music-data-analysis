
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*" %>


<center>
    <h1 style="background-color: blue;color: WHITE;text-align:center;font-size: 300%">
        <marquee>top 10 royality songs</marquee>
    </h1>
</center>
<body>
<center>
<table border ="1" width="80%">
    <tr>
        <th style="text-align:center"><font size = "20%"color = "blue">song_id</font></th>
        <th style="text-align:center"><font size = "20%"color = "blue">duration</font></th>
        <th style="text-align:center"><font size = "20%"color = "blue">batchid</font></th>

    </tr>
    
    <%
        String hql = "Select song_id,duration,batchid from top_10_royalty_songs";
         ResultSet rs = RCPL.hadoop.getData(hql); 
         
while(rs.next())
{
    String song_id = rs.getString(1);
    String duration = rs.getString(2);
    String batchid = rs.getString(3);
    
%>
    <tr>
        <td style="text-align:center"><font size = "20%"color = "blue"><%=song_id%></font></td>
        <td style="text-align:center"><font size = "20%"color = "blue"><%=duration%></font></td>
        <td style="text-align:center"><font size = "20%"color = "blue"><%=batchid%></font></td>
                </tr>
                <% }
%>
</table>

 </center>

<form action ="index1.jsp">
    <br><br><br>
    <input type ="submit" value ="back">
    
</form>
</body>


 
 


    
