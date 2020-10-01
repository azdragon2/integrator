$(document).ready (function () 
	{
		document.getElementById("logoutButton").addEventListener("click", function () {
			document.getElementById("logoutForm").submit();
		});
		
		queryData();
	}
)

//Pagination
var page = 0;
var pageTotal = 1;
var paginationReady = false;

//Query and Sorting
var query = "";
var sortField = "created";
var sortDirection = "desc";

//Query for Records
function queryData()
{
	$.ajax({
		url: "/users/query?page=" + page + "&query=" + query + "&sortField=" + sortField + "&sortDirection=" + sortDirection+ "&_csrf=" + $('#_csrf').val(),
		type: "GET",
		contentType: "text/plain",
		success: function(data)
		{
			createTable(data);
			page++;
			pageTotal = data.users.totalPages;
			paginationReady = true;
		},
		error: function (req, status, error)
		{
			console.log(status);
			console.log(req.responseJSON.message);
		}
	});
}

//Handle UI
function createTable(data)
{
	for (var user of data.users.content)
	{
		var status = '<span class="green">Active</span>';
		if (user.deleted)
			status = '<span class="red">Deactivated</span>';
		$("table tbody").append("<tr onclick=\"document.location = '/user/" + user.id +  "';\"><td>" + user.firstName + "</td><td>" + user.lastName + 
				"</td><td>" + user.email + "</td><td>" + moment.utc(new Date(user.created)).format('MMM D YYYY, H:mma') + " GMT</td><td>" + status + "</td></tr>");
	}
}

//Handle Scroll
window.onscroll = function(event)
{
	if (window.innerHeight + window.scrollY >= document.body.offsetHeight)
	{
		if (paginationReady && page < pageTotal)
		{
			paginationReady = false;
			queryData();
		}
	}
}