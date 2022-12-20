/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Donateur;
import model.Foundraiser;

/**
 *
 * @author Arotiana's
 */
public class DatabaseConnector {

    private String jdbcURL = "jdbc:postgresql://localhost:5432/Foundraising";
    private String jdbcUsername = "postgres";
    private String jdbcPassword = "root";

    
    private static final String SELECT_ALL__DONATEURS = "select * from \"Donateur\"";
    private static final String DELETE__DONATEURS_SQL = "delete  from \"Donateur\" where \"visa\" = ?;";
   

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    // CREATION DONATEURS
      public void insertDonateurs(Donateur don) {
        try {
            
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO \"Donateur\" (visa, nom, email, montant, project) VALUES (?,?,?,?,?)");
            preparedStatement.setLong(1, don.getVisa());
            preparedStatement.setString(2, don.getNom());
            preparedStatement.setString(3, don.getMail());
            preparedStatement.setLong(4, don.getMontant());
            preparedStatement.setString(5, don.getProject());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    };
    
    //insert Founder    INSERT INTO public.admin(
	  public void insertFounder(Foundraiser don) {
        try {
            
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO public.admin( mail, mdp, visa, project) VALUES (?, ?, ?, ?);");
            preparedStatement.setString(1, don.getMail());
            preparedStatement.setString(2, don.getPassword());
            preparedStatement.setLong(3, don.getFounderVisa());
            preparedStatement.setString(4, don.getProject());
           

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    };
    
    
    public void updateDonateurs(Donateur don){
        try {
            Connection connection = getConnection();
            PreparedStatement pstm = connection.prepareStatement("update \"Donateur\" set visa =? , nom='nom', email ='?',  montant=?  where visa =? ");
            pstm.setLong(1, don.getVisa());
            pstm.setString(2, don.getNom());
            pstm.setString(3, don.getMail());
            pstm.setLong(4,don.getMontant());
            pstm.setLong(5, don.getVisa());
            pstm.executeUpdate();
        } catch (SQLException e) {
        }
    }
  //SELECT DONATEUR BY VISA  
    public Donateur SelectDonateurId(int visa){
        Donateur don = null;
            try {
            Connection con= getConnection();
            PreparedStatement pstm = con.prepareStatement("select (visa, nom, email,  montant) from \"Donateur\" where visa =?");
            pstm.setInt(1,visa);
                ResultSet rs = pstm.executeQuery();
                
                while(rs.next()){
                    long nvisa = rs.getLong("visa");
                    String nom = rs.getString("nom");
                    String mail = rs.getString("email");
                    long montant = rs.getLong("montant");
                    String proj = rs.getString("project");
                   don = new Donateur(visa, nom, mail, montant, proj);
                    
                }
        } catch (SQLException e) {
            e.printStackTrace(); 
        }
    return don;
    }
   //SELECT DONATEUR
     public ArrayList<Donateur> SelectAllDonateur(){
        
        ArrayList<Donateur>  listDonateur =  new ArrayList<Donateur>();
            try {
            Connection con= getConnection();
            PreparedStatement pstm = con.prepareStatement(SELECT_ALL__DONATEURS);
            
                ResultSet rs = pstm.executeQuery();
                while(rs.next()){
                    
                    long visa = rs.getLong("visa");
                    String nom = rs.getString("nom");
                    String mail = rs.getString("email");
                    long montant = rs.getLong("montant");
                    String proj = rs.getString("project");
                   listDonateur.add(new Donateur(visa, nom, mail, montant, proj));
           
                }
        } catch (SQLException e) {
            e.printStackTrace();  
        }
    return listDonateur;
    }
    //DELETE DONATEUR
      public boolean deletingDonateur (long visa ){
             
          boolean rowDeleted= false;
          try {
           
              Connection connection = getConnection();
              PreparedStatement pstm = connection.prepareStatement(DELETE__DONATEURS_SQL);
              pstm.setLong(1, visa);
             
              rowDeleted = pstm.executeUpdate()>0;
          } catch (SQLException e) {
              e.printStackTrace();
          }
      return rowDeleted;
      }
      
      
      //COUNT 
       public long CountMoney(){
           long amount= 0;
           try {
               Connection con = getConnection();
               PreparedStatement pstm = con.prepareStatement("select sum('montant')from \"Donateur\" as amount;");
               
                ResultSet rs = pstm.executeQuery();
                 
                while(rs.next()){
                    amount = rs.getInt("sum");
                }
                
               
           } catch (SQLException e) {
           }
       return amount;
       }
    //COUNT PER ID
           public float CountMoneyperID(String project){
           float amount= 0;
           try {
               Connection con = getConnection();
               PreparedStatement pstm = con.prepareStatement("select sum(\"montant\")from \"Donateur\" where \"project\" like ?");
               pstm.setString(1,project);
                ResultSet rs = pstm.executeQuery();
                 
                while(rs.next()){
                    amount = rs.getFloat("sum");
                   
                }
              
               
           } catch (SQLException e) {
               System.err.println(e);
           }
       return amount;
       }
           
      public float Percentage(String project, float targetFound){
        
        float  calc = ((CountMoneyperID(project)/targetFound)*100);
        
         return calc;
      
      }
      
      
      
      public ArrayList<Foundraiser> selectUser(){
          
        ArrayList<Foundraiser>  listuser =  new ArrayList<Foundraiser>();
            try {
            Connection con= getConnection();
            PreparedStatement pstm = con.prepareStatement("SELECT * FROM \"admin\"");
                
                ResultSet rs = pstm.executeQuery();
                while(rs.next()){
                    
                 //   long visa = rs.getLong("visa");
                    String password = rs.getString("mdp");
                    String mail = rs.getString("mail");
//                    long montant = rs.getLong("montant");
//                    String proj = rs.getString("project");
                   listuser.add(new Foundraiser(mail, password));
           
                }
               
        } catch (SQLException e) {
            e.printStackTrace();  
        }
    return listuser;
    }
}
