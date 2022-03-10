require 'player'

describe Player do
    subject(:jasmine) { Player.new('Jasmine')}


    describe '#name' do
        it 'return the name' do
            expect(jasmine.name).to eq 'Jasmine'
        end
    end
end