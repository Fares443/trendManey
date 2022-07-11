import 'package:get/get.dart';

validInput(val, min, max, type) {
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return 'اسم المستخدم غير صالح';
    }
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return 'البريد الالكترونى غير صالح ';
    }
  }

  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return 'رقم الهاتف غير صالح';
    }
  }
   if (val.isEmpty) {
    return 'لا يمكن ان يكون فارغ';
  }
  if (val.length < min) {
    return 'لا يكن ان تكون قيمة الارجاع اقل من $min';
  }
   if (val.length > max) {
    return 'لا يكن ان تكون قيمة الارجاع اكبر من $max';
  }
}
