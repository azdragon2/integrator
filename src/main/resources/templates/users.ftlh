<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Integrator</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="/images/logo.png" type="image/png" />
        
         <!-- css -->
        <link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet">
		<link href="/css/font-awesome/font-awesome.min.css" rel="stylesheet">
		<link href="/css/nprogress/nprogress.css" rel="stylesheet">
		<link href="/css/iCheck/green.css" rel="stylesheet">
		<link href="/css/bootstrap/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
		<link href="/css/jqvmap/jqvmap.min.css" rel="stylesheet" />
		<link href="/css/bootstrap/daterangepicker.css" rel="stylesheet">
		<link href="/css/colorlib/custom.min.css" rel="stylesheet">
        <link href="/css/pages/main.css" rel="stylesheet">
        <link href="/css/pages/users.css" rel="stylesheet">
        
    </head>
	
	<body class="nav-md">
		<div class="container body">
			<#include "/leftnavigation.ftlh">
			<#include "/topnavigation.ftlh">
			
			<div class="right_col" role="main" id="itemForm">
		
				<div class="row">
					<div class="col-md-12 col-sm-12 ">
						<div class="dashboard_graph">
							<div class="row x_title">
								<div class="col-md-6">
									<h3><a href="/user/add">Admin Users <button id="createUser" class="btn btn-success"><i class="fa fa-plus"></i> Create</button></a></h3>
								</div>
							</div>
							<div class="x_content">
								<div class="col-md-12 col-sm-12 ">
									<div class="col-md-8" id="queryActions">
										<div class="col-md-5" style="margin-right:20px">
											<input type="text" class="form-control" placeholder="Search" />
										</div>
										<div class="col-md-3">
											<select class="form-control">
												<option value="created">Recent</option>
												<option value="firstName">First Name</option>
												<option value="lastName">Last Name</option>
											</select>
										</div>
									</div>
									<div id="itemBox">
										<table id="itemTable" class="table table-hover">
											<thead>
												<tr>
													<th>First Name</th>
													<th>Last Name</th>
													<th>Email</th>
													<th>Created</th>
													<th>Status</th>
												</tr>
											</thead>
											<tbody>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<footer>
			<div class="pull-right">
				&copy; Aaron Beauchamp
			</div>
			<div class="clearfix"></div>
		</footer>
		
		</div>
		</div>
		
		<script src="/js/jquery/jquery-2.2.4.min.js" type="text/javascript"></script>
		<script src="/js/bootstrap/bootstrap.bundle.min.js" type="text/javascript"></script>
		<script src="/js/fastclick/fastclick.js" type="text/javascript"></script>
		<script src="/js/date/date.js" type="text/javascript"></script>
		<script src="/js/moment/moment.min.js" type="text/javascript"></script>
		<script src="/js/pages/main.js" type="text/javascript"></script>	
		<script src="/js/pages/users.js" type="text/javascript"></script>	
</html>