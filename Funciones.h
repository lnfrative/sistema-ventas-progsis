#ifndef FUNCIONES_H
#define FUNCIONES_H

#define MAX_PRODUCTOS 50
#define MAX_USUARIOS 10

typedef enum {
    ADMINISTRADOR,
    BODEGUERO,
    VENDEDOR
} TipoUsuario;

typedef struct {
    char nombre[50];
    char categoria[20];
    char marca[20];
    int codigo;
    float precioCompra;
    char bodega[20];
    int cantidad;
} Producto;

typedef struct {
    char nombre[50];
    char password[20];
    TipoUsuario tipo;
} Usuario;

typedef struct {
    char local[20];
    char vendedor[30];
    char fecha[15];
    float precioVenta;
    int cantidadVendida;
} RegistroVenta;

void crearUsuario(Usuario usuarios[], int *numUsuarios);
void actualizarUsuario(Usuario usuarios[], int numUsuarios);
void crearProducto(Producto productos[], int *numProductos);
void actualizarProducto(Producto productos[], int numProductos);
void venderProducto(Producto productos[], int numProductos, RegistroVenta ventas[], int *numVentas);
void mostrarResumen(Producto productos[], int numProductos, RegistroVenta ventas[], int numVentas);
int autenticarUsuario(Usuario usuarios[], int numUsuarios);
void guardarUsuarios(Usuario usuarios[], int numUsuarios);
void guardarProductos(Producto productos[], int numProductos);
void guardarVentas(RegistroVenta ventas[], int numVentas);
void inicializarPrograma(Usuario usuarios[], int *numUsuarios, Producto productos[], int *numProductos, RegistroVenta ventas[], int *numVentas);

#endif
