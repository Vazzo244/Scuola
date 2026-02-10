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

CREATE TABLE Prestiti (
    id_prestito INT PRIMARY KEY AUTO_INCREMENT,
    id_utente INT,
    id_libro INT,
    data_inizio DATE NOT NULL,
    data_scadenza DATE NOT NULL,
    data_restituzione DATE,
    FOREIGN KEY (id_utente) REFERENCES Utenti(id_utente),
    FOREIGN KEY (id_libro) REFERENCES Libri(id_libro)
);

CREATE TABLE Login (
    id_login INT PRIMARY KEY AUTO_INCREMENT,
    id_utente INT UNIQUE,               
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,      
    ruolo VARCHAR(20) DEFAULT 'utente',  
    FOREIGN KEY (id_utente) REFERENCES Utenti(id_utente) ON DELETE CASCADE
);