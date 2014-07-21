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

<title>Railo Test Update</title>

<cfscript>
	objBlog = CreateObject("component", "blog");
	GetRet = objBlog.getEntry(#Url.id#);
</cfscript>

<body>
	<h2>Update a Blog</h2>

	<table>
		<cfform action="actionUpd.cfm" method="post">
			<tr>
				<td>ID:</td>
				<td>
					<cfinput type="text" name="Id" value=#GetRet.id#
						size="35" maxlength="50" readonly="true">
				</td>
			</tr>
			<tr>
				<td>Title:</td>
				<td>
					<cfinput type="text" name="Title" value=#GetRet.title#
						onValidate="valTitle"
						message="Title is required!"
						size="35" maxlength="50">
				</td>
			</tr>
			<tr>
				<td>Description:</td>
				<td>
					<cfinput type="text" name="Description" value=#GetRet.description# size="35" maxlength="50">
				</td>
			</tr>
			<tr>
				<td>Body:</td>
				<td>
					<cfoutput>
						<textarea name="Body" cols=40 rows=4>#GetRet.body#</textarea>
					</cfoutput>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="Submit" value="Submit"></td>
			</tr>
		</cfform>
	</table>
	<br\>
	<a href="admin.cfm">Admin</a>
</body>
</html>
