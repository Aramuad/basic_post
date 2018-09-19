100.times do
  BasicPost.create(
    body: Faker::Lorem.paragraph(1)
  )
end