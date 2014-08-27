package com.iris.notification;

import java.io.IOException;
import java.util.List;

import org.rendersnake.HtmlAttributes;
import org.rendersnake.HtmlCanvas;

public class NotificationMessageListBuilder {

	public static String getNotifications(List<NotificationMessage> allMessages) {
		HtmlCanvas canvas = new HtmlCanvas();
		String totalMessageString = "You have "+allMessages.size()+" new Messages";
		try {
			canvas
				.li()
					.p(new HtmlAttributes("class","green"))
						.content(totalMessageString)
				._li();
			
			for (NotificationMessage notificationMessage : allMessages) {
				canvas
					.li()
						.a()
							.span(new HtmlAttributes("class","photo"))
								.img(new HtmlAttributes("src","img/user.png").add("alt", "avatar"))
							._span()
							.span(new HtmlAttributes("class","subject"))
								.content(notificationMessage.getSubject())
							.span(new HtmlAttributes("class","from"))
								.content(notificationMessage.getFrom())
							.span(new HtmlAttributes("class","time"))
								.content(notificationMessage.getTime())
							.span(new HtmlAttributes("class","message"))
								.content(notificationMessage.getMessage())
						._a()
					._li();
			}
			canvas
				.li()
					.a()
						.content("See all Messages")
				._li();
			
		} catch (IOException e) {
			e.printStackTrace();
		}

		return canvas.toHtml();
	}

	
	
}
