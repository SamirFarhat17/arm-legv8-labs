    .8byte
    .global array_swap    // Export symbol

array_swap:           // X0 -> first parameter
                      // X1 -> output array_ptr

/************Begin Implementation here**************/
	// 1st array begins at x0
	// 2nd array begins at x1
	orr x9, xzr, xzr // i = 0
	orr x3, xzr, xzr
	add x3, x3, #31 // j = 31

	LOOP:
		sub x10, x9, #32 // x10 = i - 32
		cbz x10, END // if i==32 END

		lsl x11, x9, #3 // x11 = i*8
		add x12, x0, x11 // x12 = addr of x0[i]
		ldur x13, [x12, 0] // x13 = A[i]

		lsl x11, x3, #3 // x11 = j*8
		add x12, x1, x11 // x12 = addr of x1[j]
		stur x13, [x12, 0] // x1[j] = x13

		add x9, x9, #1 // i++
		sub x3, x3, #1 // j--

		b LOOP

	END:
/************End Implementation here****************/

// This returns back to C code
    BR x30
