


/* Nombre: Marianela Montero Rodríguez Matricula: 22-EIIT-1-038 Seccion: 0541 */



-- Crear la base de datos
CREATE DATABASE MundoDeLibros;

-- Usar la base de datos recién creada
USE MundoDeLibros;



-- Crear la tabla Autores
CREATE TABLE Autores (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Nacionalidad VARCHAR(50)
);

-- Crear la tabla Libros
CREATE TABLE Libros (
    ID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Autor INT,
    AnioPublicacion INT,
    Precio DECIMAL(10, 2),
    FOREIGN KEY (Autor) REFERENCES Autores(ID)
);

-- Crear la tabla Géneros
CREATE TABLE Generos (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50)
);

-- Crear la tabla Editoriales
CREATE TABLE Editoriales (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Pais VARCHAR(50)
);

-- Crear la tabla Ventas
CREATE TABLE Ventas (
    ID INT PRIMARY KEY,
    IDLibro INT,
    FechaVenta DATE,
    Cantidad INT,
    FOREIGN KEY (IDLibro) REFERENCES Libros(ID)
);

-- Insertar datos en la tabla Autores
INSERT INTO Autores (ID, Nombre, Nacionalidad)
VALUES
    (1, 'George Orwell', 'Británico'),
    (2, 'Gabriel García Márquez', 'Colombiano'),
    (3, 'Antoine de Saint-Exupéry', 'Francés'),
    (4, 'J.K. Rowling', 'Británica'),
    (5, 'Miguel de Cervantes', 'Español'),
	(6,  'Dan Brown', 'Estadounidense'),
    (7, 'Jane Austen', ' Británica'),
    (8, 'F.Scott Fitzgerald', 'Estadounidense'),
    (9, 'J.R.R. Tolkien', 'Británico'),
    (10, 'Harper Lee', 'Estadounidense');



-- Insertar datos en la tabla Generos
INSERT INTO Generos (ID, Nombre)
VALUES
    (1, 'Ciencia ficción'),
    (2, 'Realismo mágico'),
    (3, 'Literatura infantil'),
    (4, 'Fantasía'),
    (5, 'Novela clásica'),
	(6, 'Thriller de conspiracion'),
    (7, 'Novela Clasica'),
    (8, 'Novela Contemporanea'),
    (9, 'Novela de Fantasia epica'),
    (10,'Novela Social');


-- Insertar datos en la tabla Editoriales
INSERT INTO Editoriales (ID, Nombre, Pais)
VALUES
    (1, 'Editorial Planeta', 'España'),
    (2, 'Penguin Random House', 'Estados Unidos'),
    (3, 'Editorial Norma', 'Colombia'),
    (4, 'HarperCollins', 'Reino Unido'),
    (5, 'Alfaguara', 'España'),
	(6, 'Doubleday', 'Estados Unidos'),
    (7, 'Thomas Egerton', 'Reino Unido'),
    (8, 'Charles Scribner Sons', 'Estados Unidos'),
    (9, 'George Allen & Unwin', 'Reino Unido'),
    (10, 'J.B. Lippincott & Co.', 'Estados Unidos');


-- Insertar datos en la tabla Libros
INSERT INTO Libros (ID, Titulo, Autor, AnioPublicacion, Precio)
VALUES
    (1, '1984', 1, 1949, 40.50),
    (2, 'Cien años de soledad', 2, 1967, 500),
    (3, 'El Principito', 3, 1943, 9.99),
    (4, 'Harry Potter y la piedra filosofal', 4, 1997, 500),
    (5, 'Don Quijote de la Mancha', 5, 1605, 700),
	(6, 'El Codigo Da Vinci', 6, 2003, 800 ),
    (7, 'Orgullo y Prejuicio', 7, 1813, 300),
    (8, 'El Gran Gatsby', 10, 1925, 500),
    (9, 'El Señor de los Anillos', 9, 1954,  600),
    (10, 'Matar a un Ruiseñor', 8, 1960, 800);


-- Insertar datos en la tabla Ventas
INSERT INTO Ventas (ID, IDLibro, FechaVenta, Cantidad)
VALUES
    (1, 2, '2023-08-10', 1),
    (2, 3, '2023-08-11', 2),
    (3, 1, '2023-08-12', 1),
    (4, 5, '2023-08-13', 3),
    (5, 4, '2023-08-14', 2),
	(6, 7, '2023-08-15', 5),
    (7, 6, '2023-08-17', 7),
    (8, 7, '2023-08-18', 4),
    (9, 8, '2023-08-19', 5),
    (10, 9, '2023-08-20', 3);


SELECT * FROM Autores;
SELECT * FROM Editoriales;
SELECT * FROM Generos;
SELECT * FROM Libros;
SELECT * FROM Ventas;
