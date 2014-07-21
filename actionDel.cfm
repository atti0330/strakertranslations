<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="contentcatApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Railo Test</title>

<body>
	<!-- Delete the record -->
	<cfscript>
		objBlog = createObject("component", "blog");
		DelRet = objBlog.delEntry(
			#Form.Id#
			);
	</cfscript>

	<h1>Blog Deleted</h1>
	<cfoutput>
		You have deleted #Form.Title# from the blog.
	</cfoutput>
	<a href="admin.cfm">Admin</a>
</body>
</html>