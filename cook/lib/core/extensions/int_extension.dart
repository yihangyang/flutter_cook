import 'package:cook/ui/shares/size_fit.dart';

extension IntFit on int {
  double get px {
    return SizeFit.setRx(this.toDouble());
  }
  double get rpx {
    return SizeFit.setRpx(this.toDouble());
  }
}