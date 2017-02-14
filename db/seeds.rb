100.times do
  Beer.create!(
              name: Faker::Beer.name,
              style: Faker::Beer.style,
              ibu: Faker::Beer.ibu,
              alcohol: Faker::Beer.alcohol
               )
end