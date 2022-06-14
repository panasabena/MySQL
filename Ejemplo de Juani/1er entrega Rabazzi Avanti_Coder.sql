#CREACIÓN BASE DE DATATOS
CREATE SCHEMA AVANTI_CODER;

#USO DE LA BBDD
USE AVANTI_CODER;

#TABLA DE CLIENTES: CONTIENE LA INFORMACIÓN DE LOS CLIENTES DE LA EMPRESA
CREATE TABLE IF NOT EXISTS Clientes(
									ID_Cliente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
                                    Nombre_cli VARCHAR(255) NOT NULL,
                                    CUIT INT NOT NULL,
                                    Domicilio VARCHAR(255),
                                    CP INT NOT NULL);
                                    
#TABLA DE MARCAS DE LOS ARTICULOS
CREATE TABLE IF NOT EXISTS Marcas(
									ID_Marca INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
                                    Nombre_mar VARCHAR(255) NOT NULL);

#TABLA CLASES DE ARTICULOS
CREATE TABLE IF NOT EXISTS Clases(
								ID_Clase INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
								Nombre_cla VARCHAR(255) NOT NULL);
                                    
#TABLA PROVEEDORES 
CREATE TABLE IF NOT EXISTS Proveedores(
									ID_proveedor INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
                                    Nombre_pro VARCHAR(255) NOT NULL,
                                    CUIT INT NOT NULL,
                                    Domicilio VARCHAR(255),
                                    Cod_Postal INT NOT NULL);
                                    
 #TABLA PADRON DE ARTICULOS
 CREATE TABLE IF NOT EXISTS Articulos(
									ID_Articulo INT NOT NULL AUTO_INCREMENT,
                                    Descripcion VARCHAR(255) NOT NULL,
                                    Unidad ENUM("kg","uni"),
                                    Estado ENUM("ACTIVO", "SUSPENDIDO"),
                                    Cod_barra INT,
                                    Id_proveedor INT NOT NULL,
                                    Id_marca INT,
                                    Id_clase INT,
                                    FOREIGN KEY (Id_proveedor) REFERENCES avanti_coder.Proveedores(ID_Proveedor),
                                    FOREIGN KEY (Id_marca) REFERENCES avanti_coder.Marcas(ID_Marca),
                                    FOREIGN KEY (Id_clase) REFERENCES avanti_coder.Clases(ID_Clase))
									PRIMARY KEY CONCAT(ID_Cliente,Tipo_Fiscal,Punto_Venta,Nro_Comprobante,ID_Articulo));
                                    
#TABLA DIMENSION TIEMPO
CREATE TABLE IF NOT EXISTS Dim_Tiempo(
                                    Fecha DATE NOT NULL PRIMARY KEY,
                                    Mes VARCHAR(255) NOT NULL,
                                    Dia_semana VARCHAR(255) NOT NULL,
                                    Trimestre INT NOT NULL);  
                                    
#TABLA CONDICIONES DE VENTA
CREATE TABLE IF NOT EXISTS Condicion_ventas(
                                    ID_Condventa INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
                                    Descripcion VARCHAR(255) NOT NULL);

#TABLA DE HECHO, FACTURAS Y TICKETS GENERADOS
 CREATE TABLE IF NOT EXISTS Fact_tickets(
									ID_Cliente INT NOT NULL,
                                    Tipo_Fiscal ENUM("A","B"),
                                    Punto_Venta INT NOT NULL,
                                    Nro_Comprobante INT NOT NULL,
                                    Fecha_Comprobante DATE NOT NULL,
                                    ID_Articulo INT NOT NULL,
                                    Cantidad FLOAT(12,2) NOT NULL,
                                    Precio_art FLOAT(12,2) NOT NULL,
                                    Bonificacion FLOAT(4,2) NOT NULL,
                                    TOTAL_Articulo FLOAT(12,2) NOT NULL,
                                    TOTAL_IVA_Articulo FLOAT(12,2) NOT NULL,
                                    TOTAL_Ticket FLOAT(12,2) NOT NULL,
                                    TOTAL_IVA_Ticket FLOAT(12,2) NOT NULL,
                                    Condicion_Venta INT NOT NULL,
                                    FOREIGN KEY (ID_Cliente) REFERENCES avanti_coder.Clientes(ID_Cliente),
                                    FOREIGN KEY (Fecha_Comprobante) REFERENCES avanti_coder.Dim_Tiempo(Fecha),
                                    FOREIGN KEY (ID_Articulo) REFERENCES avanti_coder.Articulos(ID_Articulo),
                                    FOREIGN KEY (Condicion_Venta) REFERENCES avanti_coder.Condicion_Ventas(ID_Condventa));
 
 
 
 