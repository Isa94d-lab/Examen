# TeachZone

## Descripcion 📌
Este proyecto tiene como objetivo presentar una base de datos encargada de gestionar la tienda "TeachZone" especializada en productos tecnologicos tales como laptops, telefonos, accesorios etc. Buscando una mejor administracion del inventario de los productos al igual que en el seguimiento de ventas.  

<img src="https://github.com/user-attachments/assets/37b420dd-2458-4fa7-afb4-2f3e6b00c904">

## Scripts 📄

**db.sql:** Creacion de la estructura de la base de datos. Contiene todas las tablas utilizadas, junto con sus columnas y detalles de cada atributo, como su tipo de dato y relaciones. Todo esto definido segun el modelo de base de datos diseñado previamente

**insert.sql:** Insecion de datos. Contiene informacion de prueba para cada tabla, la cual sera utilizada al momento de realizar consultas, permitiendo una visualización mas clara y funcional de los datos

**procedure.sql:** Contiene un procedimiento almacenado permitiendo realizar el registro de una venta

**queries.sql:** Contiene consultas para visualizar los datos almacenados en la base de datos segun las diferentes necesidades

## Instalación 📫
1. Prerrequisitos
- Git: Necesitaras Git para clonar el repositorio. Descargalo desde [git](https://git-scm.com/) 
- Un editor de texto como VSCode o cualquier otro de tu preferencia
- PostgresSQL: Es necesario instalar el programa MYSQL. Descargalo desde [PostgresSQL](https://www.postgresql.org/download/) 
  
2. Codigos en la terminal para instalar el proyecto

```sh
git clone https://github.com/Isa94d-lab/Examen.git
```

3. Iniciar sistema de gestion de bases de datos postgres 
(psql -U *usaername* -> *password*)

```sh
psql -U postgres
```

4. Crear base de datos utilizada en el proyecto

```sh
CREATE DATABASE TeachZone;
```

5. Trasladarse a la base de datos

```sh
\c teachzone;
```

6. Ejecutar las tablas que se encuentran en el archivo *db.sql*

7. Ejecutar los inserts ubicados en el archivo *insert.sql*

8. Ejecitar las consultas y procedimientos almacenados ubicados en los archivos *queries.sql* y *procedure.sql*
