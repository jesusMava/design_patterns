*  Identify the aspect of your application that vary and separate them from what stays the same.
    *Takes what varies and "encapsule" it so it won't affect the rest of your code.

* Program to an interface, not an implementation(Can program to an interface without having to actually use a java interface)
    *  
    *  Exploit polimorphism by programming to a supertype so that actual runtime object isn't locked into the code.

    * Program to a super type: the variable should be a type of supertype(usually interface class or interface) so that The object assigned to those variables can be of any concrete implementation of the supertype(The class declaring them don't have to know about the actual object types)


* Favor Composition over inheritance
*   Ventaja: te deja cambiar su comportamiento en tiempo de ejecucion.
*
*Strive for loosely couple designs between objects that interest.
    * we say a object is tightly coupled to another object when it's too dependent o that object
    * All objects depend on other objects, but a loossely coupled object doesn't know or care too much aboutthe details of another object.
    * By not knowing too much about the details of another object, we can create designs that can handle change better designs that have mere flexibility, like the less tightly woven basket.
    * loosely coupled, they can extract, but they typically have vary little knowledge of each other.
    *

*Open-Closed Principle: Classes should be open for extension, but closed for modification
    * concentrate on those areas that most likely to change in your designs and apply the principle  there.
    *
