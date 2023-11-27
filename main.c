#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "Funciones.h"

struct Producto productos[50];
struct Venta ventas[100];
struct Usuario usuarios[10];

int numProductos = 0;
int numUsuarios = 0;
int numVentas = 0;

int main(void) {
  int opcionTipoUsuario;
  enum TipoUsuario tipoUsuario;

  while (opcionTipoUsuario != 4) {
    printf("\nTipos de usuario:\n");
    printf("1 Administrador\n");
    printf("2 Bodeguero\n");
    printf("3 Vendedor\n");
    printf("4 Salir\n");
    printf("\nSeleccione el tipo de usuario: ");
    scanf("%d",&opcionTipoUsuario);

    fijar_tipo_usuario(&tipoUsuario,  opcionTipoUsuario);
    
    if(opcionTipoUsuario == 1) {
      int optionAdministrador;

      printf("Que desea realizar?\n");
      printf("1.Crear usuario\n");
      printf("2.Actualizar usuario\n");
      printf("\nSeleccione una opcion: ");
      scanf("%d",&optionAdministrador);

      struct Usuario usuario;

      usuario.tipo = tipoUsuario;

      if (optionAdministrador == 1) {

        printf("\nIngrese nombre: ");
        scanf("%s", usuario.nombre);
        printf("\nIngrese contraseña: ");
        scanf("%s", usuario.pass);

        add_usuario(usuarios, usuario);

        printf("\nUsuario creado exitosamente.\n");
      }

      if (optionAdministrador == 2) {
        int indiceUsuarioAModificar;

        mostrar_usuarios(usuarios);

        printf("\nIngrese el indice del usuario a modificar: ");
        scanf("%d", &indiceUsuarioAModificar);

        struct Usuario nuevo_usuario;

        printf("\nIngrese nombre: ");
        scanf("%s", nuevo_usuario.nombre);
        printf("\nIngrese contraseña: ");
        scanf("%s", nuevo_usuario.pass);

        usuarios[indiceUsuarioAModificar] = nuevo_usuario;
      }
    }

    if (opcionTipoUsuario == 2) {
      int optionBodeguero;

      printf("Que desea realizar?\n");
      printf("1.Crear producto\n");
      printf("2.Actualizar producto\n");
      printf("\nSeleccione una opcion: ");
      scanf("%d",&optionBodeguero);

      if (optionBodeguero == 1) {
        add_product(productos, crear_producto());
      }

      if (optionBodeguero == 2) {
        actualizar_producto(productos, seleccionar_producto(productos));
    }

    }

    if(opcionTipoUsuario == 3){
      char loc[50], vend[50], fech[20];
      int codigoProd = 0, cant = 0;
      float precioVen = 0;
      if(numVentas<100){
        printf("Ingrese el local de venta: ");
        scanf("%s", loc);
        printf("Ingrese el vendedor: ");
        scanf("%s", vend);
        printf("Ingrese la fecha de venta: ");
        scanf("%s", fech);

        printf("Ingrese el código del producto vendido: ");
        scanf("%d", &codigoProd);
        
        printf("Ingrese el precio de venta del producto: ");
        scanf("%f", &precioVen);
        printf("Ingrese la cantidad vendida del producto: ");
        scanf("%d", &cant);
        ventas[numVentas] = registrarVenta(loc, vend, fech, codigoProd, cant, precioVen);
        productos[codigoProd].cantidad -= ventas[numVentas].cantidad;
        numVentas++;
        printf("Venta registrada exitosamente.\n");
        escribir_ventas(ventas);
        escribir_productos(productos);
        
      } else {

         printf("No se pueden registrar más ventas, límite alcanzado.\n");
      }
    }
  }

  return 0;
}