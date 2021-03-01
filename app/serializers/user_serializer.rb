class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :avatar, :animals_score, :celebrities_score, :computer_science_score, :geography_score, :history_score, :mathematics_score, :music_score, :sports_score, :created_at, :updated_at
end