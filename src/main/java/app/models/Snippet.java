package app.models;

@javax.persistence.Entity
public class Snippet extends Entity {
	
	private String nome;
	private String codigo;
	private String tags;
	private String linguagem;
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	
	public String getCodigo() {
		return codigo;
	}
	
	public void setTags(String tags) {
		this.tags = tags;
	}
	
	public String getTags() {
		return tags;
	}
	
	public void setLinguagem(String linguagem) {
		this.linguagem = linguagem;
	}
	
	public String getLinguagem() {
		return linguagem;
	}
	
}
