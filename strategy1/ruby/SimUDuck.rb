# Clases de comportamiento de vuelo
class FlyBehavior
  def fly
    raise NotImplementedError, "Debes implementar este método en las subclases"
  end
end

class FlyWithWings < FlyBehavior
  def fly
    puts "Volando con alas"
  end
end

class FlyNoWay < FlyBehavior
  def fly
    puts "No puedo volar"
  end
end

# Clases de comportamiento de graznido
class QuackBehavior
  def quack
    raise NotImplementedError, "Debes implementar este método en las subclases"
  end
end

class Quack < QuackBehavior
  def quack
    puts "Quack, quack"
  end
end

class MuteQuack < QuackBehavior
  def quack
    puts "<<Silencio>>"
  end
end

# Clase base para los patos
class Duck
  attr_accessor :fly_behavior, :quack_behavior

  def initialize
    @fly_behavior = FlyBehavior.new
    @quack_behavior = QuackBehavior.new
  end

  def display
    raise NotImplementedError, "Debes implementar este método en las subclases"
  end

  def perform_fly
    @fly_behavior.fly
  end

  def perform_quack
    @quack_behavior.quack
  end

  def swim
    puts "Nadando"
  end
end

# Subclases de Duck
class MallardDuck < Duck
  def initialize
    @fly_behavior = FlyWithWings.new
    @quack_behavior = Quack.new
  end

  def display
    puts "Soy un pato malard"
  end
end

class RubberDuck < Duck
  def initialize
    @fly_behavior = FlyNoWay.new
    @quack_behavior = MuteQuack.new
  end

  def display
    puts "Soy un pato de goma"
  end
end

# Ejemplo de uso
mallard_duck = MallardDuck.new
mallard_duck.display
mallard_duck.perform_quack
mallard_duck.perform_fly
mallard_duck.swim

rubber_duck = RubberDuck.new
rubber_duck.display
rubber_duck.perform_quack
rubber_duck.perform_fly
rubber_duck.swim

 # En SimUDuck, los comportamientos de vuelo y graznido son intercambiables. En la vida real,
# verás este patrón cuando tengas clases que encapsulan algoritmos específicos y pueden intercambiarse fácilmente.
