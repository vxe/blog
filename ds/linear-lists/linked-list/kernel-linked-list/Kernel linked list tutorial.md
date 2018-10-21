# Kernel linked list tutorial
[[Linux Kernel Linked List Explained]](https://isis.poly.edu/kulesh/stuff/src/klist/)

### ~Introduction:~
Linux kernel is mostly written in the C language. Unlike many other languages C does not have a good collection of data structures built into it or supported by a collection of standard libraries. Therefore, you're probably excited to hear that you can borrow a good implementation of a circularly-linked list in C from the Linux kernel source tree. 

The file include_linux_list.h in the source tree implements a type oblivious, easy-to-use, circularly-linked list in the C language. The implementation is efficient and portable-- otherwise it would not have made it into the kernel. Whenever someone needs a list in the Linux kernel they rely on this implementation to strung up any data structure they have. With very little modifications (removing hardware prefetching of list items) we can also use this list in our applications. A usable version of this file is available  [here for download](https://isis.poly.edu/kulesh/stuff/src/klist/list.h) . 

Some of the advantages of using this list are:
1 Type Oblivious:
2 This list can be used to strung up any data structure you have in mind.
3 Portable:
4 Though I haven't tried in every platform it is safe to assume the list implementation is very portable. Otherwise it would not have made it into the kernel source tree.
5 Easy to Use:
6 Since the list is type oblivious same functions are used to initialize, access, and traverse any list of items strung together using this list implementation.
7 Readable:
8 The macros and inlined functions of the list implementation makes the resulting code very elegant and readable.
9 Saves Time:
10 Stops you from reinventing the wheel. Using the list really saves a lot of debugging time and repetitively creating lists for every data structure you need to link.
Linux implementation of the linked list is different from the many  [linked list](http://en.wikipedia.org/wiki/Linked_list)  implementations you might have seen. Usually a linked list **contains** the items that are to be linked. For example:


#software-engineering/data-structures/linear-lists/linked-list/kernel-linked-list
