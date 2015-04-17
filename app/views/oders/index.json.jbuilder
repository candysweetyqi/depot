json.array!(@oders) do |oder|
  json.extract! oder, :id, :name, :address, :email, :pay_type
  json.url oder_url(oder, format: :json)
end
