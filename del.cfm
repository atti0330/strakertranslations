<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="contentcatApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Railo Test Delete</title>

<cfscript>
	objBlog = CreateObject("component", "blog");
	GetRet = objBlog.getEntry(#Url.id#);
</cfscript>

<body>
	<h2>Delete a Blog</h2>

	<table>
		<cfform action="actionDel.cfm" method="post">
		<cfinput type="hidden" name="Id" value=#GetRet.id#>
		<cfinput type="hidden" name="Title" value=#GetRet.title#>
		<cfoutput>
			<tr>
				<td>ID:</td>
				<td>#GetRet.id#</td>
			</tr>
			<tr>
				<td>Title:</td>
				<td>#GetRet.title#</td>
			</tr>
			<tr>
				<td>Description:</td>
				<td>#GetRet.description#</td>
			</tr>
			<tr>
				<td>Body:</td>
				<td>#GetRet.body#</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="Submit" value="Delete"></td>
			</tr>
		</cfoutput>
		</cfform>
	</table>
	<br\>
	<a href="admin.cfm">Admin</a>
</body>
</html>
