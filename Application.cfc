component  {
	// Application.cfc component
	// set a name for the REST application:
	this.name = "myRestApplication";
	// Define a REST service for the path &#39;metrics&#39; pointing to the REST application located at 
	// "C:\path-to-location-with-your-rest-components\" (accessible through http://localhost:8888/rest/metrics/)
	// refrerence go to https://docs.lucee.org/guides/Various/rest-services.html
	// http://localhost:8888/rest/metrics/system/os
	// http://localhost:8888/rest/metrics/system/timezone/name
	// http://localhost:8888/rest/metrics/system/timezone/id
	// http://localhost:8888/rest/metrics/system/timezone/name?locale=pt_BR
	// http://localhost:8888/rest/metrics/system/timezone/name?locale=zh_TW
	// http://localhost:8888/rest/metrics/system/timezone/utcHourOffset 
	restInitApplication( 
		dirPath=getDirectoryFromPath(getCurrentTemplatePath()) & 'handlers', 
		serviceMapping="metrics", 
		password="P@ssw0rd"
	);	
}
	