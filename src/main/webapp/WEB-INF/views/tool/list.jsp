<%--
  Created by IntelliJ IDEA.
  User: pawsko
  Date: 02/08/2022
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tools</title>

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
<body class="g-sidenav-show  bg-gray-200">
<%--@elvariable id="tool" type="pl.coderslab.tools.tool.Tool"--%>
<a href="<c:url value="/status/list/"/>">Status list</a>
<a href="<c:url value="/powertype/list/"/>">Power type list</a>
<a href="<c:url value="/category/list/"/>">Category list</a>
<a href="<c:url value="/manufacturer/list/"/>">Manufacturer list</a>
<a href="<c:url value="/location/list/"/>">Location list</a> <br>
<br>
<a href="<c:url value="/tool/add/"/>">Add new tool</a><br>
<br>

<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                List if all tools
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                    <tr>
                        <th class="text-uppercase text-primary">
                            Id
                        </th>
                        <th class="text-uppercase text-primary">
                            Name
                        </th>
                        <th class="text-uppercase text-primary">
                            Model
                        </th>
                        <th class="text-uppercase text-primary">
                            Manufacturer
                        </th>
                        <th class="text-uppercase text-primary">
                            Category
                        </th>
                        <th class="text-uppercase text-primary">
                            Power type
                        </th>
                        <th class="text-center text-uppercase text-primary">
                            Status
                        </th>
                        <th class="text-center text-uppercase text-primary">
                            Rating
                        </th>
                        <th class="text-uppercase text-primary">
                            Storage location
                        </th>
                        <th class="text-uppercase text-primary">
                            Created on
                        </th>
                        <th class="text-uppercase text-primary">
                            Last update on
                        </th>
                        <th class="text-uppercase text-primary">
                            Actions
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${tools}" var="tool">
                        <tr>
                            <td>
                                    ${tool.id}
                            </td>
                            <td>
                                    ${tool.name}
                            </td>
                            <td>
                                    ${tool.model}
                            </td>
                            <td>
                                    ${tool.manufacturer.nameOfManufacturer}
                            </td>
                            <td>
                                    ${tool.category.categoryName}
                            </td>
                            <td>
                                    ${tool.powerType.powerType}
                            </td>
                            <td class="align-middle text-center text-info">
                                <c:if test="${tool.status.status == 'available'}">
                                    <span class="bg-success">${tool.status.status}</span>
                                </c:if>
                                <c:if test="${tool.status.status == 'rental'}">
                                    <span class="bg-danger">${tool.status.status}</span>
                                </c:if>
                            </td>
                            <td class="text-center">
                                    ${tool.rating}
                            </td>
                            <td>
                                    ${tool.location.nameOfLocations}
                            </td>
                            <td>
                                <p class="font-weight-bold mb-0">${tool.created}</p>
                            </td>
                            <td>
                                    ${tool.lastUpdate}
                            </td>
                            <td>
                                <a href="<c:url value="/tool/edit/${tool.id}"/>">Edit</a>
                                <c:if test="${tool.status.status == 'available'}">
                                    <a href="<c:url value="/rental/rent/${tool.id}"/>" target="_blank">Rent</a>
                                </c:if>
                                <c:if test="${tool.status.status == 'rental'}">
                                    <a href="<c:url value="/rental/return/${tool.id}"/>"
                                       target="_blank">Return</a>
                                </c:if>
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
