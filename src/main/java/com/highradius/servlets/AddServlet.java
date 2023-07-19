package com.highradius.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String slNo = request.getParameter("Sl_no");
            String customerOrderId = request.getParameter("CUSTOMER_ORDER_ID");
            String salesOrg = request.getParameter("SALES_ORG");
            String orderAmount = request.getParameter("ORDER_AMOUNT");
            String requestedDeliveryDate = request.getParameter("REQUESTED_DELIVERY_DATE");
            String orderCurrency = request.getParameter("ORDER_CURRENCY");

            Connection con = DBConnection.createConnection();
            String query = "INSERT INTO h2h_oap (Sl_no, CUSTOMER_ORDER_ID, SALES_ORG, ORDER_AMOUNT, REQUESTED_DELIVERY_DATE, ORDER_CURRENCY) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(query);
            st.setString(1, slNo);
            st.setString(2, customerOrderId);
            st.setString(3, salesOrg);
            st.setString(4, orderAmount);
            st.setString(5, requestedDeliveryDate);
            st.setString(6, orderCurrency);
            st.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
