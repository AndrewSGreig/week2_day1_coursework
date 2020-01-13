class BankAccount
  # attr_reader :holder_name, :balance, :type
  # attr_writer :holder_name, :balance, :type
  attr_accessor :holder_name, :balance, :type

  def initialize(input_holder_name, input_balance, input_type)
    @holder_name = input_holder_name
    @balance = input_balance
    @type = input_type

    def pay_in(value)
      @balance += value
    end

    def pay_monthly_fee()
      if @type =="business"
        @balance -= 50
      elsif @type =="personal"
        @balance -= 10
      end
    end
  end
  # # GETTERS
  # def holder_name()
  #   return @holder_name
  # end
  #
  # def balance()
  #   return @balance
  # end
  #
  # def type
  #   return @type
  # end
  #
  # #SETTERS
  # def set_holder_name(new_holder_name)
  #   @holder_name = new_holder_name
  # end
  #
  # def set_balance(new_balance)
  #   @balance = new_balance
  # end
  #
  # def set_type(new_type)
  #   @type = new_type
  # end



end
