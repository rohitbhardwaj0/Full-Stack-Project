//package com.highradius.servlets;
//
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import java.util.ArrayList;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.google.gson.Gson;
//import com.google.gson.GsonBuilder;
//
//
//@WebServlet("/api/invoices")
//public class ReadServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        int rowsPerPage = 11;
//
//        try {
//            String pageInURL = request.getParameter("page");
//            int page = Integer.parseInt(pageInURL) * rowsPerPage;
//            Connection con = DBConnection.createConnection();
//            Statement st = con.createStatement();
//            String query = "SELECT Sl_no, CUSTOMER_ORDER_ID, SALES_ORG, ORDER_AMOUNT, REQUESTED_DELIVERY_DATE, ORDER_CURRENCY FROM h2h_oap ORDER BY Sl_no DESC LIMIT "
//                    + ((page - 1) * rowsPerPage + 1) + "," + rowsPerPage;
//            ResultSet rs = st.executeQuery(query);
//
//            ArrayList<InvoiceData> data = new ArrayList<>();
//            while (rs.next()) {
//            	InvoiceData invoice = new InvoiceData();
//                invoice.setSlNo(rs.getString("Sl_no"));
//                invoice.setCustomerOrderId(rs.getString("CUSTOMER_ORDER_ID"));
//                invoice.setSalesOrg(rs.getString("SALES_ORG"));
//                invoice.setOrderAmount(rs.getString("ORDER_AMOUNT"));
//                invoice.setRequestedDeliveryDate(rs.getString("REQUESTED_DELIVERY_DATE"));
//                invoice.setOrderCurrency(rs.getString("ORDER_CURRENCY"));
//                data.add(invoice);
//            }
//            Gson gson = new GsonBuilder().serializeNulls().create();
//            String invoices = gson.toJson(data);
//            response.setContentType("application/json");
//            response.getWriter().write(invoices);
//
//            rs.close();
//            st.close();
//            con.close();
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
//        } catch (Exception e) {
//            e.printStackTrace();
//            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
//        }
//    }
//}
