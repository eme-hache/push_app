part of 'notifications_bloc.dart';

sealed class NotificationsEvent extends Equatable {
  const NotificationsEvent();

  @override
  List<Object> get props => [];
}

class NotificationStatusChanged extends NotificationsEvent {
  const NotificationStatusChanged(this.status);

  final AuthorizationStatus status;
}

class NotificationReceived extends NotificationsEvent {
  const NotificationReceived(this.pushMessage);

  final PushMessage pushMessage;
}
