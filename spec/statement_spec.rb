require 'account.rb'
require 'statement.rb'

describe Statement do

  let(:subject) { described_class.new }

  describe '#header' do
    it 'displays transaction header' do
      expect(subject.header).to eq("date  ||  credit  ||  debit  ||  balance")
    end
  end

  describe '#transaction_history' do
    it 'displays the transaction history' do
      account = Account.new
      account.deposit(20)
      expect { subject.transaction_history(account) }.to output("25/04/2018 || 20 ||  || 20").to_stdout
    end
  end
end
