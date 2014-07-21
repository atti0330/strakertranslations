<cfcomponent name="blog">
	<cffunction name="getEntry" returntype="query">
		<cfargument name="id" required="no" type="string">
		<cftry>
			<cfquery name="qGetEntry">
				select
				id,title,description,body
				from blogs
				where id = '#Arguments.id#'
			</cfquery>
			<cfcatch>
				<cfrethrow>
				<cfset qGetEntry = queryNew("")>
			</cfcatch>
		</cftry>
		<cfreturn qGetEntry>
	</cffunction>

	<cffunction name="getEntries" returntype="query">
		<cftry>
			<cfquery name="qGetEntries">
				select
				id,title,description,body
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

	<cffunction name="getEntriesAsc">
		<cftry>
			<cfquery name="qGetEntriesAsc">
				select
				id,title,description,body
				from blogs
				order by id asc
			</cfquery>
			<cfcatch>
				<cfrethrow>
				<cfset qGetEntriesAsc = queryNew("")>
			</cfcatch>
		</cftry>
		<cfreturn qGetEntriesAsc>
	</cffunction>

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

	<cffunction name="updEntry" returntype="boolean">
		<cfargument name="id" required="no" type="string">
		<cfargument name="title" required="no" type="string">
		<cfargument name="description" required="no" type="string">
		<cfargument name="body" required="no" type="string">
		<cftry>
			<cfquery name="qUpdEntry">
				update blogs
					set
						title = '#title#',
						description = '#description#',
						body = '#body#'
					where
						id = '#Arguments.id#'
			</cfquery>
			<cfcatch>
				<cfrethrow>
				<cfreturn false>
			</cfcatch>
		</cftry>
		<cfreturn true>
	</cffunction>

	<cffunction name="delEntry" returntype="boolean">
		<cfargument name="id" required="no" type="string">
		<cftry>
			<cfquery name="qDelEntry">
				delete from blogs
					where
						id = '#Arguments.id#'
			</cfquery>
			<cfcatch>
				<cfrethrow>
				<cfreturn false>
			</cfcatch>
		</cftry>
		<cfreturn true>
	</cffunction>
</cfcomponent>