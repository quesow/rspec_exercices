# You can modify this class however you like to make it pass the test suite.
class ChangeMachine
  def initialize
    @cost = 0
    @paid = 0
  end

  def cost(cents)
    @cost = cents
  end

  def paid(cents)
    @paid += cents
  end

  def dispense_change
    result = get_coins(@paid - @cost)
    if result >= 0
      recursive_change(result)
    end
  end

  def get_coins(cash)
    if cash < 100
      cash
    else
      get_coins(cash - 100)
    end
  end

  def recursive_change(cash)
    next_cash = 0
    if cash <= 0
      return
    elsif cash >= 25
      quarter
      next_cash = cash - 25
    elsif cash >= 10
      dime
      next_cash = cash - 10
    elsif cash >= 5
      nickel
      next_cash = cash - 5
    elsif cash >= 1
      penny
      next_cash = cash - 1
    end
    recursive_change(next_cash)
  end

  # You don't have to modify anything under this line

  def quarter
    puts 'Dispensed quarter' # 25
  end
  def dime
    puts 'Dispensed dime' # 10
  end
  def nickel
    puts 'Dispensed nickel' # 5
  end
  def penny
    puts 'Dispensed penny' # 1
  end
end
