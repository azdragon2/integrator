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
        
        <!-- Template provided by https://github.com/ColorlibHQ/gentelella -->
        
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
        
    </head>
	
	<body class="nav-md">
		<div class="container body">
			<#include "/leftnavigation.ftlh">
			<#include "/topnavigation.ftlh">
			
			<div class="right_col" role="main">
			
				<!-- First row -->
				<div class="row" style="display: inline-block;">
					<div class="tile_count">
						<div class="col-md-2 col-sm-4  tile_stats_count">
							<span class="count_top"><i class="fa fa-user"></i> Total Requests</span>
							<div class="count">2500</div>
							<span class="count_bottom"><i class="green">4% </i> From last Week</span>
						</div>
						<div class="col-md-2 col-sm-4  tile_stats_count">
							<span class="count_top"><i class="fa fa-clock-o"></i> Average Time</span>
							<div class="count">123.50</div>
							<span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>3% </i> From last Week</span>
						</div>
						<div class="col-md-2 col-sm-4  tile_stats_count">
							<span class="count_top"><i class="fa fa-user"></i> Total Success</span>
							<div class="count green">4,567</div>
							<span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i>12% </i> From last Week</span>
						</div>
						<div class="col-md-2 col-sm-4  tile_stats_count">
							<span class="count_top"><i class="fa fa-user"></i> Total Errors</span>
							<div class="count red">34</div>
							<span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>
						</div>
						<div class="col-md-2 col-sm-4  tile_stats_count">
							<span class="count_top"><i class="fa fa-user"></i> Total Endpoints</span>
							<div class="count">5</div>
							<span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span>
						</div>
						<div class="col-md-2 col-sm-4  tile_stats_count">
							<span class="count_top"><i class="fa fa-user"></i> Total Users</span>
							<div class="count">1</div>
							<span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>100% </i> From last Week</span>
						</div>
					</div>
				</div>
		
				<!-- Second Row -->
				<div class="row">
					<div class="col-md-12 col-sm-12 ">
						<div class="dashboard_graph">
							<div class="row x_title">
								<div class="col-md-6">
									<h3>Network Activity <small>Request Tracker</small></h3>
								</div>
								<div class="col-md-6">
									<div id="reportrange" class="pull-right" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
										<i class="fa fa-calendar"></i>
										<span>December 30, 2014 - January 28, 2015</span> <b class="caret"></b>
									</div>
								</div>
							</div>
							<div class="col-md-9 col-sm-9 ">
								<div id="chart_plot_01" class="demo-placeholder"></div>
							</div>
							<div class="col-md-3 col-sm-3  bg-white">
								<div class="x_title">
									<h2>Per Request</h2>
									<div class="clearfix"></div>
								</div>
								<div class="col-md-12 col-sm-12 ">
									<div>
										<p>Request1</p>
										<div class="">
											<div class="progress progress_sm" style="width: 76%;">
												<div class="progress-bar bg-green" role="progressbar" data-transitiongoal="80"></div>
											</div>
										</div>
									</div>
									<div>
										<p>Request2</p>
										<div class="">
											<div class="progress progress_sm" style="width: 76%;">
												<div class="progress-bar bg-green" role="progressbar" data-transitiongoal="60"></div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-12 col-sm-12 ">
									<div>
										<p>Request3</p>
										<div class="">
											<div class="progress progress_sm" style="width: 76%;">
												<div class="progress-bar bg-green" role="progressbar" data-transitiongoal="40"></div>
										 	</div>
										</div>
									</div>
									<div>
										<p>Request4</p>
										<div class="">
											<div class="progress progress_sm" style="width: 76%;">
												<div class="progress-bar bg-green" role="progressbar" data-transitiongoal="50"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<br />
				
				<!-- Third Row -->
				<div class="row">
					<div class="col-md-4 col-sm-4 ">
						<div class="x_panel tile fixed_height_320">
							<div class="x_title">
								<h2>App Versions</h2>
								<ul class="nav navbar-right panel_toolbox">
									<!--<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
										<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
											<a class="dropdown-item" href="#">Settings 1</a>
											<a class="dropdown-item" href="#">Settings 2</a>
										</div>
									</li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>-->
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<h4>App Usage across versions</h4>
								<div class="widget_summary">
									<div class="w_left w_25">
										<span>0.1</span>
									</div>
									<div class="w_center w_55">
										<div class="progress">
											<div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 66%;">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
									</div>
									<div class="w_right w_20">
										<span>123k</span>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="widget_summary">
									<div class="w_left w_25">
										<span>0.3</span>
									</div>
									<div class="w_center w_55">
										<div class="progress">
											<div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
									</div>
									<div class="w_right w_20">
										<span>53k</span>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="widget_summary">
									<div class="w_left w_25">
										<span>0.4</span>
									</div>
									<div class="w_center w_55">
										<div class="progress">
											<div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 25%;">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
									</div>
									<div class="w_right w_20">
										<span>23k</span>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="widget_summary">
									<div class="w_left w_25">
										<span>0.5</span>
									</div>
									<div class="w_center w_55">
										<div class="progress">
											<div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 5%;">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
									</div>
									<div class="w_right w_20">
										<span>3k</span>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="widget_summary">
									<div class="w_left w_25">
										<span>0.6</span>
									</div>
									<div class="w_center w_55">
										<div class="progress">
											<div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 2%;">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
									</div>
									<div class="w_right w_20">
										<span>1k</span>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					
					
					<div class="col-md-4 col-sm-4 ">
						<div class="x_panel tile fixed_height_320 overflow_hidden">
							<div class="x_title">
								<h2>Device Usage</h2>
								<ul class="nav navbar-right panel_toolbox">
									<!--<li>
										<a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
										<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
										<a class="dropdown-item" href="#">Settings 1</a>
										<a class="dropdown-item" href="#">Settings 2</a>
										</div>
									</li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>-->
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<table class="" style="width:100%">
									<tr>
										<th style="width:37%;">
											<p>Top 5</p>
										</th>
										<th>
											<div class="col-lg-7 col-md-7 col-sm-7 ">
												<p class="">Device</p>
											</div>
											<div class="col-lg-5 col-md-5 col-sm-5 ">
												<p class="">Progress</p>
											</div>
										</th>
									</tr>
									<tr>
										<td>
											<canvas class="canvasDoughnut" height="140" width="140" style="margin: 15px 10px 10px 0"></canvas>
										</td>
										<td>
											<table class="tile_info">
												<tr>
													<td>
														<p><i class="fa fa-square aero"></i>IOS </p>
													</td>
													<td>30%</td>
												</tr>
												<tr>
													<td>
														<p><i class="fa fa-square green"></i>Android </p>
													</td>
													<td>10%</td>
												</tr>
												<tr>
													<td>
														<p><i class="fa fa-square purple"></i>Firefox </p>
													</td>
													<td>20%</td>
												</tr>
												<tr>
													<td>
														<p><i class="fa fa-square blue"></i>Chrome </p>
													</td>
													<td>15%</td>
												</tr>
												<tr>
													<td>
														<p><i class="fa fa-square red"></i>Unknown </p>
													</td>
													<td>30%</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 ">
						<div class="x_panel tile fixed_height_320">
							<div class="x_title">
								<h2>Server Load</h2>
								<ul class="nav navbar-right panel_toolbox">
									<!--<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
									</li>
									<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
									<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item" href="#">Settings 1</a>
									<a class="dropdown-item" href="#">Settings 2</a>
									</div>
									</li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>-->
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<div class="dashboard-widget-content">
									<ul class="quick-list">
										<li><i class="fa fa-bars"></i><a href="#">Server1</a>
										</li>
										<li><i class="fa fa-bars"></i><a href="#">Server2</a>
										</li>
										<li><i class="fa fa-bars"></i><a href="#">Server3</a>
										</li>
										<li><i class="fa fa-bars"></i><a href="#">Server4</a>
										</li>
										<li><i class="fa fa-bars"></i><a href="#">Server5</a>
										</li>
										<li><i class="fa fa-bars"></i><a href="#">Server6</a>
										</li>
										<li><i class="fa fa-bars"></i><a href="#">Server7</a>
										</li>
									</ul>
									
									<div class="sidebar-widget">
										<h4>Requests Per Server</h4>
										<canvas width="150" height="80" id="chart_gauge_01" class="" style="width: 160px; height: 100px;"></canvas>
										<div class="goal-wrapper">
											<span id="gauge-text" class="gauge-value pull-left">0</span>
											<span class="gauge-value pull-left">%</span>
											<span id="goal-text" class="goal-value pull-right">100%</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		
				<!-- Fourth Row -->
				<div class="row">
					<div class="col-md-4 col-sm-4 ">
						<div class="x_panel">
							<div class="x_title">
								<h2>Recent Activities <small>Sessions</small></h2>
								<!--<ul class="nav navbar-right panel_toolbox">
									<li>
										<a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
										<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
											<a class="dropdown-item" href="#">Settings 1</a>
											<a class="dropdown-item" href="#">Settings 2</a>
										</div>
									</li>
									<li>
										<a class="close-link"><i class="fa fa-close"></i></a>
									</li>
								</ul>-->
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<div class="dashboard-widget-content">
									<ul class="list-unstyled timeline widget">
										<li>
											<div class="block">
												<div class="block_content">
													<h2 class="title">
														User Created
													</h2>
													<div class="byline">
														<span>13 hours ago</span> by <a>Jane Smith</a>
													</div>
													<p class="excerpt">New user Aaron Beauchamp was created in the system.</p>
												</div>
											</div>
										</li>
										<li>
											<div class="block">
												<div class="block_content">
													<h2 class="title">
														Endpoint Created
													</h2>
													<div class="byline">
														<span>14 hours ago</span> by <a>Jane Smith</a>
													</div>
													<p class="excerpt"><a href="/endpoint/id">Endpoint '/v2/cars' was created.</a></p>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-8 col-sm-8 ">
						<div class="row">
							<div class="col-md-12 col-sm-12 ">
								<div class="x_panel">
									<div class="x_title">
										<h2>Request Origination <small>geo-presentation</small></h2>
										<ul class="nav navbar-right panel_toolbox">
											<!--<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
											</li>
											<li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
											<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
											<a class="dropdown-item" href="#">Settings 1</a>
											<a class="dropdown-item" href="#">Settings 2</a>
											</div>
											</li>
											<li><a class="close-link"><i class="fa fa-close"></i></a>
											</li>-->
										</ul>
										<div class="clearfix"></div>
									</div>
									<div class="x_content">
										<div class="dashboard-widget-content">
											<div class="col-md-4 hidden-small">
												<h2 class="line_30">125.7k Requests from 60 countries</h2>
												<table class="countries_list">
													<tbody>
														<tr>
															<td>United States</td>
															<td class="fs15 fw700 text-right">33%</td>
														</tr>
														<tr>
															<td>France</td>
															<td class="fs15 fw700 text-right">27%</td>
														</tr>
														<tr>
															<td>Germany</td>
															<td class="fs15 fw700 text-right">16%</td>
														</tr>
														<tr>
															<td>Spain</td>
															<td class="fs15 fw700 text-right">11%</td>
														</tr>
														<tr>
															<td>Britain</td>
															<td class="fs15 fw700 text-right">10%</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div id="world-map-gdp" class="col-md-8 col-sm-12 " style="height:230px;"></div>
										</div>
									</div>
								</div>
							</div>
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
		<!--<script src="/js/nprogress/nprogress.js" type="text/javascript"></script>-->
		<script src="/js/chart/Chart.min.js" type="text/javascript"></script>
		<script src="/js/gauge/gauge.min.js" type="text/javascript"></script>
		<script src="/js/bootstrap/bootstrap-progressbar.min.js" type="text/javascript"></script>
		<script src="/js/iCheck/icheck.min.js" type="text/javascript"></script>
		<script src="/js/skycons/skycons.js" type="text/javascript"></script>
		
		<script src="/js/flot/jquery.flot.js" type="text/javascript"></script>
		<script src="/js/flot/jquery.flot.pie.js" type="text/javascript"></script>
		<script src="/js/flot/jquery.flot.time.js" type="text/javascript"></script>
		<script src="/js/flot/jquery.flot.stack.js" type="text/javascript"></script>
		<script src="/js/flot/jquery.flot.resize.js" type="text/javascript"></script>
		
		<script src="/js/flot/jquery.flot.orderBars.js" type="text/javascript"></script>
		<script src="/js/flot/jquery.flot.spline.min.js" type="text/javascript"></script>
		<script src="/js/flot/curvedLines.js" type="text/javascript"></script>
		
		<script src="/js/date/date.js" type="text/javascript"></script>
		
		<script src="/js/jqvmap/jquery.vmap.js" type="text/javascript"></script>
		<script src="/js/jqvmap/jquery.vmap.world.js" type="text/javascript"></script>
		<script src="/js/jqvmap/jquery.vmap.sampledata.js" type="text/javascript"></script>
		
		<script src="/js/moment/moment.min.js" type="text/javascript"></script>
		<script src="/js/bootstrap/daterangepicker.js" type="text/javascript"></script>
		
		<script src="/js/colorlib/custom.min.js" type="text/javascript"></script>
		<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js" data-cf-settings="|49" defer=""></script></body>

		<script src="/js/pages/main.js" type="text/javascript"></script>	
</html>