-- Consultas básicas del proyecto (base: PracticaSQL)

-- Comandos de psql (no son SQL, no llevan ;)
-- \d clientes      -> ver columnas de la tabla clientes
-- \d pedidos       -> ver columnas de la tabla pedidos

-- Ver todos los clientes
SELECT * FROM clientes;

-- Ver todos los pedidos
SELECT * FROM pedidos;

-- Ver clientes específicos
SELECT * FROM clientes
WHERE id = 1;

-- Ver pedidos de un cliente específico
SELECT * FROM pedidos
WHERE cliente_id = 1;

-- Ver pedidos ordenados por total (mayor a menor)
SELECT * FROM pedidos
ORDER BY total DESC;

-- Elegir columnas específicas
SELECT nombre, email FROM clientes;

-- Filtrar por texto (comillas simples, respeta mayúsculas)
SELECT * FROM clientes
WHERE nombre = 'Luciana';

-- Filtrar por número (sin comillas): > mayor, < menor
SELECT * FROM pedidos
WHERE total > 200;

SELECT * FROM clientes
WHERE id > 2;

-- AND: deben cumplirse las dos condiciones (fechas van con comillas)
SELECT fecha, total FROM pedidos
WHERE total < 300 AND fecha = '2026-09-07';

-- OR: basta con que se cumpla una
SELECT * FROM pedidos
WHERE total < 200 OR fecha = '2026-09-19';

-- Próximo: JOIN (unir clientes con sus pedidos)
-- SELECT clientes.nombre, pedidos.total
-- FROM clientes
-- JOIN pedidos ON clientes.id = pedidos.cliente_id;