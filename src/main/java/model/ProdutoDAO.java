package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.connection.ConnectionFactory;

public class ProdutoDAO {
    public static List<Produto> getProdutos() {
        Connection con = ConnectionFactory.getConnection();

        PreparedStatement stmt = null;
        ResultSet rs = null;

        List<Produto> produtos = new ArrayList<>();
        try {
            stmt = con.prepareStatement("SELECT * FROM produtos");
            rs = stmt.executeQuery();

            while (rs.next()) {
                Produto produto = new Produto();

                produto.setId(rs.getInt("id"));
                produto.setNome(rs.getString("nome"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setPreco(rs.getDouble("preco"));
                produto.setUrl_imagem(rs.getString("url_imagem"));

                produtos.add(produto);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }

        return produtos;
    }

    public static Produto getProduto(int id) {
        Connection con = ConnectionFactory.getConnection();

        PreparedStatement stmt = null;
        ResultSet rs = null;

        Produto produto = new Produto();

        try {
            stmt = con.prepareStatement("SELECT * FROM produtos WHERE id=" + id);
            rs = stmt.executeQuery();
            while (rs.next()) {
                produto.setId(rs.getInt("id"));
                produto.setNome(rs.getString("nome"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setPreco(rs.getDouble("preco"));
                produto.setUrl_imagem(rs.getString("url_imagem"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        
        return produto;
    }
}
