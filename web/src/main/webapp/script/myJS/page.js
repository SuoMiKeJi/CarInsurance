function setPage(pageSize, currentNo) {
	var searchForm = document.getElementById("searchForm");
	var pageCurrentNo = document.getElementById("page_currentNo");
	var pagePageSize = document.getElementById("page_pageSize");
	var isSearchForm = typeof (searchForm) == "object" && searchForm != null;
	var isPageCurrentNo = typeof (pageCurrentNo) == "object" && pageCurrentNo != null;
	var isPagePageSize = typeof (pagePageSize) == "object" && pagePageSize != null;
	if (isPageCurrentNo) {
		pageCurrentNo.value = currentNo;
	}
	if (isPagePageSize) {
		pagePageSize.value = pageSize;
	}
	if (isSearchForm) {
		searchForm.submit();
	} else {
		var url = window.location + "";
		var paramters = "page.currentNo=" + currentNo + "&page.pageSize=" + pageSize;
		if (url.indexOf("?") > -1) {
			url += "&" + paramters;
		} else {
			url += "?" + paramters;
		}
		forward(url, "POST");
	}
}
$(window).resize(function() {
	$('.page_center').css({
		position : 'absolute',
		left : ($(window).width() - $('.page_center').outerWidth()) / 2,
		top : ($(window).height() - $('.page_center').outerHeight()) / 2
	});
});

// To initially run the function:
$(window).resize();
