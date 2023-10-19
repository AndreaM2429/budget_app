FactoryBot.define do
  factory :categories do
    name { 'Food' }
    icon do
      io = File.open(Rails.root.join('spec', 'icon_tests', 'food.jpg'))
      filename = 'food.jpg'
      content_type = 'image/jpeg'
      Rack::Test::UploadedFile.new(io, content_type, filename)
    end
  end
end
