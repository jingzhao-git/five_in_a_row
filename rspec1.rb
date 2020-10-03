require_relative 'player_move'

RSpec.describe 'player_move' do
    before( :each ) do
        @move = Move.new
        @board = Array.new(16) { Array.new(16) }
    end

    it "valid_move" do
        allow(@move).to receive(:gets).and_return('1,2')
        @y, @x = @move.player_move('@', @board)
        expect(@y).to eq(1)
        expect(@x).to eq(2)
    end

    it "invalid_move" do
        allow(@move).to receive(:gets).and_return('16,16')
        allow(@move).to receive(:loop).and_yield
        expect do
            @move.player_move('@', @board)
        end.to output(/Invalid Move! Please try again./).to_stdout
    end
end