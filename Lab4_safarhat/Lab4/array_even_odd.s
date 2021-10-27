	.8byte				//    PRESERVE8

	.global array_even_odd  // Export symbol

array_even_odd:             // X0 -> input array_ptr

/************Begin Implementation here**************/
	// 1st array begins at x0
	orr x9, xzr, xzr // i = 0

	LOOP:
		sub x10, x9, #32 // x10 = i - 32
		cbz x10, END // if i==32 END

		lsl x11, x9, #3 // x11 = i*8
		add x12, x0, x11 // x12 = addr of x0[i]
		ldur x13, [x12, 0] // x13 = A[i]

		and x14, x9, #1 // i AND 0x1
		cbz x14, DO_EVEN // if i is even do even, else do odd

		DO_ODD:
			lsr x13, x13, #1 // x13 = A[i] rsl 1
			b LOOP_CLEAN

		DO_EVEN:
			lsl x13, x13, #1 // x13 = A[i] lsl 1

		LOOP_CLEAN:
			stur x13, [x12, 0] // A[i] = x13
			add x9, x9, #1 // i++

			b LOOP

	END:
/************End Implementation here****************/

// This returns back to C code
	BR x30
