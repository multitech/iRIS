package com.iris.notification;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class NotificationServiceImpl implements NotificationService {

	List<NotificationMessage> notificationMessages = new ArrayList<>();
	List<NotificationTask> notificationTasks = new ArrayList<>();
	
	@Override
	public void addMessage(NotificationMessage message) {
		notificationMessages.add(message);
	}

	@Override
	public List<NotificationMessage> getAllMessages() {
		return notificationMessages;
	}

	@Override
	public int getMessagesCount() {
		return notificationMessages.size();
	}

	@Override
	public String getNotificationMessageList() {
		return NotificationMessageListBuilder.getNotifications(getAllMessages());
	}

	@Override
	public void addTask(NotificationTask message) {
		notificationTasks.add(message);
	}

	@Override
	public List<NotificationTask> getAllTasks() {
		return notificationTasks;
	}

	@Override
	public int getTasksCount() {
		return notificationTasks.size();
	}

	@Override
	public String getNotificationTasksList() {
		return NotificationTaskListBuilder.getTasks(getAllMessages());
	}

}
