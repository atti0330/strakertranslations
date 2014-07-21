<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="contentcatApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Railo Test Admin</title>

<cfscript>
	objBlog = createObject("component", "blog");
	GetRet = objBlog.getEntriesAsc();
</cfscript>

<body>
	<h2>Railo Test</h2>
	<cfoutput>
		<cfloop query="GetRet">
			<a href="upd.cfm?id=#GetRet.id#">#GetRet.id#</a>
			&nbsp;
			#GetRet.title#
			&nbsp;
			#GetRet.description#
			&nbsp;
			<a href="upd.cfm?id=#GetRet.id#">Update</a>
			&nbsp;
			<a href="del.cfm?id=#GetRet.id#">Delete</a>
			<br/>
		</cfloop>
	</cfoutput>
</body>
</html>
