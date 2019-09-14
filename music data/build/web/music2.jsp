<%@page import="java.sql.*" %>
<center>
    <h1 style="background-color: blue;color: WHITE;text-align:center;font-size: 300%">
        <marquee>top 10 stations</marquee>
    </h1>
</center>
<body>
<center>
<table border ="1" width="80%">
    <tr>
        <th style="text-align:center"><font size = "20%"color = "blue">station_id</font></th>
        <th style="text-align:center"><font size = "20%"color = "blue">songs_played</font></th>
        <th style="text-align:center"><font size = "20%"color = "blue">user_count</font></th>
        <th style="text-align:center"><font size = "20%"color = "blue">batchid</font></th>

    </tr>
    
    <%
        String hql = "Select station_id,total_distinct_songs_played,distinct_user_count,batchid from top_10_stations";
         ResultSet rs = RCPL.hadoop.getData(hql); 
while(rs.next())
{
    String station_id = rs.getString(1);
    String song_played = rs.getString(2);
    String user_count = rs.getString(3);
    String batchid = rs.getString(4);	 
    	 
%>
    <tr>
        <td style="text-align:center"><font size = "20%"color = "blue"><%=station_id%></font></td>
        <td style="text-align:center"><font size = "20%"color = "blue"><%=song_played%></font></td>
        <td style="text-align:center"><font size = "20%"color = "blue"><%=user_count%></font></td>
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

    
