package cl.cparra.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import cl.cparra.model.entity.Cita;

@Repository
public class CitaDAO {

	public List<Cita> traerTodas(){
		return new ArrayList<>();
	}
}
