$(document).ready (function () 
	{
		if (window.location.href.endsWith("?error")) 
		{ 
			$("#invalidLogin").show();
		}
	}
)