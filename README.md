# McCollet Practice — PostgreSQL

## 📌 Sobre el proyecto

**McCollet Practice** es un proyecto práctico de aprendizaje y entrenamiento en **PostgreSQL, Linux y administración de bases de datos**.

Este proyecto nació a partir de una experiencia durante un proceso laboral. Una de las posiciones a las que aspiraba requería conocimientos prácticos de administración de bases de datos y PostgreSQL. Aunque contaba con conocimientos de Linux, infraestructura y desarrollo, la experiencia me permitió identificar que necesitaba fortalecer específicamente mi parte de **DBA y administración de PostgreSQL**.

En lugar de quedarme únicamente con la teoría, decidí convertir esa experiencia en una oportunidad de aprendizaje:

> **Si una oportunidad laboral me mostró una brecha en mis conocimientos, voy a construir un proyecto para cerrarla.**

Por eso este repositorio documenta mi proceso de aprendizaje desde la creación de una base de datos hasta tareas de administración, seguridad, respaldos, troubleshooting y optimización.

---

## 🎯 Objetivos

* Aprender PostgreSQL mediante práctica real.
* Fortalecer conocimientos de administración de bases de datos.
* Practicar SQL y diseño relacional.
* Administrar PostgreSQL desde Linux.
* Aprender a diagnosticar problemas reales.
* Documentar procedimientos y soluciones.
* Crear evidencia práctica para mi portafolio profesional.

---

## 🖥️ Entorno

* **OS:** Ubuntu 24.04
* **Database:** PostgreSQL 16.15
* **CLI:** psql
* **Version Control:** Git
* **Repository:** GitHub

---

## 🗄️ Base de datos

Base de datos utilizada:

```text
mccolletpractice
```

Actualmente el proyecto contiene las siguientes tablas:

```text
clientes
   │
   │ 1:N
   │
   ▼
pedidos
```

### Tabla `clientes`

Contiene información básica de los clientes.

```text
id
nombre
email
```

### Tabla `pedidos`

Contiene los pedidos realizados por los clientes.

```text
id
fecha
cliente_id
total
```

La relación entre ambas tablas está definida mediante:

```text
pedidos.cliente_id
        ↓
clientes.id
```

---

## 🧠 Conceptos practicados

### SQL

* `CREATE DATABASE`
* `CREATE TABLE`
* `INSERT`
* `SELECT`
* `WHERE`
* `JOIN`
* `UPDATE`
* `DELETE`

### Diseño de bases de datos

* Primary Keys
* Foreign Keys
* Relaciones 1:N
* Identificadores únicos
* Restricciones
* Tipos de datos

### PostgreSQL

* `psql`
* Identidad/autoincremento
* Secuencias
* Inspección de tablas
* Administración básica

### Linux

* Administración mediante terminal
* Usuarios y privilegios
* Servicios
* Logs
* Troubleshooting

---

## 🔧 Troubleshooting real

Durante el desarrollo apareció un problema interesante al convertir una columna existente en una columna `IDENTITY`.

Después de configurar el autoincremento, PostgreSQL intentó utilizar un valor de ID que ya existía:

```text
ERROR: duplicate key value violates unique constraint
```

En lugar de eliminar los datos o recrear la tabla, investigué el problema y revisé la secuencia asociada:

```sql
SELECT pg_get_serial_sequence('pedidos', 'id');
```

Posteriormente se corrigió el valor de la secuencia mediante:

```sql
SELECT setval('public.pedidos_id_seq', 2);
```

Esto permitió continuar utilizando la generación automática de IDs.

Este incidente forma parte importante del proyecto porque representa exactamente el tipo de problema que quiero aprender a diagnosticar como administrador de bases de datos.

---

## 📚 Roadmap

El proyecto continuará creciendo progresivamente.

* [x] Crear base de datos
* [x] Crear tablas
* [x] Definir Primary Keys
* [x] Definir Foreign Keys
* [x] Insertar datos
* [x] Configurar columnas Identity
* [x] Resolver problema de secuencia
* [ ] Consultas con `WHERE`
* [ ] `JOIN`
* [ ] `UPDATE`
* [ ] `DELETE`
* [ ] Índices
* [ ] Usuarios y roles
* [ ] Permisos
* [ ] Backup con `pg_dump`
* [ ] Restauración
* [ ] Administración del servicio PostgreSQL
* [ ] Logs y troubleshooting
* [ ] Optimización
* [ ] Documentación de procedimientos DBA

---

## 🚀 Propósito profesional

Este proyecto forma parte de mi preparación para posiciones relacionadas con:

* Linux Administration
* Database Administration
* PostgreSQL
* System Administration
* Cloud Engineering
* DevOps

La intención no es solamente completar ejercicios de SQL, sino **aprender a administrar, diagnosticar y mantener una base de datos en un entorno Linux**.

---

## 💡 Filosofía del proyecto

Una experiencia laboral puede terminar en una oportunidad perdida.

También puede convertirse en el comienzo de una nueva habilidad.

**Este proyecto representa lo segundo.**
