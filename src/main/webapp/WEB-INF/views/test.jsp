<%--<%@ page import="com.gaussic.model.UserModel" %>--%>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<html>
<head>
    <title>SpringMVC demo 首页</title>
    <!--Bootstrap文件核心CSS文件-->
    <%--先用bootstrap CDN加速 之后再用本地的文件替换--%>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<h1>Sucess!!</h1>
<table border="1px" class="table table-hover">
<tr>
<td>ID</td>
<td>省份名字</td>
<td>省份位置</td>
<td>省份面积</td>
</tr>
<c:forEach items="${provinceList}" var="province" varStatus="id">
<tr class="danger">
<td>${id.index}</td>
<td>${province.provinceId}</td>
<td>${province.provinceName}</td>
<td>${province.provinceDirec}</td>
<td>${province.provinceArea}</td>
</tr>
</c:forEach>
</table>
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
<script src="//cdn.ckeditor.com/4.7.3/standard/ckeditor.js"></script>
<%--<script src="../../JS/ckeditor.js"></script>--%>
<%--<script type="text/javascript" src="<%=basePath %>/JS/ckeditor.js"></script>--%>
</body>
<script>
    //    CKEDITOR.replace('a');
    //    var data = CKEDITOR.instances.edt.getData();
    //    alert(data);
</script>
</html>
