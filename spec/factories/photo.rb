# frozen_string_literal: true

FactoryBot.define do
  factory :photo do
    name { 'Photo name' }
    description { 'Some description here' }
    category
  end
end
