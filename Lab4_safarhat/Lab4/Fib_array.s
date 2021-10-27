	.8byte				//    PRESERVE8

	.global Fib_array	// Export symbol

Fib_array:           // X0 -> first parameter

/************Begin Implementation here**************/
	// array begins at x0

	add x12, x0, xzr // x12 = addr of arr[0]
	orr x13, xzr, xzr // x13 = 0
	stur x13, [x12, 0] // A[0] = x13

	orr x9, xzr, xzr // i = 0
	orr x2, xzr, #1 // x2 = 1

	add x9, x9, #1 // i++
	lsl x11, x9, #3 // x11 = i*8
	add x12, x0, x11 // x12 = addr of arr[i]
	add x13, xzr, x2 // x13 = 1
	stur x13, [x12, 0] // A[i] = x13

	orr x4, xzr, xzr // A[i-2]
	orr x5, xzr, #1 // A[i-1]
	add x9, x9, #1 // i++

	LOOP:
		sub x10, x9, #32 // x10 = i - 32
		cbz x10, END // if i==32 END

		lsl x11, x9, #3 // x11 = i*8
		add x12, x0, x11 // x12 = addr of arr[i]

		ldur x13, [x12, 0] // x13 = A[i]
		add x13, x4, x5 //x13 = A[i-2] + A[i-1]
		stur x13, [x12, 0] // A[i] = x13

		add x4, x5, xzr // A[i-2] = A[i-1]
		add x5, x13, xzr // A[i-1] = A[i]
		add x9, x9, #1 // i++

		b LOOP

	END:
/************End Implementation here****************/
// This returns back to C code
		BR x30
