Requirement.destroy_all
Feature.destroy_all

def sentence
  Faker::Lorem.sentence
end

15.times do 
  num_requirements = [0, 0, 0, 0, 1, 1, 2, 3].sample
  message = num_requirements == 0 ? 'No requirements!' : sentence

  feature = Feature.create(
    text: sentence,
    description: message
  )

  num_requirements.times do
    feature.requirements.create(
      text: sentence
    )
  end
end
