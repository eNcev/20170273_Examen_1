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

        // Se realiza el código para realizar la primera impresión ordenada como se muestra en el enunciado
        if (contador == 0)
        {
            printf("El arreglo es: %i", arregloNumeros[contador]);
        }
        else if(contador != 14)
        {
            printf(", %i", arregloNumeros[contador]);
        }
        else
        {
            printf(", %i\n", arregloNumeros[contador]);
        }
        contador = contador + 1;
    }

    printf("\n");

    // Código para evaluar cada número generado en el arreglo y filtrarlos según lo indicado en el enunciado

    contador = 0;

    while(contador < 15)
    {
        // Cada vez que se evalue un número se inicializa la variable donde se tendra la suma de los divisores ...
        // ... asi como el índice de un bucle FOR para identificarlos
        int sumaDiv = 0;
        int i;

        // Bucle para calcular la suma de los divisores menores al número a evaluar
        for(i=1;i<=arregloNumeros[contador]-1;i++)
        {
            if(arregloNumeros[contador]%i==0)   
            {
                sumaDiv = sumaDiv + i;
            }
        }

        // Impresión en el terminal del tipo (deficiente, perfecto o abundante), del número evaluado
        if (sumaDiv < arregloNumeros[contador])
        {
            printf("%i - Deficiente\n", arregloNumeros[contador]);
        }
        else if (sumaDiv == arregloNumeros[contador])
        {
            printf("%i - Perfecto\n", arregloNumeros[contador]);
        }
        else if (sumaDiv > arregloNumeros[contador])
        {
            printf("%i - Abundante\n", arregloNumeros[contador]);
        }

        contador = contador + 1;
    }

    printf("\n");

}