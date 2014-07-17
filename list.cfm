<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="contentcatApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Railo Test</title>

<cfobject component="blog" name="objBlog">
<cfinvoke component="#objBlog#" method="getEntries" returnvariable="GetRet">
</cfinvoke>

<body>
	<h2>Railo Test</h2>
	<cfoutput>
		<cfloop query="GetRet">
			Title: #GetRet.title#
			<br/>
			Description: #GetRet.description#
			<br/>
			Body: #GetRet.body#
			<br/><br/>
		</cfloop>
	</cfoutput>
	<br\>
	<a href="add.cfm">Add Blog</a>
</body>
</html>
