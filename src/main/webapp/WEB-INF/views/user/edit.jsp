<%--
  Created by IntelliJ IDEA.
  User: pawsko
  Date: 02/08/2022
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

                <%--@elvariable id="user" type="pl.coderslab.tools.user.User"--%>
                <!-- Form for new tool -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Edit user: ${user.lastName} ${user.firstName}</h6>
                    </div>
                    <div class="card-body">
                        <form:form modelAttribute="user" action="/user/edit">
                            <form:hidden path="id"/>
                            First name:
                            <form:input cssClass="form-control" path="firstName"/>
                            Last name:
                            <form:input cssClass="form-control" path="lastName"/>
                            Phone number:
                            <form:input cssClass="form-control" type="tel" path="phoneNumber"/>
                            Email:
                            <form:input cssClass="form-control" type="email" path="email"/>
                            Rating:
                            <form:input cssClass="form-control" type="number" min="0" max="10" path="rating"/>
                            Created on: ${user.created}
                            <form:hidden path="created"/> <br>
                            Last update on: ${user.lastUpdate} <br>
                            <input type="submit" class="btn btn-primary"/>
                        </form:form>
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
