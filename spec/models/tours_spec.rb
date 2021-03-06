require 'rails_helper'

describe 'Tours' do
	context 'start page' do
		#let!(:category) { FactoryGirl.build(:category) }
		let!(:tour) { FactoryGirl.build(:tour) }

		#before(:each) do
		#	tour.categories << category
		#	tour.save
		#end

		it 'shows all tours on the start page' do
			visit root_path			

			expect(page).to have_content tour.title
		end
	end

	context 'filter' do
		let!(:tour1) { FactoryGirl.create(:tour) }
		let!(:category1) { tour1.categories.first }
		let!(:tour2) { FactoryGirl.create(:tour) }
		let!(:category2) { tour2.categories.first }

		it 'allows to select categories' do
			visit root_path

			click_link category1.name
			expect(page).to have_content tour1.title
			expect(page).to_not have content tour2.title
		end
	end

end
