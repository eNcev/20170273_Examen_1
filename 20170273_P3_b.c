#include <stdint.h>

// Código para instanciar los punteros de los registros de configuración
// del PUERTO0 del microcontrolador nRF52840

int main()
{
    // Puntero hacia el registro OUT del PUERTO0
    uint16_t* out_reg = (uint16_t *)0x504;

    // Puntero hacia el registro OUTSET del PUERTO0
    uint16_t* outset_reg = (uint16_t *)0x508;

    // Puntero hacia el registro OUTCLR del PUERTO0
    uint16_t* outclr_reg = (uint16_t *)0x50C;

    // Puntero hacia el registro IN del PUERTO0
    uint16_t* in_reg = (uint16_t *)0x510;

    // Puntero hacia el registro DIR del PUERTO0
    uint16_t* dir_reg = (uint16_t *)0x514;

    // Puntero hacia el registro DIRSET del PUERTO0
    uint16_t* dirset_reg = (uint16_t *)0x518;

    // Puntero hacia el registro DIRCLR del PUERTO0
    uint16_t* dirclr_reg = (uint16_t *)0x51C;

    return 0;
}
