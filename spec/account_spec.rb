require 'account.rb'

describe Account do

  let(:subject) { described_class.new }
  let(:fake_deposit) { double :fake_deposit }

  describe '#deposit' do
    it 'allows user to make deposits in account' do
      subject.deposit(fake_deposit)
      expect(subject.balance.length).to eq(1)
    end
  end
end
