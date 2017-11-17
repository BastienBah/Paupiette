class User < ApplicationRecord

  has_many :repas
  has_many :participations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

   has_attached_file :image, styles: {
     thumb: '100x100>',
     square: '200x200#',
     medium: '300x300>'
   }, :default_url => "/assets/original/missing.png"

   validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

   def is_admin?
     return self.admin
   end



end
