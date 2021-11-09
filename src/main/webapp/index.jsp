<%@ page import="java.util.List" %>
<%@ page import="model.Customer" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/9/2021
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Danh sách khách hàng</title>
  </head>
  <body>
  <%
    List<Customer> customerList = new ArrayList<>();

    customerList.add(new Customer("01", "Tuấn gấu", 18, "Chợ sắt Hải Phòng","Dinh.jpg"));
    customerList.add(new Customer("02", "Thảo ảo tùng chảo", 16, "Phú Thọ thích hàng họ", "Thao.jpg"));
    customerList.add(new Customer("03", "Định Hà", 13, "Nam Định nịnh Hà", "Tuan.jpg"));


  %>
  <table border="1px" style="color: red">
    <tr>
      <th colspan="5">Danh sách Khách hàng</th>
    </tr>
    <tr>
      <td>Id khách hàng</td>
      <td>Tên khách hàng</td>
      <td>Tuổi</td>
      <td>Địa chỉ</td>
      <td>Ảnh mô tả tội phạm</td>
    </tr>
    <%
      for (Customer c: customerList) {
    %>
    <tr>
      <td><%=c.getId()%></td>
      <td><%=c.getName()%></td>
      <td><%=c.getAge()%></td>
      <td><%=c.getAddress()%></td>
      <td><img height="180px" width="130px" src="<%=c.getImage()%>"></td>
    </tr>
      <%
      }
      %>

  </table>

  </body>
</html>
