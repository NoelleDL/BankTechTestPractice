require_relative 'account.rb'

class Statement

  def header
    puts "date  ||  credit  ||  debit  ||  balance"
  end

  def transaction_history(account)
    account_transactions = account.transactions
    account_transactions.each do |x|
      puts x.values.join("  ||  ")
    end
  end

  def print_statement(account)
    header
    transaction_history(account)
  end

end
