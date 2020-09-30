<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <!-- Template provided by HTML5 UP (https://html5up.net/stellar) -->
        
        <!-- css -->
        <link rel="stylesheet" href="/css/stellar/main.css">
        <link rel="stylesheet" href="/css/pages/login.css">

    </head>

	<body class="is-preload">
	
		<div id="wrapper">

			<!-- Header -->
			<header id="header" class="alt">
				<span class="logo"><img src="/images/logo.png" alt="" /></span>
				<h1>integrator</h1>
				<p>Transform API Queries to whatever you need</p>
			</header>

			<!-- Main -->
			<div id="main">

					<section id="intro" class="main">
						<form role="form" action="/login" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							<div>
							    <label for="email">Username</label>
							    <input type="text" name="username" id="email" required autofocus/>
							</div>
							<br />
							<div>
							    <label for="password">Password</label>
							    <input type="password" name="password" id="password" required/>
							</div>
							<br />
							<p id="invalidLogin">Invalid username/password. Please try again.<br /></p>
							<button type="submit">Sign in</button>
						</form>
					</section>
			</div>

			<!-- Footer -->
			<footer id="footer">
				<p class="copyright">&copy; Aaron Beauchamp.</p>
			</footer>

		</div>

        <!-- js -->
		<script type="text/javascript" src="/js/jquery/jquery.min.js"></script>
		<script type="text/javascript" src="/js/jquery/jquery.scrollx.min.js"></script>
		<script type="text/javascript" src="/js/jquery/jquery.scrolly.min.js"></script>
		<script type="text/javascript" src="/js/stellar/browser.min.js"></script>
		<script type="text/javascript" src="/js/stellar/breakpoints.min.js"></script>
		<script type="text/javascript" src="/js/stellar/util.js"></script>
		<script type="text/javascript" src="/js/stellar/main.js"></script>
        <script type="text/javascript" src="/js/pages/login.js">
			
	</body>

</html>