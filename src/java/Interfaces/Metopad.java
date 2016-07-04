
package Interfaces;

import java.util.List;


public interface Metopad <Datos> {
    
    public boolean create(Datos d);
    public boolean delete(Object key);
    public boolean update(Datos d);
    public int verificador(Datos d);
    public Datos read(Object key);
    public List<Datos> readall();
    
}
