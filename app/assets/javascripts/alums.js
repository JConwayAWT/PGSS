$(function(){
  initPage();
});
$(window).bind('page:change', function(){
  initPage();
});

function initPage(){
  $("#alumni-table").tablesorter({
    sortList: [[1, 0]],
    widgets: ["zebra","filter"]
  });
}
