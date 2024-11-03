class ApiEndpoints {
  static const String BASE_URL = 'http://localhost:4100';

  static const Map<String, Map<String, String>> ENDPOINTS = {
    'USERS': {
      'GET': '/users',
      'REGISTER': '/users',
      'UPDATE': '/users',
      'DELETE': '/users',
      'LOGIN': '/users/session/login',
      'LOGOUT': '/users/session/logout',
    },
  };
}
