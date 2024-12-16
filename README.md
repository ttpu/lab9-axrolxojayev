[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Ee57IU5O)
# Demo of ARMv7 assembly

## How to assemble, link and run the program:

* Go to the folder where file resides in the terminal

1. Assemble the code with:

```bash
arm-linux-gnueabihf-as -o hello.o hello.s
```

- Replace `hello.o` and `hello.s` with your own assembly file names

2. Link the object file:

```bash
arm-linux-gnueabihf-ld -o hello hello.o
```

- Replace `hello` and `hello.o` with your own assembly file names

3. Run the Program:

```bash
qemu-arm ./hello
```

-----------------------------------------------
## For debugging, you can use GDB with QEMU

```bash
qemu-arm -g 1234 ./hello
```

* Then in another terminal, type:

```bash
gdb-multiarch ./hello
```

* In GDB:

```bash
(gdb) set architecture arm
(gdb) target remote localhost:1234
```

* Debug your program:

```bash
(gdb) break _start
(gdb) continue
```

