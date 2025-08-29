class TValidators{
  static String? validatEmail(String? value){
    if (value ==null||value.isEmpty){
      return 'Email required';

    }
    final emailRegExp= RegExp(r'^[\W\.]+@([\W-]+\.)+[\W-]{2,4}$');
    if (!emailRegExp.hasMatch(value)){
      return 'invalid email';
    }
    return null;
  }
static String? validatePassword(String ? value ){
    if (value== null||value.isEmpty){
      return 'password required';
    }
    if (value.length<6){
return 'password must be at least 6 characters';
    }
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'password must contains upper case letter';
    }
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'password must contains one number';
    }
    if(!value.contains(RegExp(r'[!@#$%^&*()_+?",.:{}|<>]'))){
      return 'password must contain at least one character';
    }
    return null;
}
  static String?  validatePhoneNumber(String ? value){
    if (value==null||value.isEmpty){
      return'phone number required';
    }
    final phoneRegExp=RegExp (r'^\d{10}$');
    if (!phoneRegExp.hasMatch(value)){
      return 'invalid number format it must have 10 digits';
    }
    return null;
  }

}