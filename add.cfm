<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="contentcatApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--- JavaScript used for validation. ---> 
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
<title>Railo Test</title>

<cfobject component="blog" name="objBlog">
<cfinvoke component="#objBlog#" method="getEntries" returnvariable="GetRet">
</cfinvoke>

<body>
	<h2>Add a Blog</h2>

	<table>
		<cfform action="action.cfm" method="post">
			<tr>
				<td>Title:</td>
				<td>
					<cfinput type="text" name="Title" onValidate="valTitle" 
						message="Title is required!"
						size="35" maxlength="50">
				</td>
			</tr>
			<tr>
				<td>Description:</td>
				<td>
					<cfinput type="text" name="Description" size="35" maxlength="50">
				</td>
			</tr>
			<tr>
				<td>Body:</td>
				<td>
					<textarea name="Body" cols=40 rows=4></textarea>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="Submit" value="Submit"></td>
			</tr>
		</cfform>
	</table>
	<br\>
	<a href="list.cfm">List</a>
</body>
</html>
