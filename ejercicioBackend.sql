CREATE TABLE socios(
	socio_id SERIAL PRIMARY KEY,
	nombre VARCHAR(300) NOT NULL,
	cedula VARCHAR(15) UNIQUE NOT NULL,
	direccion VARCHAR(150) NOT NULL,
	email VARCHAR(150) UNIQUE NOT NULL,
	telefono VARCHAR(150) NOT NULL
);



CREATE TABLE barcos(
	barco_id SERIAL PRIMARY KEY,
	nombre VARCHAR(300) NOT NULL,
	num_matricula VARCHAR(15) UNIQUE NOT NULL,
	cuota INT NOT NULL,
	num_amarre INT NOT NULL,
	socio_id INT NOT NULL,
	FOREIGN KEY (socio_id) REFERENCES socios(socio_id)
);



CREATE TABLE patrones(
	patron_id SERIAL PRIMARY KEY,
	nombre VARCHAR(300) NOT NULL,
	cedula VARCHAR(15) UNIQUE NOT NULL,
	direccion VARCHAR(150) NOT NULL,
	email VARCHAR(150) UNIQUE NOT NULL,
	telefono VARCHAR(150) NOT NULL
);

CREATE TABLE salidas(
	salida_id SERIAL PRIMARY KEY,
	fecha_salida DATE NOT NULL,
	hora_salida TIME NOT NULL,
	destino VARCHAR(150) NOT NULL,
	barco_id INT NOT NULL,
	patron_id INT NOT NULL,
	FOREIGN KEY (barco_id) REFERENCES barcos(barco_id),
	FOREIGN KEY (patron_id) REFERENCES patrones(patron_id)
);


	
