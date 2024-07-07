-- Creación de base de datos
DROP DATABASE IF EXISTS shopgames;
CREATE DATABASE shopgames;
-- usar
USE shopgames;

CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

INSERT INTO category (nombre) VALUES 
('PlayStation'),
('Fortnite Pavos'),
('Xbox Cards');


CREATE TABLE games (
    id BINARY(16) PRIMARY KEY DEFAULT(UUID_TO_BIN(UUID())),
    title VARCHAR(200) NOT NULL,
    description VARCHAR(300) NOT NULL,
    category_id INT NOT NULL,
    liked INT,
    download INT,
    price DECIMAL(10, 2) UNSIGNED NOT NULL,
    poster TEXT,
    FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE pavos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    category_id INT,
    price DECIMAL(10, 2) UNSIGNED NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE xbox (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    category_id INT,
    price DECIMAL(10, 2) UNSIGNED NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(id)
);

-- Insertar juegos en la table game
INSERT INTO games(id, title, description, category_id, liked, download, price, poster) VALUES
(UUID_TO_BIN(UUID()), "Assassins Creed Mirage", "Lorem ipsum", 1, 120, 133, 14.55, "https://m.media-amazon.com/images/I/91obuWzA3XL._AC_UF1000,1000_QL80_.jpg"),
(UUID_TO_BIN(UUID()), "Assassins Creed Valhalla", "Lorem ipsum", 1, 142, 155, 16.50, "https://i.ebayimg.com/images/g/4goAAOSwMyB7hnQ/s-l1200.webp"),
(UUID_TO_BIN(UUID()), "Battlefield 2042", "Lorem ipsum", 1, 252, 123, 18.15, "https://i.ebayimg.com/images/g/yokAAOSw8w1YARbm/s-l1200.jpg"),
(UUID_TO_BIN(UUID()), "Call of Duty Warfare II", "Lorem ipsum", 1, 152, 121, 18.25, "https://i.ebayimg.com/images/g/yokAAOSw8w1YARbm/s-l1200.jpg"),
(UUID_TO_BIN(UUID()), "Call of Duty Warfare III", "Lorem ipsum", 2, 252, 234, 12.40, "https://i.ebayimg.com/images/g/yokAAOSw8w1YARbm/s-l1200.jpg");

-- Insertar datos en la tabla pavos
INSERT INTO pavos (titulo, category_id, price) VALUES
('Pavos de Fortnite 1000', 2, 9.99),
('Pavos de Fortnite 2800', 2, 24.99),
('Pavos de Fortnite 5000', 2, 60.99),
('Pavos de Fortnite 13000', 2, 99.99);

-- Insertar datos en la tabla xbox
INSERT INTO xbox (titulo, category_id, price) VALUES
('Tarjeta Xbox Live Gold 1 Mes', 3, 9.99),
('Tarjeta Xbox Live Gold 3 Meses', 3, 24.99),
('Tarjeta Xbox Game Pass 1 Mes', 3, 14.99),
('Tarjeta Xbox Game Pass 3 Meses', 3, 39.99);

SELECT BIN_TO_UUID(id) id , title, description, liked, download, price, poster FROM games;
SELECT * FROM games;
SELECT * FROM pavos;
SELECT * FROM xbox;

SELECT * FROM category;
