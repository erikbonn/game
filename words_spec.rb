require_relative 'words'

describe WordGame do 
	let: (game) { WordGame.new }

	it "" do
    expect(game.initialize()).to eq ["do the dishes", "mow the lawn"]
  end
