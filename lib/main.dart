
// The abstract class
abstract class Vehicle{
  int _speed = 0;

  void move();

  void setSpeed(int speed){
    if(speed >= 0){
      _speed = speed;
    }
  }

  // Encapsulating _speed to prevent direct access
  int getSpeed(){
    return _speed;
  }
}

// The Subclass of Vehicle
class Car extends Vehicle{
  @override

  void move(){
    print("The car is moving at ${getSpeed()} km/h");
  }
}

// The main function
void main(){
  Car myCar = Car();
  myCar.setSpeed(30);
  myCar.move();
}