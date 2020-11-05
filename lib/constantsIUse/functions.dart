import 'package:platform_detect/platform_detect.dart';

String os() {
  if (operatingSystem.isLinux)
    return "LINUX";
  else if (operatingSystem.isMac)
    return "MAC";
  else if (operatingSystem.isUnix)
    return "UNIX";
  else
    return "WINDOWS";
}

int timeToWait(List<String> liststrs) {
  int sum = 0;
  for (var liststr in liststrs) sum = sum + liststr.length;
  sum = (sum * 150 / 1000).round();
  return sum + (liststrs.length / 10).round();
}
