-- Consultas básicas del proyecto

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

-- Ver pedidos ordenados por total
SELECT * FROM pedidos
ORDER BY total DESC;
