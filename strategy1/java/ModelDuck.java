public class ModelDuck extends Duck{
  public ModelDuck() {
    flyBehavior = new flyBehavior();
    quackBehavior = new Quack();
  }

  public void display() {
    system.out.println("I'm a model duck");
  }
}
