<!--- 
  example acess static
  http://localhost:8888/static/index.cfm
--->
<cfoutput>
  <cftry>
  <cfset expdt =  dateAdd("n",30,now())>
  <cfset utcDate = dateDiff('s', dateConvert('utc2Local', createDateTime(1970, 1, 1, 0, 0, 0)), expdt) />
  <cfset jwt = createObject("component", "handlers.cfc.jwt").init(application.jwtkey)>
  <cfset payload = {"ts" = now(), "userid" = "pojokcode", "exp" = utcDate}>
  <cfset token = jwt.encode(payload)>
  token : #token# <br>
  <cfset result = jwt.decode(token)>
  <cfset response["success"] = true>
  <cfset response["result"]= result >
  <cfdump var="#response#">
  <cfcatch type="Any">
      <cfset response["success"] = false>
      <cfset response["message"] = cfcatch.message>
      <cfdump var="#response#">
  </cfcatch>
</cftry>
</cfoutput>