package com.iris.notification;

import java.io.IOException;
import java.util.List;

import org.rendersnake.HtmlAttributes;
import org.rendersnake.HtmlCanvas;

public class NotificationTaskListBuilder {

	public static String getTasks(List<NotificationTask> allTasks) {
		HtmlCanvas canvas = new HtmlCanvas();
		String totalMessageString = "You have "+allTasks.size()+" pending Tasks";
		try {
			canvas
				.li()
					.p(new HtmlAttributes("class","green"))
						.content(totalMessageString)
				._li();
			
			for (NotificationTask notificationTask : allTasks) {
				canvas
					.li()
						.a()
						.div(new HtmlAttributes("class","task-info"))
							.div(new HtmlAttributes("class","desc"))
								.content(notificationTask.getDescription())
							.div(new HtmlAttributes("class","percent"))
								.content(notificationTask.getPercentage())
						._div()
						.div(new HtmlAttributes("class","progress progress-striped"))
							.div(new HtmlAttributes("class","progress-bar progress-bar-success").add("role", "progressbar").add("aria-valuenow", notificationTask.getPercentage()).add("aria-valuemin", "0").add("aria-valuemax","100").add("style", "width:40%"))
								.span(new HtmlAttributes("class","sr-only"))
									.content(notificationTask.getStatusMessage())
							._div()
						._div()
						._a()
					._li();	
			}
			canvas
				.li()
					.a()
						.content("See all Tasks")
				._li();
			
		} catch (IOException e) {
			e.printStackTrace();
		}

		return canvas.toHtml();
	}

}
