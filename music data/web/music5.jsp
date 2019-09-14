<%@page import="java.sql.*" %>
<center>
    <h1 style="background-color: blue;color: WHITE;text-align:center;font-size: 300%">
        <marquee>User_behaviour</marquee>
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
        String hql = "Select user_type,duration,batchid from users_behaviour";
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

    
