# Arquitectura de la base de datos

## 1. Descripción

La base de datos `mccolletpractice` fue creada como un proyecto práctico para desarrollar conocimientos de PostgreSQL y administración de bases de datos.

El proyecto simula un sistema sencillo de clientes y pedidos.

## 2. Componentes

La base de datos contiene actualmente dos tablas:

- `clientes`
- `pedidos`

## 3. Relación entre tablas

La relación entre las tablas es de tipo **1:N (uno a muchos)**.

Un cliente puede realizar muchos pedidos, pero cada pedido pertenece a un solo cliente.

```text
clientes
   │
   │ 1
   │
   │
   │ N
pedidos
