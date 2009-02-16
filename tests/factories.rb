Factory.define :city do |u|
  u.id
  u.location_id '1'
  u.image_file_name 'imagen'
  u.image_content_type 'image/jpeg'
  u.image_file_size '99999'
  u.description 'This is the shit'
end


Factory.define :user do |u|
  u.id
  u.login 'ivan'
  u.password '01210323'
  u.email 'ivan@bakedweb.net'
  u.password_confirmation '01210323'
end