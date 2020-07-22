package cl.cparra.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.cparra.model.entity.Cita;
import cl.cparra.model.dao.CitaDAO;

@Service
public class CitaService {
	@Autowired
	CitaDAO citaDao;
	
	public List<Cita> obtenerCitas(){
		return citaDao.traerTodas();
	}
}
