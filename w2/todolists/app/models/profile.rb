class Profile < ActiveRecord::Base
  belongs_to :user
  
    
  validate :first_and_last_not_null
  validates :gender, format: {with: /male|female/}
  validate :not_male_sue
  
  scope :ordered_by_birth_year, -> { order birth_year: :asc}

  def first_and_last_not_null()
    if not first_name and not last_name
      errors.add(:first_name, "to be not null")
    end
  end

  def not_male_sue
    errors.add(:gender, "can't be male") if gender == "male" and first_name == "Sue"
  end
  
  def self.get_all_profiles(min, max)
    Profile.where("birth_year BETWEEN :min_age AND :max_age", min_age: min, max_age: max).ordered_by_birth_year.to_a
  end
end
