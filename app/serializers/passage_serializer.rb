class PassageSerializer < ActiveModel::Serializer
  attributes :id, :text, :language, :skill_level, :time_allotted
end
