part of 'notifications_bloc.dart';

class NotificationsState extends Equatable {
  const NotificationsState({
    this.status = AuthorizationStatus.notDetermined, 
    this.notifications = const []
  });

  final AuthorizationStatus status;
  final List<PushMessage> notifications;
  
  NotificationsState copyWith({
    AuthorizationStatus? status,
    List<PushMessage>? notifications
  }) => NotificationsState(
    status: status ?? this.status,
    notifications: notifications ?? this.notifications
  );

  @override
  List<Object> get props => [status, notifications];
}
