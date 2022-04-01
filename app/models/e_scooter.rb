class EScooter < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
end

# IMAGES =
# ["https://res.cloudinary.com/dqbqhn0zw/image/upload/v1648759717/snhq59gta3s26jkb69ly.jpg",
#   "https://res.cloudinary.com/dqbqhn0zw/image/upload/v1648759869/nvcqu0kk3mcnjdtutxr7.jpg",
#   "https://res.cloudinary.com/dqbqhn0zw/image/upload/v1648759820/oyn12omhokhjl6bcdnee.jpg",
#   "https://res.cloudinary.com/dqbqhn0zw/image/upload/v1648759765/xajylskwf3ajmruyuzeu.jpg",
#   "https://res.cloudinary.com/dqbqhn0zw/image/upload/v1648759672/qkh8fabexb0l3th6a3m3.jpg",
#   "https://res.cloudinary.com/dqbqhn0zw/image/upload/v1648759615/gp2issa1bf0ru5nt4ldo.jpg",
#   "https://res.cloudinary.com/dqbqhn0zw/image/upload/v1648759559/jkp3uk60je426m6qzin7.jpg",
#   "https://res.cloudinary.com/dqbqhn0zw/image/upload/v1648759508/w3egrtlhk3eii91quyem.jpg",
#   "https://res.cloudinary.com/dqbqhn0zw/image/upload/v1648759276/wilppmejawgwhstc0swr.jpg",
#   "https://res.cloudinary.com/dqbqhn0zw/image/upload/v1648759187/usbdtqlizt4jyvorso8f.jpg",
#   "https://res.cloudinary.com/dqbqhn0zw/image/upload/v1648757891/xrivrikxxpxseahxvn6f.jpg",
#   "https://res.cloudinary.com/dqbqhn0zw/image/upload/v1648757783/yjqslynyoahtkso8ntr3.jpg"
# ]
