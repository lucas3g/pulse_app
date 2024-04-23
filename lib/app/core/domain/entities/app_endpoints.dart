enum AppEndpoints {
  license('/licenca'),
  appConfig('/licenca/config'),
  login('/login'),
  weighing('pesagem/pesagem'),
  storage('armazem/armazem');

  final String path;

  const AppEndpoints(this.path);
}
