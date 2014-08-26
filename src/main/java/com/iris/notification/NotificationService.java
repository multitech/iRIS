package com.iris.notification;

import java.util.List;

public interface NotificationService {

	public void addMessage(NotificationMessage message);
	public void addTask(NotificationTask message);
	
	public List<NotificationMessage> getAllMessages();
	public List<NotificationTask> getAllTasks();
	
	public int getMessagesCount();
	public int getTasksCount();
	
	public String getNotificationMessageList();
	public String getNotificationTasksList();
}
