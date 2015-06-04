json.features @features do |feature|
  json.id feature.id
  json.text feature.text
  json.description feature.description
  json.requirement_ids feature.requirements.map &:id
end

json.requirements @requirements, :id, :text
