puts 'destroying restaurants'
Restaurant.destroy_all
puts'restaurants burned down!!!'
puts'creating restaurants'
Restaurant.create!(name: 'restau du 31', address: 'Toulouse', category: 'french')
Restaurant.create!(name: 'restau de Xav', address: 'Toulou', category: 'japanese')
Restaurant.create!(name: 'restau pourri de Nounou la poupoune', address: 'Perth', category: 'belgian')
Restaurant.create!(name: 'restau de Alex', address: 'Paris', category: 'chinese')
Restaurant.create!(name: 'restau de Emmo', address: 'Stras', category: 'italian')
puts' restaurants created'
