
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_pkg.dart';

final authRepoProvider = Provider<AuthRepository>((ref) {
  final provider=ref.watch(authProvider);
  return AuthRepository(authProvider: provider);
});

class AuthRepository {
  AuthRepository({required this.authProvider});

  final AuthProvider authProvider;

  Future<ApiResponse<UserResponse>?> login(LoginRequest data) async {
     printLog(data.toJson());
    try {
      final res = await authProvider.login(ApiUrl.login, data);
      if (res.body[AppConstants.kSuccess] == true) {
        StorageService.setString(StorageConstants.accessToken,
            res.body[AppConstants.kAuthorisation][AppConstants.kToken]);
        return ApiResponse.success(
            UserResponse.fromMap(res.body[AppConstants.kData]));
      } else {
        return  ApiResponse.error(res.body[AppConstants.kMessage]);
      }
    } on Exception catch (error) {
      printLog('Login error :: $error');
      return ApiResponse.error(error.toString());
    }
  }

  Future<ApiResponse<UserResponse>?> register(RegisterRequest data) async {
    try {
      final res = await authProvider.register(ApiUrl.signupPost, data);
      printLog(res.statusCode);
      printLog(res.body);
      if (res.body[AppConstants.kSuccess]) {
        StorageService.setString(StorageConstants.accessToken,
            res.body[AppConstants.kAuthorisation][AppConstants.kToken]);
        return ApiResponse.success(
            UserResponse.fromMap(res.body[AppConstants.kData]));
      } else {
        return ApiResponse.error(res.body[AppConstants.kMessage]);
      }
    } on Exception catch (error) {
      printLog(error);
      return ApiResponse.error(error.toString());
    }
  }

  Future<ApiResponse<String>?> logoutUser() async {
   try{
     final res = await authProvider.logout(ApiUrl.logoutUserPostUrl);
     if (res.body[AppConstants.kSuccess]==true) {
       return ApiResponse.success(AppConstants.kMessage);
     }else{
       return ApiResponse.error(res.body[AppConstants.kMessage]);
     }
   }on Exception catch(error){
     printLog('post  user logout $error');
   }
   return null;
  }
}
