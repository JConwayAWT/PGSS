$(document).ready(function(){
  $("#alumni-table").tablesorter({
    sortList: [[1, 0]],
    widgets: ["zebra","filter"]
  });
});