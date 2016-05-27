require 'bike'

describe Bike  do
subject(:bike) {described_class.new}


it { should respond_to :working?}

it { should respond_to :break}


it 'the bike can be broken' do
	bike.working = false
	expect(bike.working?).to eq false
end	
# it 'check if the bike is working' do
# expect(subject.working?).to eq true



# it 'should recognize a broken bike' do
# expect(subject.broken).to eq true
# end
end