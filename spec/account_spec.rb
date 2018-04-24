require 'account.rb'

describe Account do

  let(:subject) { described_class.new }

  describe '#deposit' do
    it 'allows user to make deposits in account' do
      subject.deposit(10)
      expect(subject.balance).to eq(10)
    end

    it 'stores a record of the transaction' do
      subject.deposit(10)
      expect(subject.transactions.length).to eq(1)
    end
  end

  describe '#withdraw' do
    it 'allows user to withdraw funds from account' do
      subject.deposit(10)
      subject.withdraw(3)
      expect(subject.balance).to eq(7)
    end
  end
end
