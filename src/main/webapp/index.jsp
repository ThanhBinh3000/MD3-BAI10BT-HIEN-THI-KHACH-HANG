<%@ page import="java.util.List" %>
<%@ page import="com.binhan.bkav.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  </head>
  <body>
  <%
    List<Product> products = new ArrayList<>();
    products.add(new Product("Trần Bình An", "23-2-2000", "Hà Nội", "/img/tranbinhan.jpg"));
    products.add(new Product("Trịnh Thị Minh", "17-5-2000", "Hà Nội", "/img/trinhthiminh.jpg"));
    products.add(new Product("Lưu Thị Thư", "07-9-1997", "Thanh hóa", "/img/luuthithu.jpg"));
    products.add(new Product("Hoàng Ngọc Mạnh", "12-12-1998", "Thanh hóa", "/img/hoangngocmanh.jpg"));
    pageContext.setAttribute("product", products);
  %>
  <h1>Danh sách khách hàng</h1>
  <table class="table table-dark table-stripedT ">
    <tr>
      <td>Tên</td>
      <td>Ngày sinh</td>
      <td>Địa chỉ</td>
      <td>Ảnh</td>
    </tr>
    <c:forEach var="product" items="${product}">
      <tr>
        <td>${product.name}</td>
        <td>${product.born}</td>
        <td>${product.address}</td>
        <td><img src="${product.image}" alt="Ảnh" width="150" height="200"></td>

      </tr>
    </c:forEach>
  </table>
  <table class="table">
    <thead>
    <tr>
      <th>Tên</th>
      <th>Ngày sinh</th>
      <th>Địa chỉ</th>
      <th>Ảnh</th>
    </tr>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${product}" >
      <tr>
        <th scope="row">${product.name}</th>
        <th scope="row">${product.born}</th>
        <th scope="row">${product.address}</th>
        <th scope="row"><img src="${product.image}" alt="ảnh"></th>
      </tr>
    </c:forEach>

    </tbody>
  </table>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
