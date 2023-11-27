#include <stdio.h>
#include "funciones.h"

int main() {
    Usuario usuarios[MAX_USUARIOS];
    Producto productos[MAX_PRODUCTOS];
    RegistroVenta ventas[MAX_PRODUCTOS];

    int numUsuarios = 0;
    int numProductos = 0;
    int numVentas = 0;

    inicializarPrograma(usuarios, &numUsuarios, productos, &numProductos, ventas, &numVentas);

    int usuarioIndex = autenticarUsuario(usuarios, numUsuarios);

    if (usuarioIndex == -1) {
        return 1;
    }

    int opcion;

    do {
        printf("------ Menú ------\n");

        switch (usuarios[usuarioIndex].tipo) {
            case ADMINISTRADOR:
                printf("1. Crear usuario\n");
                printf("2. Actualizar usuario\n");
                break;
            case BODEGUERO:
                printf("1. Crear producto\n");
                printf("2. Actualizar producto\n");
                break;
            case VENDEDOR:
                printf("1. Vender producto\n");
                break;
            default:
                printf("Opción no válida. Intente de nuevo.\n");
        }

        printf("0. Salir\n");
        printf("Ingrese su opción: ");
        scanf("%d", &opcion);

        switch (usuarios[usuarioIndex].tipo) {
            case ADMINISTRADOR:
                switch (opcion) {
                    case 1:
                        crearUsuario(usuarios, &numUsuarios);
                        break;
                    case 2:
                        actualizarUsuario(usuarios, numUsuarios);
                        break;
                    case 0:
                        printf("Saliendo del programa.\n");
                        break;
                    default:
                        printf("Opción no válida. Intente de nuevo.\n");
                }
                break;
            case BODEGUERO:
                switch (opcion) {
                    case 1:
                        crearProducto(productos, &numProductos);
                        break;
                    case 2:
                        actualizarProducto(productos, numProductos);
                        break;
                    case 0:
                        printf("Saliendo del programa.\n");
                        break;
                    default:
                        printf("Opción no válida. Intente de nuevo.\n");
                }
                break;
            case VENDEDOR:
                switch (opcion) {
                    case 1:
                        venderProducto(productos, numProductos, ventas, &numVentas);
                        break;
                    case 0:
                        printf("Saliendo del programa.\n");
                        break;
                    default:
                        printf("Opción no válida. Intente de nuevo.\n");
                }
                break;
            default:
                printf("Opción no válida. Intente de nuevo.\n");
        }
    } while (opcion != 0);

    guardarProductos(productos, numProductos);
    guardarUsuarios(usuarios, numUsuarios);
    guardarVentas(ventas, numVentas);

    return 0;
}
