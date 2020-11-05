import 'package:platform_detect/platform_detect.dart';
String os(){
  if(operatingSystem.isLinux)
    return "LINUX";
  else if(operatingSystem.isMac)
    return "MAC";
  else if(operatingSystem.isUnix)
    return "UNIX";
  else
    return "WINDOWS";
}