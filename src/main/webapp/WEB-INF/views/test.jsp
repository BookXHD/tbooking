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
    <title>ssm测试</title>
    <!--Bootstrap文件核心CSS文件-->
    <%--先用bootstrap CDN加速 之后再用本地的文件替换--%>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>

<table border="1px" class="table table-hover tb_province">
<tr>
<td>ID</td>
<td>省份名字</td>
<td>省份位置</td>
<td>省份面积</td>
</tr>
<c:forEach items="${provinceList}" var="province" varStatus="id">
<tr class="danger">
<td>${province.provinceId}</td>
<td>${province.provinceName}</td>
<td>${province.provinceDirec}</td>
<td>${province.provinceArea}</td>
</tr>
</c:forEach>
</table>
<input type = "button" class = "btn btn-default btn_add" value = "新增" />
<srcipt src="/WEB-INF/static/js/jquery-3.2.1.min.js"></srcipt>
<script src="${www}/js/test.js"></script>
<srcipt src="/WEB-INF/static/js/bootstrap/bootstrap.min.js"></srcipt>
<%--<script src="//cdn.ckeditor.com/4.7.3/standard/ckeditor.js"></script>--%>
</body>
<script>
    //    CKEDITOR.replace('a');
    //    var data = CKEDITOR.instances.edt.getData();
    //    alert(data);
    $(document).ready(function() {
        $(".btn_add").click(function () {
            $(".tb_province").hide();
        });
    });

</script>
</html>
