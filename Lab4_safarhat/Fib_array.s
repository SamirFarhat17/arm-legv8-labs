	.8byte				//    PRESERVE8

	.global Fib_array	// Export symbol

Fib_array:           // X0 -> first parameter

/************Begin Implementation here**************/



/************End Implementation here****************/

// This returns back to C code
	BR x30
