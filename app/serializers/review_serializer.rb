class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :resort_id
end
