enum Flavor {
  dev,
  staging,
  prod,
}

class FlavorValues {
  final String baseUrl;
  final String auth0Domain;
  final String auth0ClientId;
  final String auth0RedirectUri;

  FlavorValues({
    required this.baseUrl,
    required this.auth0Domain,
    required this.auth0ClientId,
    required this.auth0RedirectUri,
  });
}

class Config {
  late final Flavor _flavor;
  late final FlavorValues flavorValues;

  set flavor(Flavor flavor) {
    _flavor = flavor;
    switch (_flavor) {
      case Flavor.prod:
        flavorValues = FlavorValues(
          baseUrl: "",
          auth0Domain: '',
          auth0ClientId: '',
          auth0RedirectUri: '',
        );
        break;
      case Flavor.staging:
        flavorValues = FlavorValues(
          baseUrl: 'http://archwaytocareers-env.eba-x3bf3pan.us-east-2.elasticbeanstalk.com',
          auth0Domain: 'dev-fg6iks-l.us.auth0.com',
          auth0ClientId: 'UcyZsf869P5dyFYUCyXWx5CVbvktSkI7',
          auth0RedirectUri: 'com.vantagepointlabs.archway-to-careers.dev://login-callback',
        );
        break;
      case Flavor.dev:
        flavorValues = FlavorValues(
          baseUrl: 'http://archwaytocareers-env.eba-x3bf3pan.us-east-2.elasticbeanstalk.com',
          auth0Domain: 'dev-fg6iks-l.us.auth0.com',
          auth0ClientId: 'UcyZsf869P5dyFYUCyXWx5CVbvktSkI7',
          auth0RedirectUri: 'com.vantagepointlabs.archway-to-careers.dev://login-callback',
        );
        break;
    }
  }

  // Singleton
  static Config? _instance;
  static Config get instance {
    _instance ??= Config._internal();
    return _instance ?? Config._internal();
  }

  Config._internal();
}