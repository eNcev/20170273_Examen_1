#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int main()
{

    // Se inicializa un arreglo de tamaño 15 y un contador en 0
    int arregloNumeros[15];
    int contador = 0;

    // Se procede a iniciar en 0 todos los valores del arreglo
    while(contador < 15)
    {
        arregloNumeros[contador] = 0;
        contador = contador + 1;
    }

    // Código para llenar de valores aleatorios el arreglo entre 0 y 50
    srand(time(0));
    contador = 0;
    while(contador < 15)
    {
        arregloNumeros[contador] = rand() % 51;

        if (contador == 0){
            printf("El arreglo es: %i", arregloNumeros[contador]);
        }
        else if(contador != 14){
            printf(", %i", arregloNumeros[contador]);
        }
        else{
            printf(", %i\n", arregloNumeros[contador]);
        }
        contador = contador + 1;
    }
}