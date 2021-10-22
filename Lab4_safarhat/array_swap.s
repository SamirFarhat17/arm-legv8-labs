    .8byte    
    .global array_swap    // Export symbol

array_swap:           // X0 -> first parameter
                      // X1 -> output array_ptr

/************Begin Implementation here**************/



/************End Implementation here****************/

// This returns back to C code
    BR x30

