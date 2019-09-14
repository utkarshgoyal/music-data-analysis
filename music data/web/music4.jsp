<%@page import="java.sql.*" %>
<center>
    <h1 style="background-color: blue;color: WHITE;text-align:center;font-size: 300%">
        <marquee>users_artists</marquee>
    </h1>
</center>
<body>
<center>
<table border ="1" width="80%">
    <tr>
        <th style="text-align:center"><font size = "20%"color = "blue">user_id</font></th>
        <th style="text-align:center"><font size = "20%"color = "blue">artists</font></th>

    </tr>
    
    <%
        String hql = "Select user_id,artists_array from users_artists";
         ResultSet rs = RCPL.hadoop.getData(hql); 
while(rs.next())
{
    String user_id = rs.getString(1);
    String artists = rs.getString(2);
    
    	 
    	 
%>
    <tr>
        <td style="text-align:center"><font size = "20%"color = "blue"><%=user_id%></font></td>
        <td style="text-align:center"><font size = "20%"color = "blue"><%=artists%></font></td>
        
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
    
