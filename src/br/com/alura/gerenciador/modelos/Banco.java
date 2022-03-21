package br.com.alura.gerenciador.modelos;

import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;

public class Banco {
	
	private static List<Empresa> lista = new ArrayList<>();
	private static Integer primaryKey = 1;
	
	static {
		Empresa empresa = new Empresa();
		empresa.setId(Banco.primaryKey++);
		empresa.setNome("Amazon.com Inc.");	 
		empresa.setDataAbertura(new GregorianCalendar(1994,07,05).getTime());
		
		Empresa empresa2 = new Empresa();
		empresa2.setId(Banco.primaryKey++);
		empresa2.setNome("Meta Platforms, Inc");
		empresa2.setDataAbertura(new GregorianCalendar(2004,02,04).getTime());
		
		Empresa empresa3 = new Empresa();
		empresa3.setId(primaryKey++);
		empresa3.setNome("Banco Itaú S.A.");
		empresa3.setDataAbertura(new GregorianCalendar(1945,01,02).getTime());
		
		Empresa empresa4 = new Empresa();
		empresa4.setId(primaryKey++);
		empresa4.setNome("Microsoft Corp.");
		empresa4.setDataAbertura(new GregorianCalendar(1975,04,04).getTime());
		
		lista.add(empresa4);
		lista.add(empresa);
		lista.add(empresa2);
		lista.add(empresa3);
	}

	public void adiciona(Empresa empresa) {
		empresa.setId(Banco.primaryKey++);
		Banco.lista.add(empresa);
	}
	
	public void remove(Integer id) {
		Iterator<Empresa> it = lista.iterator();
		while(it.hasNext()) {
			Empresa company = it.next();
			if(company.getId()==id) {
				it.remove();
			}		
		}	
	}
	
	
	public List<Empresa> getEmpresas(){
		return Banco.lista;
	}

	public Empresa buscaEmpresaPeloId(int id){
		Iterator<Empresa> it = Banco.lista.iterator();
		while(it.hasNext()) {
			Empresa empresa = it.next();
			if(empresa.getId()==id) {
				return empresa;
			}
		}
		return null;		
	}


	
}
