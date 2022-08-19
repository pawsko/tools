<%--
  Created by IntelliJ IDEA.
  User: pawsko
  Date: 02/08/2022
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Locations</title>

    <!-- Bootstrap Core CSS -->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>
<body>
<%--@elvariable id="rental" type="pl.coderslab.tools.location.Location"--%>
<a href="<c:url value="/tool/list/"/>">Tool list</a><br>
<a href="<c:url value="/location/add/"/>">Add new location</a><br>
<br>

<!-- /.row -->
<div class="row">
    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                List if all storage locations
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
<table class="table table-striped table-bordered table-hover" id="dataTables-example">
    <thead>
    <tr>
        <th>Id</th>
        <th>Location</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${locations}" var="location">
        <tr>
            <td>${location.id}</td>
            <td>${location.nameOfLocations}</td>
            <td>
                <a href="<c:url value="/location/edit/${location.id}"/>">Edit</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!-- /.table-responsive -->
</div>
<!-- /.panel-body -->
</div>
<!-- /.panel -->
</div>
<!-- /.col-lg-12 -->
</div>
<!-- jQuery -->
<script src="/vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="/vendor/metisMenu/metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script src="/vendor/datatables/js/jquery.dataTables.min.js"></script>
<script src="/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
<script src="/vendor/datatables-responsive/dataTables.responsive.js"></script>

<!-- Custom Theme JavaScript -->
<script src="/dist/js/sb-admin-2.js"></script>

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready(function () {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>
</body>
</html>
