-- Datos de prueba: clientes
INSERT INTO clientes (nombre, email)
VALUES
('Tabata', 'tabmc@gmail.com'),
('Farit', 'farit@email.com'),
('Carlos Ramirez', 'carlos@email.com');

-- Datos de prueba: pedidos
INSERT INTO pedidos (fecha, cliente_id, total)
VALUES
('2026-09-07', 1, 250.00),
('2026-09-07', 2, 180.00),
('2026-09-07', 3, 180.00);
