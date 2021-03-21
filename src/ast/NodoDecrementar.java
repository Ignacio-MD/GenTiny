package ast;

public class NodoDecrementar extends NodoBase {
	private String id;

	public NodoDecrementar(String identificador) {
		super();
		this.id = identificador;
	}

	public NodoDecrementar() {
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
