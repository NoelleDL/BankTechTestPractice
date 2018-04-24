require 'account.rb'
require 'print_transaction.rb'

describe Print_Transaction do

  let(:subject) { described_class.new }

  describe '#header' do
    it 'displays transaction header' do
      expect(subject.header).to eq("date || credit || debit || balance")
    end
  end
end
