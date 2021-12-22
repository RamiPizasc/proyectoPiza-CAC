package modelo;

public class Oradores{
    
    private int id;
    private String nombres;
    private String apellidos;
    private String exposicion;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getExposicion() {
        return exposicion;
    }

    public void setExposicion(String exposicion) {
        this.exposicion = exposicion;
    }
    
    public Oradores(int id, String nombres, String apellidos, String exposicion){
        this.id=id;
        this.nombres=nombres;
        this.apellidos=apellidos;
        this.exposicion=exposicion;
    }
}
