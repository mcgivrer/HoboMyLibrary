# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
categories=> Categry.create([{:name=>'Novel'},{:sortorder=>1}])

books = Book.create(
		[
			{:title =>'Book1' },
			{:author=>'author1'},
			{:year => 2003},
			{:resume => 'this is the resume for the Book 1'},
			{:note => 10},
			{:category_id=>1}
		]
)
