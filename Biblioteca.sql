CREATE TABLE Libri (
    id_libro INT PRIMARY KEY AUTO_INCREMENT,
    titolo VARCHAR(255) NOT NULL,
    autore VARCHAR(100) NOT NULL,
    isbn VARCHAR(13) UNIQUE,
    genere VARCHAR(50),
    anno_pubblicazione YEAR,
);

CREATE TABLE Utenti (
    id_utente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(20),
    data_iscrizione DATE DEFAULT CURRENT_DATE
);

