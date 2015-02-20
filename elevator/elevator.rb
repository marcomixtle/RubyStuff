class Elevator
  def initialize(floors, initial_floor)
    @floors = floors
    @current_floor = Integer(initial_floor)
  end

  def push(desired_floors)
    desired_floors.each do |desired_floor|
      if @floors.include?(desired_floor)

        door_close
        if @current_floor < desired_floor
         move_elevator_up(desired_floor)
        elsif @current_floor > desired_floor
         move_elevator_down(desired_floor)
        end

        p "You have arrived at your destination."
        door_open
      else
        p "That floor doesn't exist or is out of service."
      end
    end
  end

  def move_elevator_up(desired_floor)
    while @current_floor != desired_floor
      @current_floor += 1
      puts "Floor ##{@current_floor}"
    end
  end

  def move_elevator_down(desired_floor)
    while @current_floor != desired_floor
      @current_floor -= 1
      puts "Floor ##{@current_floor}"
    end
  end

  def door_close
    p "Closing door"
  end

  def door_open
    p "Door opening"
  end
end