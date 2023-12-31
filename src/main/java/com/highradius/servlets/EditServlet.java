package com.highradius.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String fieldValue = request.getParameter("uniqId");
            int field = Integer.parseInt(fieldValue);
            String newInAmt = request.getParameter("inamt");
            float newInvoiceAmt = Float.parseFloat(newInAmt);
            String newNotes = request.getParameter("nn");

            Connection con = DBConnection.createConnection();
            String query = "UPDATE mytable SET total_open_amount = ?, notes = ? WHERE FIELD1 = ?";

            PreparedStatement st = con.prepareStatement(query);
            st.setFloat(1, newInvoiceAmt);
            st.setString(2, newNotes);
            st.setInt(3, field);

            st.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
