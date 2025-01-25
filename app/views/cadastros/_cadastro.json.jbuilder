json.extract! cadastro, :id, :nome, :idade, :cpf, :telefone, :cep, :cidade, :rua, :estado, :complemento, :created_at, :updated_at
json.url cadastro_url(cadastro, format: :json)
