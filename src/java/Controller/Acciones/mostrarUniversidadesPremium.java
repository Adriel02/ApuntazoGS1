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

public class mostrarUniversidadesPremium extends Controller.Controller{

    @Override
    public void process() {
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/ApuntazoDB", "admin1", "admin");
            PreparedStatement dt = con.prepareStatement("select * from ADMIN1.UNIVERSIDADES");
            ResultSet universidades = dt.executeQuery();
         if (universidades.next()){
                request.setAttribute("universidades", universidades);
            }
            forward("/mostrarUniversidadesPremium.jsp");
        } catch (SQLException | ServletException | IOException ex) {
        }
        

    }
    
}
