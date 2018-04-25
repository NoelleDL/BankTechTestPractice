require 'account.rb'
require 'statement.rb'

describe Statement do

  let(:subject) { described_class.new }

  describe '#header' do
    it 'displays transaction header' do
      expect { subject.header }.to output("date  ||  credit  ||  debit  ||  balance\n").to_stdout
    end
  end

  describe '#transaction_history' do
    it 'displays the transaction history' do
      account = Account.new
      account.deposit(20)
      expect { subject.transaction_history(account) }.to output("25/04/2018  ||  20  ||    ||  20\n").to_stdout
    end
  end

  describe '#print_statement' do
    it 'displays the header and transaction history' do
      account = Account.new
      account.deposit(20)
      expect { subject.print_statement(account) }.to output("date  ||  credit  ||  debit  ||  balance\n25/04/2018  ||  20  ||    ||  20\n").to_stdout
    end
  end
end
