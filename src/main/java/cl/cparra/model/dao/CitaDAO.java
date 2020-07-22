package cl.cparra.model.dao;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import cl.cparra.model.entity.Cita;

@Repository
public class CitaDAO {

	@Value("${servicio.url}")
	private String urlServicio;
	
	@Autowired
	private RestTemplate libreriaRestClient;
	
	@Bean
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}
	
	public List<Cita> traerTodos(){
		
	Cita[] citasArray = libreriaRestClient.getForObject(urlServicio, Cita[].class);	
		
		return Arrays.asList(citasArray);
	}
}
