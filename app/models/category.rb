class Genre < ActiveHash::Base
  self.data = [
  { id: 1, name: '---' },
  { id: 2, name: '親戚' },
  { id: 3, name: '家族' },
  { id: 4, name: '友人' },
  { id: 5, name: '会社' },
  { id: 6, name: '仕事' },
  { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :contents

end