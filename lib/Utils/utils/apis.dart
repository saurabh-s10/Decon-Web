const String baseUrl = 'https://dev.jag.cab/api/';

final Uri loginApi = Uri.parse(baseUrl + 'user-login');
final Uri registerApi = Uri.parse(baseUrl + 'user-registration');
final Uri sendOtpApi = Uri.parse(baseUrl + 'send-otp');
final Uri verifyOtpApi = Uri.parse(baseUrl + 'verify-otp');
