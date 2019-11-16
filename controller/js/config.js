$(document).ready(function() {
	$('#search-table-admin').DataTable();
	$('#search-table-user').DataTable();
});

$('#search-table-user').dataTable( {
  "bPaginate":false,
  "bLengthChange":false,
  "bFilter":false,
  "bInfo":false,
  "bAutoWidth":true
});

$('#search-table-admin').dataTable( {
  "bPaginate":false,
  "bLengthChange":false,
  "bFilter":false,
  "bInfo":false,
  "bAutoWidth":true
});
