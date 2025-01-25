require "application_system_test_case"

class CadastrosTest < ApplicationSystemTestCase
  setup do
    @cadastro = cadastros(:one)
  end

  test "visiting the index" do
    visit cadastros_url
    assert_selector "h1", text: "Cadastros"
  end

  test "should create cadastro" do
    visit cadastros_url
    click_on "New cadastro"

    fill_in "Cep", with: @cadastro.cep
    fill_in "Cidade", with: @cadastro.cidade
    fill_in "Complemento", with: @cadastro.complemento
    fill_in "Cpf", with: @cadastro.cpf
    fill_in "Estado", with: @cadastro.estado
    fill_in "Idade", with: @cadastro.idade
    fill_in "Nome", with: @cadastro.nome
    fill_in "Rua", with: @cadastro.rua
    fill_in "Telefone", with: @cadastro.telefone
    click_on "Create Cadastro"

    assert_text "Cadastro was successfully created"
    click_on "Back"
  end

  test "should update Cadastro" do
    visit cadastro_url(@cadastro)
    click_on "Edit this cadastro", match: :first

    fill_in "Cep", with: @cadastro.cep
    fill_in "Cidade", with: @cadastro.cidade
    fill_in "Complemento", with: @cadastro.complemento
    fill_in "Cpf", with: @cadastro.cpf
    fill_in "Estado", with: @cadastro.estado
    fill_in "Idade", with: @cadastro.idade
    fill_in "Nome", with: @cadastro.nome
    fill_in "Rua", with: @cadastro.rua
    fill_in "Telefone", with: @cadastro.telefone
    click_on "Update Cadastro"

    assert_text "Cadastro was successfully updated"
    click_on "Back"
  end

  test "should destroy Cadastro" do
    visit cadastro_url(@cadastro)
    click_on "Destroy this cadastro", match: :first

    assert_text "Cadastro was successfully destroyed"
  end
end
