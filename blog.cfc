<cfcomponent name="blog">
	<cffunction name="addEntry" returntype="boolean">
		<cfargument name="title" required="no" type="string">
		<cfargument name="description" required="no" type="string">
		<cfargument name="body" required="no" type="string">
		<cftry>
			<cfquery name="qInsCustomer">
				insert into blogs (title, description, body) values (
					'#Arguments.title#',
					'#Arguments.description#',
					'#Arguments.body#'
				)
			</cfquery>
			<cfcatch>
				<cfrethrow>
				<cfreturn false>
			</cfcatch>
		</cftry>
		<cfreturn true>
	</cffunction>

	<cffunction name="getEntries" returntype="query">
		<cftry>
			<cfquery name="qGetEntries">
				select
				title,description,body
				from blogs
				order by id desc
			</cfquery>
			<cfcatch>
				<cfrethrow>
				<cfset qGetEntries = queryNew("")>
			</cfcatch>
		</cftry>
		<cfreturn qGetEntries>
	</cffunction>
</cfcomponent>