/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.gost.dal;
import java.sql.*;
/**
 *
 * @author Jean Terra
 */
public class ModuloConexao {
    //método responsavel por estabelecer a conexao com o banco
    public static Connection conector(){
        Connection conexao = null;
        
        String driver = "com.mysql.cj.jdbc.Driver";
        
        String url="jdbc:mysql://localhost:3306/dbgost?characterEncoding=utf-8";
        String user="dba";
        String password = "dbgost123456";
        
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {
            //System.out.println(e);
            return null;
        }
    }
}
