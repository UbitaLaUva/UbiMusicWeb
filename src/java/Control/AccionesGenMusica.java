/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Control;

import Modelo.generoMusica;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Pilum
 */
public class AccionesGenMusica {

    public static int registrarGenero(generoMusica e) {
        int estatus = 0;
        try {
            Connection conexion = Conexion.getConnection();
            String sql = "INSERT INTO genero_cancion(tipo_Gnero_Cancion)"
                    + "VALUES(?)";
            PreparedStatement ps = conexion.prepareStatement(sql);
            ps.setString(1, e.getTipo_Genero_Cancion());

            estatus = ps.executeUpdate();
            System.out.println("DATO INSERTADO");
            conexion.close();
        } catch (Exception ed) {
            System.out.println("NO SE HA INSERTADO");
            System.out.println(ed.getMessage());
        }
        return estatus;
    }

    public static int actualizarGenero(generoMusica e) {
        int estatus = 0;
        try {
            Connection conexion = Conexion.getConnection();
            String sql = "UPDATE genero_cancion SET tipo_Gnero_Cancion = ? WHERE (id_Genero_Cancion=?)";
            PreparedStatement ps = conexion.prepareStatement(sql);
            ps.setString(1, e.getTipo_Genero_Cancion());
            ps.setInt(2, e.getGenero_Cancion());
            estatus = ps.executeUpdate();
            System.out.println("DATO ACTUALIZADO");
            conexion.close();
        } catch (Exception ed) {
            System.out.println("DATO NO ACTUALIZADO");
            System.out.println(ed.getMessage());
        }
        return estatus;
    }

    public static int borrarGenero(int id) {
        int estatus = 0;
        try {
            Connection conexion = Conexion.getConnection();
            String sql = "DELETE FROM genero_cancion WHERE (id_Genero_Cancion=?)";
            PreparedStatement ps = conexion.prepareStatement(sql);
            ps.setInt(1, id);
            estatus = ps.executeUpdate();
            System.out.println("DATO BORRADO");
            conexion.close();
        } catch (Exception ed) {
            System.out.println("DATO NO BORRADO");
            System.out.println(ed.getMessage());
        }
        return estatus;
    }

    public static generoMusica buscarGeneroiD(int id) {
        generoMusica genM = new generoMusica();
        try {
            Connection conexion = Conexion.getConnection();
            String sql = "SELECT * FROM genero_cancion WHERE id_Genero_Cancion = ? ";
            PreparedStatement ps = conexion.prepareStatement(sql);
            
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                genM.setGenero_Cancion(rs.getInt(1));
                genM.setTipo_Genero_Cancion(rs.getString(2));
            }
            System.out.println("Genero Encontrado");
            conexion.close();
        } catch (Exception ed) {
            System.out.println("Genero No Encontrado");
            System.out.println(ed.getMessage());
        }
        return genM;
    }
    
     public static List<generoMusica> buscarGeneroAll() {
         List<generoMusica> lista = new ArrayList<generoMusica>();
        
        try {
            Connection conexion = Conexion.getConnection();
            String sql = "SELECT * FROM genero_cancion";
            PreparedStatement ps = conexion.prepareStatement(sql);
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                generoMusica genM = new generoMusica();
                genM.setGenero_Cancion(rs.getInt(1));
                genM.setTipo_Genero_Cancion(rs.getString(2));
                lista.add(genM);
            }
            System.out.println("Generos Encontrados");
            conexion.close();
        } catch (Exception ed) {
            System.out.println("Generos No Encontrado");
            System.out.println(ed.getMessage());
        }
        return lista;
    }
}
