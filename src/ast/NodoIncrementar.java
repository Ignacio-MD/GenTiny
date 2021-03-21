package ast;

public class NodoIncrementar extends NodoBase {
	private String id;

	public NodoIncrementar(String identificador) {
		super();
		this.id = identificador;
	}

	public NodoIncrementar() {
		super();
		id="";
	}

	public String getIdentificador() {
		return id;
	}

	public void setExpresion(String identificador) {
		this.id = identificador;
	}

}
