package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import pojo.Person;

public class PersonAjaxServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		
		List<Person> plist=new ArrayList<Person>();
		
		plist.add(new Person("mary","mary@163.com"));
		plist.add(new Person("jack","jack@163.com"));
		plist.add(new Person("tom","tom@163.com"));
				
		JSONArray json = JSONArray.fromObject(plist);
		System.out.println(json.toString());
		out.print(json.toString());
		
	}
}
