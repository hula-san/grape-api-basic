module BookStore
 class Base < Grape::API

  rescue_from ActiveRecord::RecordNotFound do |e|
    message ={message: e.as_json}
    error! message
  end
  
  mount BookStore::V1::Books
 end
end