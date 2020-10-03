require_relative 'start'

RSpec.describe 'user_choice' do

    it "user_choice" do
        grid[row][col]=(16,16)
        expect(player_move).to eq("Invalid Move! Please try again.")
    end

end