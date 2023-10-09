-- Insertar datos en la tabla Categorias
INSERT INTO Categorias (id, nombre) VALUES 
(1, 'Electrónicos'),
(2, 'Ropa'),
(3, 'Hogar'),
(4, 'Deportes'),
(5, 'Juguetes');

-- Insertar datos en la tabla Productos
INSERT INTO Productos (id, nombre, marca, categoria_id, precio_unitario) VALUES 
(1, 'Televisor', 'Sony', 1, 1000),
(2, 'Laptop', 'HP', 1, 800),
(3, 'Camisa', 'Zara', 2, 50),
-- ... (continuar con los demás productos)

-- Insertar datos en la tabla Sucursales
INSERT INTO Sucursales (id, nombre, direccion) VALUES 
(1, 'Sucursal A', 'Calle 1'),
(2, 'Sucursal B', 'Calle 2'),
(3, 'Sucursal C', 'Calle 3');

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (id, nombre, telefono) VALUES 
(1, 'Juan', '1234567890'),
(2, 'María', '0987654321'),
(3, 'Pedro', '5555555555');

-- Insertar datos en la tabla Órdenes
INSERT INTO Ordenes (id, cliente_id, sucursal_id, fecha, total) VALUES 
(1, 1, 3, '2023-06-12', 575),
-- ... (continuar con las demás órdenes)

-- Insertar datos en la tabla Stocks
INSERT INTO Stocks (Id, Sucursal_Id, Producto_Id, Cantidad) VALUES 
(1, 1, 1, 65),
-- ... (continuar con los demás stocks)

-- Insertar datos en la tabla Items
INSERT INTO Items (id, orden_id, producto_id, cantidad, monto_venta) VALUES 
(1, 1, 9, 7, 175),
-- ... (continuar con los demás items)

-- Consulta para obtener el precio mínimo, máximo y promedio de todos los productos
SELECT 
    MIN(precio_unitario) AS Precio_Minimo, 
    MAX(precio_unitario) AS Precio_Maximo, 
    AVG(precio_unitario) AS Precio_Promedio 
FROM Productos;

-- Consulta para calcular la cantidad total de productos en stock por sucursal
SELECT 
    Sucursal_Id, 
    SUM(Cantidad) AS Total_Productos 
FROM Stocks 
GROUP BY Sucursal_Id;

-- Consulta para obtener el total de ventas por cliente
SELECT 
    cliente_id, 
    SUM(total) AS Total_Ventas 
FROM Ordenes 
GROUP BY cliente_id;