FactoryGirl.define do
  factory :game do
    name "MyString"
    description "MyText"
  end
end

# == Schema Information
#
# Table name: games
#
#  created_at  :datetime         not null
#  description :text
#  id          :integer          not null, primary key
#  name        :string
#  updated_at  :datetime         not null
#
