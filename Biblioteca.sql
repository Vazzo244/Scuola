CREATE TABLE Libri (
    id_libro INT PRIMARY KEY AUTO_INCREMENT,
    titolo VARCHAR(255) NOT NULL,
    autore VARCHAR(100) NOT NULL,
    isbn VARCHAR(13) UNIQUE,
    genere VARCHAR(50),
    anno_pubblicazione YEAR,
);