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
<html lang="en">
<jsp:include page="../common/head.jsp"/>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-eye"></i>
            </div>
            <div class="sidebar-brand-text mx-3">Toolroom</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Tools -->
        <li class="nav-item">
            <a class="nav-link" href="/tool/list">
                <i class="fas fa-fw fa-tools"></i>
                <span>Tools</span></a>
        </li>

        <!-- Nav Item - Users -->
        <li class="nav-item active">
            <a class="nav-link" href="/user/list">
                <i class="fas fa-fw fa-users"></i>
                <span>Users</span></a>
        </li>

        <!-- Nav Item - Rentals -->
        <li class="nav-item">
            <a class="nav-link" href="/rental/list">
                <i class="fas fa-fw fa-warehouse"></i>
                <span>Rentals</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Utilities
        </div>

        <!-- Nav Item - Tool Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTool"
               aria-expanded="true" aria-controls="collapseTool">
                <i class="fas fa-fw fa-tools"></i>
                <span>Tool</span>
            </a>
            <div id="collapseTool" class="collapse" aria-labelledby="headingTool" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">New tool</h6>
                    <a class="collapse-item" href="/tool/add">Add new tool</a>
                    <h6 class="collapse-header">Utils</h6>
                    <a class="collapse-item" href="/category/add">Add new category</a>
                    <a class="collapse-item" href="/location/add">Add new location</a>
                    <a class="collapse-item" href="/manufacturer/add">Add new manufacturer</a>
                    <a class="collapse-item" href="/powertype/add">Add new power type</a>
                    <a class="collapse-item" href="/status/add">Add new status</a>
                </div>
            </div>
        </li>

        <!-- Nav Item - User Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUsers"
               aria-expanded="true" aria-controls="collapseUsers">
                <i class="fas fa-fw fa-users"></i>
                <span>User</span>
            </a>
            <div id="collapseUsers" class="collapse" aria-labelledby="headingUsers"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Utils</h6>
                    <a class="collapse-item" href="/user/add">Create new user</a>
                </div>
            </div>
        </li>

        <!-- Nav Item - Rental Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseRental"
               aria-expanded="true" aria-controls="collapseRentals">
                <i class="fas fa-fw fa-warehouse"></i>
                <span>Rental</span>
            </a>
            <div id="collapseRental" class="collapse" aria-labelledby="headingRentals"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Utils:</h6>
                    <a class="collapse-item" href="/rental/add">Create new rental</a>
                </div>
            </div>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>
            </nav>
            <!-- End of Topbar -->

            <!-- Topbar Navbar -->
            <ul class="navbar-nav ml-auto">

            </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <%--@elvariable id="user" type="pl.coderslab.tools.rental.Rental"--%>

                <!-- DataTables of all rental by specific user -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Table of all rentals
                            by ${user.lastName} ${user.firstName}</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th class="text-uppercase text-primary">
                                        Rental id
                                    </th>
                                    <th class="text-uppercase text-primary">
                                        Last name
                                    </th>
                                    <th class="text-uppercase text-primary">
                                        First name
                                    </th>
                                    <th class="text-uppercase text-primary">
                                        Tool name
                                    </th>
                                    <th class="text-uppercase text-primary">
                                        Tool model
                                    </th>
                                    <th class="text-uppercase text-primary">
                                        Tool brand
                                    </th>
                                    <th class="text-uppercase text-primary">
                                        Current tool status
                                    </th>
                                    <th class="text-uppercase text-primary">
                                        Rented
                                    </th>
                                    <th class="text-uppercase text-primary">
                                        Returned
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${rentals}" var="rental">
                                <tr>
                                    <td>
                                            ${rental.id}
                                    </td>
                                    <td>
                                            ${rental.user.lastName}
                                    </td>
                                    <td>
                                            ${rental.user.firstName}
                                    </td>

                                    <td>
                                            ${rental.tool.name} (id:${rental.tool.id})
                                    </td>
                                    <td>
                                            ${rental.tool.model}
                                    </td>
                                    <td>
                                            ${rental.tool.manufacturer.nameOfManufacturer}
                                    </td>
                                    <td class="align-middle text-center text-info">
                                        <c:if test="${rental.tool.status.status == 'available'}">
                                            <span class="badge badge-success text-black-50">${rental.tool.status.status}</span>
                                        </c:if>
                                        <c:if test="${rental.tool.status.status == 'rental'}">
                                            <span class="badge badge-danger text-black-50">${rental.tool.status.status}</span>
                                        </c:if>
                                    </td>
                                    <td>
                                            ${rental.rented}
                                    </td>
                                    <td>
                                            ${rental.returned}
                                    </td>
                                </tr>
                                </tbody>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<jsp:include page="../common/footer.jsp"/>
