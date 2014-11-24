require 'rails_helper'

RSpec.describe Tour, :type => :model do
	let(:category) { Category.new name: 'Radwandern'}
	let(:tour) { Tour.new title: 'Test Tour', teaser: 'My Teaser', description: 'My description', url: 'http://www.google.com/maps/'}

	context 'needs a category' do
		it 'is not valid without a category' do
			expect(tour).to_not be_valid
		end

		it 'is valid with a category' do
			tour.categories << category
			expect(tour).to be_valid
		end
	end
end
