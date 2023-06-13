package absensi_karyawan1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class koneksi {
    private static Connection koneksi;
    
    public static Connection getConnections(){
        if(koneksi == null){
            try{
                String url = "jdbc:mysql://localhost:3306/absensi_karyawan";
                String user = "root";
                String pass = "";
                
                koneksi = DriverManager.getConnection(url, user, pass);
                System.out.println("Connection Succesfully");
                
            }
            catch(SQLException e){
                System.out.println("Failed to connection");
            }
        }
        
        return koneksi;
    
        
    }
    
    public static void main(String args[]){
        getConnections();
    }
    
}
