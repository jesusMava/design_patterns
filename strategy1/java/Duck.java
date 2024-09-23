public abstract class Duck {
  FlyBehavior flyBehavior;
  QuackBehavior quackBehavior;

  public Duck() {}

  public void setFlyBehavior(FlyBehavior fb) {
    flyBehavior = fb
  }

  public void setQuackBehavior(QuackBehavior qb) {
    QuackBehavior = qb
  }

  public abstract void display();

  public void performFly() {
    flyBehavior.fly();
  }

  public void performQuack() {
    quackBehavior.quack();
  }

  public void swim() {
    system.out.println("All ducks float, even decoys!");
  }
}
