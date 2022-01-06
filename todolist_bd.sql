/*BASE DE DATOS*/
/*TABLA DE USUARIOS*/
CREATE TABLE `todolist_bd`.`usuarios` (
  `idusuarios` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(45) NOT NULL,
  `apellidos` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(90) NOT NULL UNIQUE,
  `clave` VARCHAR(15) NOT NULL,
  `edad` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`idusuarios`));
/*TABLA DE TAREAS*/
CREATE TABLE `todolist_bd`.`tareas` (
  `idtareas` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `contenido` TEXT NOT NULL,
  `imagen` MEDIUMBLOB NOT NULL,
  `idUsuario` INT NOT NULL,
  PRIMARY KEY (`idtareas`));
/*FK idUsuarios*/
ALTER TABLE tareas
ADD FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuarios);
