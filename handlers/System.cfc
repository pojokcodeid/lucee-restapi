component restpath="/system"  rest="true" {

  // System.cfc
  /**
  * @hint returns server operating system by accessing the path /rest/mappedRESTServiceName/system/os
  */
  remote struct function getOS() httpmethod="GET" restpath="os" {
      return server.os;
  }
  /**
  * @hint returns specific timezone struct values by passing the timezones struct key name
  *  with the path /rest/mappedRESTServiceName/system/timezone/{timezone-struct-keyName}
  *  e.g. /rest/mappedRESTServiceName/system/timezone/name 
  *  or   /rest/mappedRESTServiceName/system/timezone/id
  */
  remote string function getTimeZone(
              required string key restargsource="Path",
              string locale="en_US" restargsource="url")
              httpmethod="GET" restpath="timezone/{key}" {
      setLocale(arguments.locale);
      var tzInfo=getTimeZoneInfo();
      return tzInfo[arguments.key];
  }
}
  