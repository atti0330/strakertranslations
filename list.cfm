<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="contentcatApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Railo Test</title>

<cfscript>
	objBlog = createObject("component", "blog");
	GetRet = objBlog.getEntries();
</cfscript>

<body>
	<h2>Railo Test List</h2>
	<cfoutput>
		<cfloop query="GetRet">
			Title: <a href="detail.cfm?id=#GetRet.id#">#GetRet.title#</a>
			<br/>
			Description: #GetRet.description#
			<br/><br/>
		</cfloop>
	</cfoutput>
	<br\>
	<a href="add.cfm">Add Blog</a>
</body>
</html>
