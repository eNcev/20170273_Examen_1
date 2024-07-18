#include <stdint.h>

// Código para instanciar los punteros de los registros de configuración
// del PUERTO0 del microcontrolador nRF52840

int main()
{

    // Dirección base del PUERTO0: 0x50000000

    // Offsets:

        // OUT: 0x504
        // OUTSET: 0x508 
        // OUTCLR: 0x50C
        // IN: 0x510
        // DIR: 0x514
        // DIRSET: 0x518
        // DIRCLR: 0x51C

    // Puntero hacia el registro OUT del PUERTO0
    uint32_t* out_reg = (uint32_t *)0x50000504;

    // Puntero hacia el registro OUTSET del PUERTO0
    uint32_t* outset_reg = (uint32_t *)0x50000508;

    // Puntero hacia el registro OUTCLR del PUERTO0
    uint32_t* outclr_reg = (uint32_t *)0x5000050C;

    // Puntero hacia el registro IN del PUERTO0
    uint32_t* in_reg = (uint32_t *)0x50000510;

    // Puntero hacia el registro DIR del PUERTO0
    uint32_t* dir_reg = (uint32_t *)0x50000514;

    // Puntero hacia el registro DIRSET del PUERTO0
    uint32_t* dirset_reg = (uint32_t *)0x50000518;

    // Puntero hacia el registro DIRCLR del PUERTO0
    uint32_t* dirclr_reg = (uint32_t *)0x5000051C;

    return 0;
}
