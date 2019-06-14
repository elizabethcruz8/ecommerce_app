json.array! @shoes.each do |shoe|
  json.partial! "shoe.json.jbuilder", shoe: shoe 
end 