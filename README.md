
# examen final db mysql
# autor: joseph manuel jaimes florez
# fecha: 2024-11-25

# Sistema de Gestión de Pizzería
implemente una base de datos MySQL para gestionar productos, combos, pedidos y clientes de una pizzería.

- `estructura.sql`: Contiene la definición completa de la base de datos, incluyendo tablas, claves primarias y foráneas.
- `datos.sql`: Incluye datos de prueba para validar el funcionamiento del sistema.
- `README.md`: Documentación del proyecto y soluciones a las consultas requeridas

## Modelo de Datos

### Entidades Principales

- Cliente: Información de los clientes.
- Producto: Pizzas, panzarottis, bebidas, postres.
- Ingrediente: Ingredientes disponibles.
- Adición: Adiciones que se pueden agregar a productos.
- Combo: Combinaciones de productos a precio especial.
- Pedido: Registros de pedidos realizados.
- Detalle_Pedido: Detalles de productos y combos en cada pedido.
- Detalle_Adición: Adiciones aplicadas a detalles de pedido.

## Entregables

El proyecto se entregará en tres archivos principales, cada uno con un propósito específico:
Archivo SQL de la Estructura: Este archivo contendrá la definición completa de la base de datos, incluyendo la creación de todas las tablas, así como las claves primarias y foráneas necesarias para mantener la integridad referencial. Se asegurará que la estructura sea implementable en un entorno MySQL.
Archivo SQL de los Datos: Este archivo incluirá los scripts para insertar datos de prueba en las tablas creadas previamente. Los datos deberán representar escenarios realistas que permitan validar el funcionamiento del sistema.
README: Este documento proporcionará una descripción general del proyecto, incluyendo instrucciones sobre cómo ejecutar los archivos SQL en un entorno MySQL. Además, incluirá soluciones a las consultas SQL planteadas   en el proyecto, explicando la lógica detrás de cada consulta y cómo se relaciona con la estructura de la base de datos. Esto asegurará que los evaluadores comprendan la funcionalidad del sistema y puedan verificar la correcta implementación de las consultas.
## Consultas SQL
A continuación se presentan las consultas SQL que implemente y probe en la base de datos:
1. 2. 3. 4. 5. 6. 7. 8. 9. 10. 11. 12. 13. 14. 15. 16. 17. 18. 19. 20. 

- Lista de clientes y el número total de pedidos que han realizado
- Productos más vendidos (pizza, panzarottis, bebidas, etc.)
- Total de ingresos generados por cada combo
- Pedidos realizados para recoger vs. comer en la pizzería
- Adiciones más solicitadas en pedidos personalizados
- Cantidad total de productos vendidos por categoría
- Promedio de pizzas pedidas por cliente
- Total de ventas por día de la semana
- Cantidad de panzarottis vendidos con extra queso
- Pedidos que incluyen bebidas como parte de un combo- `order_item_additions`: order_item_id (FK), addition_id (FK) - PK compuesta

## Entregables

El proyecto se entregará en tres archivos principales, cada uno con un propósito específico:
Archivo SQL de la Estructura: Este archivo contendrá la definición completa de la base de datos, incluyendo la creación de todas las tablas, así como las claves primarias y foráneas necesarias para mantener la integridad referencial. Se asegurará que la estructura sea implementable en un entorno MySQL.- `orders`: id (PK), customer_id (FK), order_type, order_date, total
- `order_items`: id (PK), order_id (FK), item_type, item_id, quantity

## Consultas SQL

A continuación se presentan las consultas SQL que se deben implementar y probar en la base de datos:

1. Lista de clientes y el número total de pedidos que han realizado.
2. Productos más vendidos (pizza, panzarottis, bebidas, etc.)  
3. Total de ingresos generados por cada combo  
4. Pedidos realizados para recoger vs. comer en la pizzería  
5. Adiciones más solicitadas en pedidos personalizados  
6. Cantidad total de productos vendidos por categoría  
7. Promedio de pizzas pedidas por cliente  
8. Total de ventas por día de la semana  
9. Cantidad de panzarottis vendidos con extra queso  
10. Pedidos que incluyen bebidas como parte de un combo 
11. Clientes que han realizado más de 3 pedidos  
12. Combos que incluyen bebidas  
13. Productos que no tienen ingredientes registrados  
14. Pedidos realizados en los últimos 7 días  
15. Total de adiciones vendidas por tipo  
16. Clientes que nunca han pedido un combo  
17. Productos con precios por encima del promedio  
18. Combos que contienen más de 3 productos  
19. Detalle de pedidos con sus respectivas adiciones  
20. Ingresos totales generados por cada cliente