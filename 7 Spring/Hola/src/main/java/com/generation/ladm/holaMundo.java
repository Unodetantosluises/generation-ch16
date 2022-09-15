package com.generation.ladm;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

// Se requeren importar estas clases para que usemos un protocolo HTTP
@RestController
@RequestMapping("/")
public class holaMundo {
	/*@GetMapping("/")
	public String hola() {
		return "index";
	}*/
}
