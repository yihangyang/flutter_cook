import 'package:cook/ui/shares/size_fit.dart';

extension DoubleFit on double {
  double get px {
    return SizeFit.setRx(this);
  }
  double get rpx {
    return SizeFit.setRpx(this);
  }
}