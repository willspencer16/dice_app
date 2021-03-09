require 'dice'

describe Dice do
	it 'allows the user to roll the dice' do
		expect(subject).to respond_to(:roll)
	end

	it 'returns a number between 1 and 6' do
		expect(subject.roll).to be_between(1, 6)
	end

	it 'returns a random number' do
    	expect(subject).to receive(:rand).with(1..6)
    	subject.roll
  	end

  	it 'user to be able to roll any number of dice at the same time' do
  		expect(subject).to respond_to(:number_of_dice).with(1).argument
  		expect(subject.number_of_dice(3)).to eq(3)
  	end

  	  	it 'is an array' do
  		expect(subject.score.kind_of?(Array)).to eq(true)
  	end

  	it 'only rolling once' do
  		expect(subject.score.length).to eq(1)
  	end
end

#expect(subject.roll).to change (subject.score.length).by(1)
