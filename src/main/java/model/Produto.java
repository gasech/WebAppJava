package model;

public class Produto {
    private int id;
    private String nome;
    private double preco;
    private int quantidade;
    private String url_imagem;

    public Produto(){
    }
    public Produto(int id, String nome, double preco, int quantidade, String url_imagem) {
        this.id = id;
        this.nome = nome;
        this.preco = preco;
        this.quantidade = quantidade;
        this.url_imagem = url_imagem;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getPreco() {
        return this.preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public int getQuantidade() {
        return this.quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public String getUrl_imagem() {
        return this.url_imagem;
    }

    public void setUrl_imagem(String url_imagem) {
        this.url_imagem = url_imagem;
    }

    @Override
    public String toString() {
        return "{" +
            " id='" + getId() + "'" +
            ", nome='" + getNome() + "'" +
            ", preco='" + getPreco() + "'" +
            ", quantidade='" + getQuantidade() + "'" +
            ", url_imagem='" + getUrl_imagem() + "'" +
            "}";
    }
}
