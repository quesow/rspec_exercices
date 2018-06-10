class Puppy
  # Creates an instance variable "state" that you can set in your class.
  # "_reader" means other objects can read your state by calling "some_puppy.state".
  attr_reader :state

  def initialize
    # Puppies are calm at first.
    @state = :calm
  end

  def pet
    case @state
      when :calm
        @state = :wagging
      when :wagging
        @state = :excited
    end
  end

  def rub_belly
    @state = :calm
  end

  def spray
    case @state
      when :growling
        @state = :angry
      else
        @state = :growling
    end
  end

  def speak
    case @state
      when :growling
        "Grrrr."
      when :angry
        "BARK BARK BARK!"
      else
        "Bark!"
    end
  end
end
