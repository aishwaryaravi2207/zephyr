package com.zephyr.project;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class ZephyrServlet
 */
@WebServlet("/ZephyrBaseServlet")
public class ZephyrBaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ZephrDbUtil zephrDbUtil;

	// Tomcat will inject the connection pool object to the dataSource Variable
	@Resource(name = "jdbc/zephyr")
	private DataSource dataSource;

	// overriding the init() method to create an instance of the student db
	@Override
	public void init() throws ServletException {
		zephrDbUtil = new ZephrDbUtil(dataSource);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// get the command parameter from the request
			String com = request.getParameter("command");
			// if the parameter return null set it to list in order to avoid null pointer
			// exception
			if (com == null) {
				com = "HOME";
			}
			// based on the value of the command parameter call the respective function
			switch (com) {
			case "HOME": {
				zephyrHome(request, response);
				break;
			}
			case "CALCULATE": {
				zephyrBill(request, response);
				break;
			}
			default: {
				zephyrHome(request, response);
			}
			}
		} catch (Exception exec) {
			throw new ServletException(exec);
		}

	}

	private void zephyrBill(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<Integer> itemIdList = new ArrayList<>();

		int treatId = Integer.parseInt(request.getParameter("treat"));
		int sizeId = Integer.parseInt(request.getParameter("size"));
		int icecreamId = Integer.parseInt(request.getParameter("icecream"));
		int toppingId = Integer.parseInt(request.getParameter("toppings"));

		itemIdList.add(treatId);
		itemIdList.add(sizeId);
		itemIdList.add(icecreamId);
		itemIdList.add(toppingId);

		if (treatId == 2) {
			int combo = Integer.parseInt(request.getParameter("combo"));
			itemIdList.add(combo);
		} else if (treatId == 1) {
			int syrup = Integer.parseInt(request.getParameter("syrup"));
			itemIdList.add(syrup);
		}

		List<Inventory> inv;
		// call the addStudent method in the StudnetDbUtil class to add the student info
		// to the student db
		inv = zephrDbUtil.getBill(itemIdList);

		request.setAttribute("LIST", inv);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/zephyr_receipt.jsp");
		dispatcher.forward(request, response);

	}

	private void zephyrHome(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/zephyr_home.jsp");
		dispatcher.forward(request, response);
	}

}
