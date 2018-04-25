class Account
attr_reader :balance, :date, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(money, date = Time.now.strftime("%d/%m/%Y"))
    @balance += money
    @transactions << {date: date, credit: money, debit: nil, balance: @balance }
  end

  def withdraw(money, date = Time.now.strftime("%d/%m/%Y"))
    fail 'Insufficient funds' if money > @balance
      @balance -= money
      @transactions << {date: date, credit: nil, debit: money, balance: @balance }
  end
end
