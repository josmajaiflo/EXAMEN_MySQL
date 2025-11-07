
# examen final db mysql
# autor: joseph manuel jaimes florez

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

Gestión de Productos: Registro completo de pizzas, panzarottis, bebidas, postres y otros productos no elaborados. Se debe tener en cuenta los ingredientes que poseen los productos.
Gestión de Adiciones: Permitir a los clientes agregar adiciones (extra queso, salsas, etc.) a sus productos.
Gestión de Combos: Manejar combos que incluyen múltiples productos a un precio especial.
Gestión de Pedidos: Registro de pedidos para consumir en la pizzería o para recoger, con opción de personalización mediante adiciones.
Gestión del Menú: Definir y actualizar el menú con las opciones disponibles.

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
