import 'package:get/get.dart';
import 'package:petguard/model/notification_day_model.dart';
import 'package:petguard/model/notification_model.dart';

class NotificationController extends GetxController {
  List<NotificatioDayModel> listOfNotification = [
    NotificatioDayModel(
      day: "Today",
      listOfNotification: [
        NotificationModel(
          iconPath: 'assets/icon/basket.png',
          notification: 'Your checkout is successfull, product is on tne way',
        ),
        NotificationModel(
          iconPath: 'assets/icon/right.png',
          notification: 'Appointment request accepted',
        ),
      ],
    ),
    NotificatioDayModel(
      day: "25 September",
      listOfNotification: [
        NotificationModel(
          iconPath: 'assets/icon/basket.png',
          notification: 'Your checkout is successfull, product is on tne way',
        ),
        NotificationModel(
          iconPath: 'assets/icon/right.png',
          notification: 'Appointment request accepted',
        ),
        NotificationModel(
          iconPath: 'assets/icon/favorite.png',
          notification: "Vaccinate your pet timely",
        )
      ],
    ),
    NotificatioDayModel(
      day: "15 September",
      listOfNotification: [
        NotificationModel(
          iconPath: 'assets/icon/basket.png',
          notification: 'Your checkout is successfull, product is on tne way',
        ),
        NotificationModel(
          iconPath: 'assets/icon/right.png',
          notification: 'Appointment request accepted',
        ),
        NotificationModel(
          iconPath: 'assets/icon/favorite.png',
          notification: "Vaccinate your pet timely",
        )
      ],
    ),
    NotificatioDayModel(
      day: "21 October",
      listOfNotification: [
        NotificationModel(
          iconPath: 'assets/icon/basket.png',
          notification: 'Your checkout is successfull, product is on tne way',
        ),
        NotificationModel(
          iconPath: 'assets/icon/right.png',
          notification: 'Appointment request accepted',
        ),
        NotificationModel(
          iconPath: 'assets/icon/favorite.png',
          notification: "Vaccinate your pet timely",
        )
      ],
    )
  ];
}
