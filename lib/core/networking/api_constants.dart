class ApiConstants {
  // static const String apiBaseUrl = dotenv.get('API_BASE_URL_EMULATOR');
  static const String apiBaseUrl = "http://192.168.1.7:8000/";
  static const String apiBaseUrlWS = "ws://192.168.1.7:8000/ws/chat/";

  static String get apiBaseUrlWithoutSlash {
    return apiBaseUrl.endsWith('/')
        ? apiBaseUrl.substring(0, apiBaseUrl.length - 1)
        : apiBaseUrl;
  }
}
