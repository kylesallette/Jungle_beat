# Jungle Beat

In this project I'm going to do some silly things with sound. Specifically, I'm going to make a very basic drum machine program.

This project explores the concept behind linked lists.

### Drum Machine 101 -- Making Sounds

Go into your Terminal and try this:

```
$ say -r 500 -v Boing "ding, dah, oom, oom, ding, oom, oom, oom, ding, dah, oom, oom, ding, dah, oom, oom, ding, dah, oom, oom "
```

Yeah. That's what we're looking for. Now try it from Ruby:

```
$ pry
> `say -r 500 -v Boing "ding, dah, oom, oom"`
```

Note that the backticks allow you to run terminal commands from within Ruby.

### Linked Lists

Linked Lists are one of the most fundamental Computer Science data structures. A Linked List models a collection of data as a series of "nodes" which link to one another in a chain.

In a singly-linked list (the type we will be building) you have a __head__, which is a node representing the "start" of the list, and subsequent nodes which make up the remainder of the list.

The __list__ itself can hold a reference to one thing -- the head node.

Each node can hold a single element of data and a link to the next node in the list.

The last node of the list is often called its __tail__.
