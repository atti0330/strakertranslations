<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="contentcatApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- JavaScript used for validation. -->
<script>
<!--
function valTitle(form, ctrl, value) {
if (value.length == 0)
	{
		return (false);
	}
	else
	{
		return (true);
	}
}
//-->
</script>
<title>Railo Test Detail</title>

<cfscript>
	objBlog = createObject("component", "blog");
	GetRet = objBlog.getEntry(#Url.id#);
</cfscript>
<body>
	<h2>Detail of the Blog</h2>

	<table>
		<cfform action="actionUpd.cfm" method="post">
			<cfoutput>
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
			</cfoutput>
		</cfform>
	</table>
	<br\>
	<a href="list.cfm">List</a>
</body>
</html>
