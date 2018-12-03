/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Acciones;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;

/**
 *
 * @author 43295236
 */
public class mostrarGradosFiltrado extends Controller.Controller{
    
     @Override
    public void process() {
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/ApuntazoDB", "admin1", "admin");
            
            PreparedStatement dt = con.prepareStatement("select * from ADMIN1.GRADO where UNIVERSIDAD = '"+ request.getParameter("grade")+"'");
            ResultSet grado = dt.executeQuery();
         if (grado.next()){
                request.setAttribute("grado", grado);
            }
            forward("/mostrarGradosPremium.jsp");
        } catch (SQLException | ServletException | IOException ex) {
        }
        
    }
}
