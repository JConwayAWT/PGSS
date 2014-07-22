$(document).ready(function(){

  $("#database-loading").text($("#database-loading").text() + ".");
  $("#alumni-table").tablesorter({
    sortList: [[1, 0]],
    widgets: ["zebra","filter"]
  });

  $("#database-loading").toggle();
  $("#alumni-table").toggle();

});