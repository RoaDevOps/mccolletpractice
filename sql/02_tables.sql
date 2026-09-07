-- Tabla de clientes
CREATE TABLE clientes (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nombre VARCHAR(80),
    email VARCHAR(100)
);

-- Tabla de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    fecha DATE,
    cliente_id INT,
    total DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
