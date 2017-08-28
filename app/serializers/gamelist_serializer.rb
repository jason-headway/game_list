class GamelistSerializer < ActiveModel::Serializer
  attributes :id
end

# == Schema Information
#
# Table name: gamelists
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  updated_at :datetime         not null
#
