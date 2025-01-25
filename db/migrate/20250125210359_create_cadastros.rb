class CreateCadastros < ActiveRecord::Migration[8.0]
  def change
    create_table :cadastros do |t|
      t.string :nome
      t.integer :idade
      t.integer :cpf
      t.integer :telefone
      t.integer :cep
      t.string :cidade
      t.string :rua
      t.string :estado
      t.text :complemento

      t.timestamps
    end
  end
end
