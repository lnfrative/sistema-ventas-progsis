#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "funciones.h"

void crearUsuario(Usuario usuarios[], int *numUsuarios) {
    if (*numUsuarios < MAX_USUARIOS) {
        printf("Ingrese el tipo de usuario (0 para Administrador, 1 para Bodeguero, 2 para Vendedor): ");
        int tipo;
        scanf("%d", &tipo);
        usuarios[*numUsuarios].tipo = (TipoUsuario)tipo;

        printf("Ingrese el nombre del usuario: ");
        scanf("%s", usuarios[*numUsuarios].nombre);

        printf("Ingrese la contraseña del usuario: ");
        scanf("%s", usuarios[*numUsuarios].password);

        (*numUsuarios)++;
        printf("Usuario creado exitosamente.\n");
    } else {
        printf("No se pueden agregar más usuarios. Límite alcanzado.\n");
    }
}

void actualizarUsuario(Usuario usuarios[], int numUsuarios) {
    char nombre[30];
    printf("Ingrese el nombre del usuario que desea actualizar: ");
    scanf("%s", nombre);

    int encontrado = 0;
    for (int i = 0; i < numUsuarios; i++) {
        if (strcmp(usuarios[i].nombre, nombre) == 0) {
            printf("Ingrese el nuevo tipo de usuario (0 para Administrador, 1 para Bodeguero, 2 para Vendedor): ");
            int tipo;
            scanf("%d", &tipo);
            usuarios[i].tipo = (TipoUsuario)tipo;
            
            printf("Usuario actualizado exitosamente.\n");
            encontrado = 1;
            break;
        }
    }

    if (!encontrado) {
        printf("Usuario no encontrado.\n");
    }
}

void actualizarProducto(Producto productos[], int numProductos) {
    int codigo;
    printf("Ingrese el código del producto que desea actualizar: ");
    scanf("%d", &codigo);

    int encontrado = 0;
    for (int i = 0; i < numProductos; i++) {
        if (productos[i].codigo == codigo) {
            printf("Ingrese el nuevo precio de compra del producto: ");
            scanf("%f", &productos[i].precioCompra);
            printf("Producto actualizado exitosamente.\n");
            encontrado = 1;
            break;
        }
    }

    if (!encontrado) {
        printf("Producto no encontrado.\n");
    }
}

void crearProducto(Producto productos[], int *numProductos) {
    if (*numProductos < MAX_PRODUCTOS) {
        printf("Ingrese el nombre del producto: ");
        scanf("%s", productos[*numProductos].nombre);

        printf("Ingrese la categoría del producto: ");
        scanf("%s", productos[*numProductos].categoria);

        printf("Ingrese la marca del producto: ");
        scanf("%s", productos[*numProductos].marca);

        printf("Ingrese el código del producto: ");
        scanf("%d", &productos[*numProductos].codigo);

        printf("Ingrese el precio de compra del producto: ");
        scanf("%f", &productos[*numProductos].precioCompra);

        printf("Ingrese la bodega del producto: ");
        scanf("%s", productos[*numProductos].bodega);

        productos[*numProductos].cantidad = 0;

        (*numProductos)++;
        printf("Producto creado exitosamente.\n");
    } else {
        printf("No se pueden agregar más productos. Límite alcanzado.\n");
    }
}

void venderProducto(Producto productos[], int numProductos, RegistroVenta ventas[], int *numVentas) {
    int codigo;
    printf("Ingrese el código del producto que desea vender: ");
    scanf("%d", &codigo);

    int encontrado = 0;
    for (int i = 0; i < numProductos; i++) {
        if (productos[i].codigo == codigo && productos[i].cantidad > 0) {
            printf("Ingrese el nombre del local: ");
            scanf("%s", ventas[*numVentas].local);

            printf("Ingrese el nombre del vendedor: ");
            scanf("%s", ventas[*numVentas].vendedor);

            printf("Ingrese la fecha de la venta: ");
            scanf("%s", ventas[*numVentas].fecha);

            printf("Ingrese el precio de venta: ");
            scanf("%f", &ventas[*numVentas].precioVenta);

            printf("Ingrese la cantidad vendida: ");
            scanf("%d", &ventas[*numVentas].cantidadVendida);

            productos[i].cantidad -= ventas[*numVentas].cantidadVendida;

            (*numVentas)++;
            printf("Venta registrada exitosamente.\n");
            encontrado = 1;
            break;
        } else if (productos[i].codigo == codigo && productos[i].cantidad == 0) {
            printf("No hay suficientes existencias para vender este producto.\n");
            encontrado = 1;
            break;
        }
    }

    if (!encontrado) {
        printf("Producto no encontrado.\n");
    }
}

