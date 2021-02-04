package com.eb.servlet.event;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.eb.dao.EventDAO;
import com.eb.dao.HallDAO;
import com.eb.dao.SeatDAO;
import com.eb.model.Event;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;



@WebServlet("/CreateEvent")
public class CreateEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String name = request.getParameter("eventName");
		String type = request.getParameter("eventType");
		String description = request.getParameter("eventDescription");
		String edate = request.getParameter("eventDate").toString();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate date = LocalDate.parse(edate, formatter);
		LocalTime stime = LocalTime.parse(request.getParameter("startTime"));
		LocalTime etime = LocalTime.parse(request.getParameter("endTime")); 
		double price = Double.parseDouble(request.getParameter("ticketPrice"));
		int hallID = Integer.parseInt(request.getParameter("hallId"));
		String imageURL = request.getParameter("eventImage");
		
		/*Part imagePartFile = request.getPart("eventImage");
		String imageFileName = name + ".jpg";
		InputStream imageFileContent = imagePartFile.getInputStream();
		String imagePath = getServletContext().getInitParameter("image-upload");
		String eventImagePath= imagePath+imageFileName;
		File imageFile = new File(eventImagePath);
		Files.copy(imageFileContent, imageFile.toPath(), StandardCopyOption.REPLACE_EXISTING);*/
		
		
        EventDAO edao = new EventDAO();
        Event event = new Event(name,type,description,date,stime,etime,price,imageURL);
        boolean createEvent =edao.createEvent(event, hallID);
               
        if(createEvent)
		{
        	int createdEventID = edao.getEventByName(name).getEventId();
        	
        	HallDAO hdao = new HallDAO();
        	int numSeats = hdao.getHallByID(hallID).getNoOfSeats();
        	if(numSeats>0)
        	{
        		SeatDAO sdao = new SeatDAO();
        		boolean createSeats = sdao.batchCreateSeats(numSeats, createdEventID);
        		if(createSeats)
        		{
        			System.out.println("Seats created!!");
        		}
        		else 
        		{
        			System.out.println("Failed to create seats!!");
        		}
    			response.sendRedirect(request.getContextPath() + "/ViewEventList?hid="+hallID);	
        	} 	
		}
		else 
		{
			response.sendRedirect(request.getContextPath() + "/ErrorPage.jsp");
		}
	}


}
