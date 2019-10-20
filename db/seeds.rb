Duck.destroy_all
Student.destroy_all

10.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end

50.times do
  Duck.create(name: Faker::Name.unique.name, description: Faker::Dog.breed, student_id: Student.all.sample.id)
end

f
