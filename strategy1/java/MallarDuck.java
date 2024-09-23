public class MallarDuck extends Duck {
  public MallarDuck() {
    quackBehavior = new Quack();
    flyBehavior = new FlyWithWings();
  }

  public void display() {
    system.out.println("I'm a real Mallard duck");  
  }
}
