class User < ApplicationRecord
  rolify
  after_create :assign_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_one :member, :dependent => :destroy
  has_many :user_projects
  has_many :projects, through: :user_projects
  belongs_to :department
  accepts_nested_attributes_for :member, allow_destroy: true

  def assign_default_role
    self.add_role(:employee) if self.roles.blank?
  end

end
