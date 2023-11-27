#ifndef FUNCIONES_H
#define FUNCIONES_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

enum TipoUsuario {
  Administrador,
  Vendedor,
  Bodeguero
};

struct Usuario {
  enum TipoUsuario tipo;
  char nombre[50];
  char pass[50];
};

struct Producto {
  char nombre[50];
  char categoria[50];
  char marca[50];
  int codigo;
  float precioCompra;
  char bodega;
  int cantidad;
};

struct Venta {
  char local[50];
  char vendedor[50];
  char fecha[20];
  int codigoProducto;
  float precioVenta;
  int cantidad;
};

struct Usuario crear_usuario(enum TipoUsuario tipo, char nombre[50], char pass[50]);
void add_usuario(struct Usuario *usuarios, struct Usuario nuevo_usuario);
void actualizar_usuario(struct Usuario *usuario, struct Usuario nuevo_usuario);
void actualizar_producto(struct Producto *productos, int productIndex);
struct Producto registrarProducto(char nom[50], char cat[50], char m[50], char bod, int cantidadEdit, int cod, float precio);
struct Venta crear_venta(struct Producto *producto);
void fijar_tipo_usuario(enum TipoUsuario *tipo, int option);
void mostrar_usuarios(struct Usuario *usuarios);
void add_product(struct Producto *productos, struct Producto nuevo_producto);
struct Producto* seleccionar_producto(struct Producto *productos);
struct Producto crear_producto();
struct Venta registrarVenta(char loc[50], char vend[50], char fech[20], int codigoProd, int cant, float precioVen);
void leer_usuarios(struct Usuario *usuarios);
void escribir_usuarios(struct Usuario *usuarios);
void leer_productos(struct Producto *productos);
void escribir_productos(struct Producto *productos);
void leer_ventas(struct Venta *ventas);
void escribir_ventas(struct Venta *ventas);

#endif