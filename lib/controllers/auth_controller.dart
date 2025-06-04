import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobistock/models/auth/login_model.dart';
import 'package:mobistock/services/api_services.dart';
import 'package:mobistock/services/app_config.dart';
import 'package:mobistock/services/route_services.dart';
import 'package:mobistock/utils/shared_preferences_helpers.dart';
import 'package:mobistock/utils/toasts.dart';
import 'package:dio/dio.dart' as dio;

class AuthController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // Separate GlobalKeys for each form
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> resetPasswordFormKey = GlobalKey<FormState>();

  // Text Controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();

  // Observables
  final RxBool isLoading = false.obs;
  final RxBool obscurePassword = true.obs;
  final RxBool obscureConfirmPassword = true.obs;

  // Animation Controller
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  late Animation<Offset> slideAnimation;

  // Track if controller is disposed
  bool _isDisposed = false;

  // API service instance
  final ApiServices _apiService = ApiServices();

  // App config instance
  final AppConfig _config = AppConfig.instance;
  @override
  void onInit() {
    super.onInit();
    _initializeAnimations();
    _config.printConfig();
  }

  @override
  void onReady() {
    super.onReady();
    resetAnimations();
  }

  void _initializeAnimations() {
    animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOutCubic),
    );
  }

  void resetAnimations() {
    if (!_isDisposed &&
        (animationController.isCompleted || animationController.isDismissed)) {
      animationController.reset();
      animationController.forward();
    }
  }

  void goToLogin() {
    Get.offNamed('/login')!.then((_) {
      if (Get.isRegistered<AuthController>() && !_isDisposed) {
        clearControllers();
      }
    });
  }

  void goToSignup() {
    Get.offNamed('/signup')!.then((_) {
      if (Get.isRegistered<AuthController>() && !_isDisposed) {
        clearControllers();
      }
    });
  }

  void goToResetPassword() {
    Get.toNamed('/reset-password');
  }

  void clearControllers() {
    try {
      if (!_isDisposed) {
        emailController.clear();
        passwordController.clear();
        confirmPasswordController.clear();
        nameController.clear();
      }
    } catch (e) {
      print('Controllers already disposed: $e');
    }
  }

  void clearAndNavigateToLogin() {
    clearControllers();
    Get.offNamed('/login');
  }

  void clearAndNavigateToSignup() {
    clearControllers();
    Get.offNamed('/signup');
  }

  // Toggle methods
  void togglePasswordVisibility() {
    obscurePassword.toggle();
  }

  void toggleConfirmPasswordVisibility() {
    obscureConfirmPassword.toggle();
  }

  // Validation methods
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }
    if (value != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
    if (value.length < 2) {
      return 'Name must be at least 2 characters';
    }
    return null;
  }

  // Auth methods
  //login
  Future<void> login(BuildContext context) async {
    if (!loginFormKey.currentState!.validate()) return;

    try {
      isLoading.value = true;

      Map<String, dynamic> loginParameters = {
        'email': emailController.text.trim(),
        'password': passwordController.text.trim(),
      };

      dio.Response? response = await _apiService.requestPostForApi(
        url: _config.loginEndpoint,
        dictParameter: loginParameters,
        authToken: false,
      );

      if (response != null) {
        try {
          LoginResponse loginResponse = LoginResponse.fromJson(response.data);

          if (loginResponse.isSuccess && loginResponse.payload != null) {
            String userToken = loginResponse.payload!.userToken;
            List<int> loginDate = loginResponse.payload!.loginDate;

            await SharedPreferencesHelper.setJwtToken(userToken);
            await SharedPreferencesHelper.setLoginDate(loginDate);
            await SharedPreferencesHelper.setIsLoggedIn(true);

            if (loginParameters.containsKey('email')) {
              await SharedPreferencesHelper.setUsername(
                loginParameters['email'],
              );
            }

            RouteService.toDashboard();

            ToastCustom.successToast(context, 'Login Successfull');
          } else {
            ToastCustom.errorToast(
              context,
              'Error: Please check email and password',
            );
          }
        } catch (parseError) {
          ToastCustom.errorToast(context, 'Invalid response format');
          print('Parse error: $parseError');
        }
      } else {
        ToastCustom.errorToast(
          context,
          'Network error. Please check your connection.',
        );
      }
    } catch (e) {
      ToastCustom.errorToast(context, 'Error Occured :Login failed');
    } finally {
      isLoading.value = false;
    }
  }

  // Logout method
  Future<void> logout() async {
    try {
      // Clear all stored data
      await SharedPreferencesHelper.clearAll();

      // Navigate back to login screen
      RouteService.logout();

      Get.snackbar(
        'Success',
        'Logged out successfully',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        'Logout failed: ${e.toString()}',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  // Check if user is logged in (useful for splash screen or app initialization)
  Future<bool> checkLoginStatus() async {
    try {
      bool isLoggedIn = await SharedPreferencesHelper.getIsLoggedIn();
      String? token = await SharedPreferencesHelper.getJwtToken();

      // Check if both login status and token exist
      return isLoggedIn && token != null && token.isNotEmpty;
    } catch (e) {
      print('Error checking login status: $e');
      return false;
    }
  }

  //sign up
  Future<void> signup() async {
    if (!signupFormKey.currentState!.validate()) return;

    try {
      isLoading.value = true;
      await Future.delayed(const Duration(seconds: 2));
      RouteService.toVerifyEmail(parameters: {"email": emailController.text});
    } catch (e) {
      Get.snackbar('Error', 'Signup failed: ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> resetPassword(BuildContext context) async {
    if (!resetPasswordFormKey.currentState!.validate()) return;

    try {
      isLoading.value = true;
      await Future.delayed(const Duration(seconds: 2));
      ToastCustom.successToast(context, "Password reset email sent!");
      //  Get.snackbar('Success', 'Password reset email sent!');
      // Get.back();
    } catch (e) {
      Get.snackbar('Error', 'Reset failed: ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    _isDisposed = true;

    // Safely dispose controllers
    try {
      animationController.dispose();
      emailController.dispose();
      passwordController.dispose();
      confirmPasswordController.dispose();
      nameController.dispose();
    } catch (e) {
      print('Error disposing controllers: $e');
    }

    super.onClose();
  }
}
