<%--Sidebar template:
Notice: remember abiout add "active" to class: nav-item like below:
    <!-- Nav Item - Tools -->
    <li class="nav-item active">

For collapse menu: add "show" and "active" to proper sections like below:

     <div id="collapseTool" class="collapse show"

    <a class="collapse-item active"

    paste in proper place in jsp
    --%>


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
    <li class="nav-item">
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
