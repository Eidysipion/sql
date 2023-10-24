CREATE TABLE categoria (
	ID_de_categoria INTEGER PRIMARY KEY,
  	Nombre TEXT
);

CREATE TABLE producto (
  ID_de_producto INTEGER PRIMARY KEY,
  Nombre TEXT,
  Marca TEXT,
  Categoria_ID INTEGER,
  Precio_unitario INTEGER 
);

CREATE TABLE sucursal (
  ID_de_sucursal INTEGER PRIMARY KEY NOT NULL,
  Nombre TEXT,
  Direccion TEXT
);

   
CREATE TABLE stock (
  ID_de_stock PRIMARY KEY,
  Sucursal_ID INTEGER NOT NULL,
  Producto_ID INTEGER NOT NULL,
  UNIQUE (Sucursal_ID, Producto_ID)
);

CREATE TABLE cliente (
  ID_de_cliente INTEGER PRIMARY KEY,
  Nombre TEXT,
  Telefono INTEGER
);

CREATE TABLE orden (
  ID_de_orden INTEGER PRIMARY KEY,
  Cliente_ID INTEGER,
  Sucursal_ID INTEGER,
  Fecha INTEGER,
  Total INTEGER
);

CREATE TABLE item (
  ID_de_item INTEGER PRIMARY KEY,
  Orden_ID INTEGER,
  Producto_ID INTEGER ,
  Cantidad INTEGER,
  Monto_venta INTEGER
);
  


    
    
 