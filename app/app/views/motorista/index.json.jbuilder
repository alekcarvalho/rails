json.array!(@motorista) do |motoristum|
  json.extract! motoristum, :id, :nome, :cpf, :tipo_caminhao, :latitude, :longitude
  json.url motoristum_url(motoristum, format: :json)
end
