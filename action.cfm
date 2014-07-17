<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="contentcatApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Railo Test</title>
 
<body>
	<!--- Validation --->
	<cfif #Form.Title# is "" >
		Title is required.
		<br\>
		<a href="add.cfm">Go Back</a>
	<cfelse>
		<!--- Insert the new record --->
		<cfobject component="blog" name="objBlog">
		<cfinvoke component="#objBlog#" method="addEntry" returnvariable="InsRet">
			<cfinvokeargument name="title" value=#Form.Title#>
			<cfinvokeargument name="description" value=#Form.Description#>
			<cfinvokeargument name="body" value=#Form.Body#>
		</cfinvoke>

		<h1>Blog Added</h1>
		<cfoutput>
			You have added #Form.Title# to the blog.
		</cfoutput>
		<a href="list.cfm">List</a>
	</cfif>
</body> 
</html>