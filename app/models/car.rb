class Car < ActiveRecord::Base
  has_many :car_requests, :order=>'created_at'
  named_scope :all_cars, :conditions=>{:vtype=>0}
  named_scope :all_bikes, :conditions=>{:vtype=>1}

  def name
    "#{brand} สี#{color} ทะเบียน #{car_code}"
  end
end
