require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "creating a Character" do
    visit characters_url
    click_on "New Character"

    fill_in "Age", with: @character.age
    fill_in "Avatar", with: @character.avatar
    fill_in "Classe", with: @character.classe
    fill_in "Competences", with: @character.competences
    fill_in "Destin", with: @character.destin
    fill_in "Hero", with: @character.hero
    fill_in "Histoire", with: @character.histoire
    fill_in "Inventaire", with: @character.inventaire
    fill_in "Monde", with: @character.monde
    fill_in "Nom", with: @character.nom
    fill_in "Origine", with: @character.origine
    fill_in "Pm", with: @character.pm
    fill_in "Prenom", with: @character.prenom
    fill_in "Published at", with: @character.published_at
    fill_in "Pv", with: @character.pv
    fill_in "Race", with: @character.race
    fill_in "Sexe", with: @character.sexe
    fill_in "Surnom", with: @character.surnom
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "updating a Character" do
    visit characters_url
    click_on "Edit", match: :first

    fill_in "Age", with: @character.age
    fill_in "Avatar", with: @character.avatar
    fill_in "Classe", with: @character.classe
    fill_in "Competences", with: @character.competences
    fill_in "Destin", with: @character.destin
    fill_in "Hero", with: @character.hero
    fill_in "Histoire", with: @character.histoire
    fill_in "Inventaire", with: @character.inventaire
    fill_in "Monde", with: @character.monde
    fill_in "Nom", with: @character.nom
    fill_in "Origine", with: @character.origine
    fill_in "Pm", with: @character.pm
    fill_in "Prenom", with: @character.prenom
    fill_in "Published at", with: @character.published_at
    fill_in "Pv", with: @character.pv
    fill_in "Race", with: @character.race
    fill_in "Sexe", with: @character.sexe
    fill_in "Surnom", with: @character.surnom
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "destroying a Character" do
    visit characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character was successfully destroyed"
  end
end
