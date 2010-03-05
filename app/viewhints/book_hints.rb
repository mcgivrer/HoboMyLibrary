class BookHints < Hobo::ViewHints

  model_name "A Book"
  field_names :title => "Title (original)"
  field_help :title => "Enter the exact original book title in this field" 
end
