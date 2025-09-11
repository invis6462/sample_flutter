enum RouteEnum{
  homeScreen(path: "/home"),
  newScreen(path: "/new");

  final String path;

  const RouteEnum ({
    required this.path,
  });
}