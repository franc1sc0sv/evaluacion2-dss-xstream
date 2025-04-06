CREATE TABLE IF NOT EXISTS categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO categories (name) VALUES
  ('Noticias'), ('Eventos'), ('Anuncios'), ('Otros');

CREATE TABLE IF NOT EXISTS entries (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  description TEXT NOT NULL,
  category_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_category FOREIGN KEY(category_id)
    REFERENCES categories(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS contact_messages (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL,
  message TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO entries (title, description, category_id) VALUES
  ('Noticia 1', 'Descripción de la noticia 1', 1),
  ('Evento 1', 'Descripción del evento 1', 2),
  ('Anuncio 1', 'Descripción del anuncio 1', 3),
  ('Otro 1', 'Descripción del otro 1', 4);
