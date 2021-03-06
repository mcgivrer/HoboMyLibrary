class Book < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title  :string, :required
    author :string, :required
    year   :integer
    resume :text
    note   :integer
    timestamps
  end
  
  has_attached_file :cover, :styles => { 
  		:full=>"600x600>", 
  		:medium => "300x300>", 
  		:thumb => "100x100>", 
  		:mini => "60x60>" },
		  :path => ":rails_root/public/images/media/:class/cover/:id/:style.:extension",
		  :url => "/images/media/:class/cover/:id/:style.:extension"

  belongs_to :category

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
