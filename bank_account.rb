class BankAccount
  def initialize(input_holder_name, input_balance, input_type)
    @holder_name = input_holder_name
    @balance = input_balance
    @type = input_type

  end

  # GETTERS
  def holder_name()
    return @holder_name
  end

  def balance()
    return @balance
  end

  def type
    return @type
  end

  #SETTERS
  def set_holder_name(new_holder_name)
    @holder_name = new_holder_name
  end

  def set_balance(new_balance)
    @balance = new_balance
  end

  def set_type(new_type)
    @type = new_type
  end

end
