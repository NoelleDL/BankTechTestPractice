class Account
attr_reader :balance

  def initialize
    @balance = []
  end

  def deposit(money)
    @balance << money
  end 
end