void mostrarResumen(Producto productos[], int numProductos, RegistroVenta ventas[], int numVentas) {
    printf("Resumen de productos:\n");
    for (int i = 0; i < numProductos; i++) {
        printf("Producto %d:\n", i + 1);
        printf("Nombre: %s\n", productos[i].nombre);
        printf("Categoría: %s\n", productos[i].categoria);
        printf("Marca: %s\n", productos[i].marca);
        printf("Código: %d\n", productos[i].codigo);
        printf("Precio de compra: %.2f\n", productos[i].precioCompra);
        printf("Bodega: %s\n", productos[i].bodega);
        printf("Cantidad en bodega: %d\n", productos[i].cantidad);
        printf("\n");
    }

    printf("Resumen de ventas:\n");
    for (int i = 0; i < numVentas; i++) {
        printf("Venta %d:\n", i + 1);
        printf("Local: %s\n", ventas[i].local);
        printf("Vendedor: %s\n", ventas[i].vendedor);
        printf("Fecha: %s\n", ventas[i].fecha);
        printf("Precio de venta: %.2f\n", ventas[i].precioVenta);
        printf("Cantidad vendida: %d\n", ventas[i].cantidadVendida);
        printf("\n");
    }
}

int autenticarUsuario(Usuario usuarios[], int numUsuarios) {
    char nombre[30];
    char password[20];

    printf("------ Iniciar Sesión ------\n");
    printf("Ingrese su nombre de usuario: ");
    scanf("%s", nombre);

    printf("Ingrese su contraseña: ");
    scanf("%s", password);

    for (int i = 0; i < numUsuarios; i++) {
        if (strcmp(usuarios[i].nombre, nombre) == 0 && strcmp(usuarios[i].password, password) == 0) {
            printf("Inicio de sesión exitoso.\n");
            return i;
        }
    }

    printf("Nombre de usuario o contraseña incorrectos. Saliendo del programa.\n");
    return -1;
}

void guardarUsuarios(Usuario usuarios[], int numUsuarios) {
    FILE *archivo;

    archivo = fopen("usuarios.txt", "w");

    if (archivo == NULL) {
        printf("Error al abrir el archivo para escribir.\n");
        return;
    }

    for (int i = 0; i < numUsuarios; i++) {
        fprintf(archivo, "%s\t%s\t%d\n", usuarios[i].nombre, usuarios[i].password, usuarios[i].tipo);
    }

    fclose(archivo);
}

void guardarProductos(Producto productos[], int numProductos) {
    FILE *archivo;

    archivo = fopen("productos.txt", "w");

    if (archivo == NULL) {
        printf("Error al abrir el archivo para escribir.\n");
        return;
    }

    for (int i = 0; i < numProductos; i++) {
        fprintf(archivo, "%s\t%s\t%s\t%d\t%.2f\t%s\t%d\n",
                productos[i].nombre, productos[i].categoria, productos[i].marca,
                productos[i].codigo, productos[i].precioCompra, productos[i].bodega, productos[i].cantidad);
    }

    fclose(archivo);
}

void guardarVentas(RegistroVenta ventas[], int numVentas) {
    FILE *archivo;

    archivo = fopen("ventas.txt", "w");

    if (archivo == NULL) {
        printf("Error al abrir el archivo para escribir.\n");
        return;
    }

    for (int i = 0; i < numVentas; i++) {
        fprintf(archivo, "%s\t%s\t%s\t%.2f\t%d\n",
                ventas[i].local, ventas[i].vendedor, ventas[i].fecha, ventas[i].precioVenta, ventas[i].cantidadVendida);
    }

    fclose(archivo);
}

void inicializarPrograma(Usuario usuarios[], int *numUsuarios, Producto productos[], int *numProductos, RegistroVenta ventas[], int *numVentas) {
    *numUsuarios = 0;
    *numProductos = 0;
    *numVentas = 0;

    FILE *archivoUsuarios = fopen("usuarios.txt", "r");
    if (archivoUsuarios != NULL) {
        while (fscanf(archivoUsuarios, "%s %s %d", usuarios[*numUsuarios].nombre, usuarios[*numUsuarios].password, &usuarios[*numUsuarios].tipo) == 3) {
            (*numUsuarios)++;
            if (*numUsuarios >= MAX_USUARIOS) {
                break;
            }
        }
        fclose(archivoUsuarios);
    }

    FILE *archivoProductos = fopen("productos.txt", "r");
    if (archivoProductos != NULL) {
        while (fscanf(archivoProductos, "%s %s %s %d %f %s %d", productos[*numProductos].nombre, productos[*numProductos].categoria, productos[*numProductos].marca, 
            &productos[*numProductos].codigo, &productos[*numProductos].precioCompra, productos[*numProductos].bodega, &productos[*numProductos].cantidad) == 7) {
            (*numProductos)++;
            if (*numProductos >= MAX_PRODUCTOS) {
                break;
            }
        }
        fclose(archivoProductos);
    }

    FILE *archivoVentas = fopen("ventas.txt", "r");
    if (archivoVentas != NULL) {
        while (fscanf(archivoVentas, "%s %s %s %f %d", ventas[*numVentas].local, ventas[*numVentas].vendedor, ventas[*numVentas].fecha, 
            &ventas[*numVentas].precioVenta, &ventas[*numVentas].cantidadVendida) == 5) {
            (*numVentas)++;
            if (*numVentas >= MAX_PRODUCTOS) {
                break;
            }
        }
        fclose(archivoVentas);
    }
}