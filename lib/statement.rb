require_relative 'account.rb'

class Statement

  def header
    "date  ||  credit  ||  debit  ||  balance"
  end

  def transaction_history(account)
    account_transactions = account.transactions
    account_transactions.each do |x|
      print x.values.join(" || ")
    end
  end
end
