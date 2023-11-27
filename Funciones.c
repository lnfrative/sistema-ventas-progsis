#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "Funciones.h"



struct Usuario crear_usuario(enum TipoUsuario tipo, char nombre[50], char pass[50]) {
  struct Usuario usuario;
  
  strcpy(usuario.nombre, nombre);
  strcpy(usuario.pass, pass);
  
  usuario.tipo = tipo;

  return usuario;
}

void add_usuario(struct Usuario *usuarios, struct Usuario nuevo_usuario) {
  int longitud = sizeof(&usuarios) / sizeof(&usuarios[0]);
  
  for (int i = 0; i < longitud; i++) {
    if (usuarios[i].nombre[0] == '\0') {
      usuarios[i] = nuevo_usuario;
      break;
    }
  }
}

void actualizar_usuario(struct Usuario *usuario, struct Usuario nuevo_usuario) {
  usuario->tipo = nuevo_usuario.tipo;
  strcpy(usuario->nombre, nuevo_usuario.nombre);
  strcpy(usuario->pass, nuevo_usuario.pass);
}

void actualizar_producto(struct Producto *productos, int productIndex) {

  struct Producto producto = productos[productIndex];

  printf("Ingrese el nuevo nombre del producto: ");
  scanf("%s", producto.nombre);

  printf("Ingrese la nueva categoria del producto: ");
  scanf("%s", producto.categoria);

  printf("Ingrese la nueva marca del producto: ");
  scanf("%s", producto.marca);

  printf("Ingrese el nuevo codigo del producto: ");
  scanf("%d", &producto.codigo);

  printf("Ingrese el nuevo precio de compra del producto: ");
  scanf("%f", &producto.precioCompra);

  printf("Ingrese la nueva bodega del producto: ");
  scanf("%s", &producto.bodega);

  printf("Ingrese la nueva cantidad del producto: ");
  scanf("%d", &producto.cantidad);

  productos[productIndex] = producto;

  printf("Producto actualizado exitosamente.\n");
}

struct Producto registrarProducto(char nom[50], char cat[50], char m[50], char bod, int cantidadEdit, int cod, float precio) {
  struct Producto producto_nuevo;
  strcpy(producto_nuevo.nombre, nom);
  strcpy(producto_nuevo.categoria, cat);
  strcpy(producto_nuevo.marca, m);
  producto_nuevo.codigo = cod;
  producto_nuevo.precioCompra = precio;
  producto_nuevo.bodega = bod;
  producto_nuevo.cantidad += cantidadEdit;
  return producto_nuevo;
}

struct Venta crear_venta(struct Producto *producto) {
  struct Venta venta;

  printf("Ingrese el nombre del local: ");
  scanf("%s", venta.local);

  printf("Ingrese el nombre del vendedor: ");
  scanf("%s", venta.vendedor);

  printf("Ingrese la fecha de la venta: ");
  scanf("%s", venta.fecha);

  printf("Ingrese el codigo del producto: ");
  scanf("%d", &producto->codigo);

  printf("Ingrese el precio de venta del producto: ");
  scanf("%f", &venta.precioVenta);

  printf("Ingrese la cantidad de productos vendidos: ");
  scanf("%d", &venta.cantidad);

  producto->cantidad = producto->cantidad - venta.cantidad;

  return venta;
}

void fijar_tipo_usuario(enum TipoUsuario *tipo, int option) {
  if (option == 1) {

    *tipo = Administrador;

  } else if (option == 2) {

    *tipo = Vendedor;

  } else if (option == 3) {

    *tipo = Bodeguero;

  }
}

void mostrar_usuarios(struct Usuario *usuarios) {
  int longitud = 10;
  
  for (int i = 0; i < longitud; i++) {
    printf("%d. %s \n", i, usuarios[i].nombre);
  }
}

struct Producto crear_producto() {
  struct Producto producto;

  printf("Ingrese el nombre del producto: ");
  scanf("%s", producto.nombre);

  printf("Ingrese la categoria del producto: ");
  scanf("%s", producto.categoria);

  printf("Ingrese la marca del producto: ");
  scanf("%s", producto.marca);

  printf("Ingrese el código del producto: ");
  scanf("%d", &producto.codigo);

  printf("Ingrese el precio de compra del producto: ");
  scanf("%f", &producto.precioCompra);

  printf("Ingrese la cantidad del producto: ");
  scanf("%d", &producto.cantidad);

  printf("Ingrese la bodega del producto: ");
  scanf("%s", &producto.bodega);

  return producto;
}

void add_product(struct Producto *productos, struct Producto nuevo_producto) {
  int longitud = 50;

  for (int i = 0; i < longitud; i++) {
    if (productos[i].nombre[0] == '\0') {
      productos[i] = nuevo_producto;
      break;
    }
  }
}

struct Producto* seleccionar_producto(struct Producto *productos) {
  int opcion;
  int longitud = 50;

  for (int i = 0; i < longitud; i++) {
    printf("%d. Producto: %s \n", i,  productos[i].nombre);
  }

  printf("Selecione el producto: ");
  scanf("%d", &opcion);

  return &productos[opcion];
}

struct Venta registrarVenta(char loc[50], char vend[50], char fech[20], int codigoProd, int cant, float precioVen){
  struct Venta nueva_venta;
  strcpy(nueva_venta.local, loc);
  strcpy(nueva_venta.vendedor, vend);
  strcpy(nueva_venta.fecha, fech);
  nueva_venta.codigoProducto = codigoProd;
  nueva_venta.precioVenta = precioVen;
  nueva_venta.cantidad = cant;
  return nueva_venta;
}

void leer_usuarios(struct Usuario *usuarios) {
  FILE *archivo = fopen("usuarios.txt", "r");

  if (archivo == NULL) {
    printf("Error al abrir el archivo de usuarios.\n");
    return;
  }

  fread(usuarios, sizeof(struct Usuario), 10, archivo);
  fclose(archivo);
}

void escribir_usuarios(struct Usuario *usuarios) {
  FILE *archivo = fopen("usuarios.txt", "w");

  if (archivo == NULL) {
    printf("Error al abrir el archivo de usuarios.\n");
    return;
  }

  fwrite(usuarios, sizeof(struct Usuario), 10, archivo);
  fclose(archivo);
}

void leer_productos(struct Producto *productos) {
  FILE *archivo = fopen("productos.txt", "r");

  if (archivo == NULL) {
    printf("Error al abrir el archivo de productos.\n");
    return;
  }

  fread(productos, sizeof(struct Producto), 50, archivo);
  fclose(archivo);
}

void escribir_productos(struct Producto *productos) {
  FILE *archivo = fopen("productos.txt", "w");

  if (archivo == NULL) {
    printf("Error al abrir el archivo de productos.\n");
    return;
  }

  fwrite(productos, sizeof(struct Producto), 50, archivo);
  fclose(archivo);
}

void leer_ventas(struct Venta *ventas) {
  FILE *archivo = fopen("ventas.txt", "r");

  if (archivo == NULL) {
    printf("Error al abrir el archivo de ventas.\n");
    return;
  }

  fread(ventas, sizeof(struct Venta), 100, archivo);
  fclose(archivo);
}

void escribir_ventas(struct Venta *ventas) {
  FILE *archivo = fopen("ventas.txt", "w");

  if (archivo == NULL) {
    printf("Error al abrir el archivo de ventas.\n");
    return;
  }

  fwrite(ventas, sizeof(struct Venta), 100, archivo);
  fclose(archivo);
}