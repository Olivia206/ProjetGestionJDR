require "test_helper"

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { age: @character.age, avatar: @character.avatar, classe: @character.classe, competences: @character.competences, destin: @character.destin, hero: @character.hero, histoire: @character.histoire, inventaire: @character.inventaire, monde: @character.monde, nom: @character.nom, origine: @character.origine, pm: @character.pm, prenom: @character.prenom, published_at: @character.published_at, pv: @character.pv, race: @character.race, sexe: @character.sexe, surnom: @character.surnom } }
    end

    assert_redirected_to character_url(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { age: @character.age, avatar: @character.avatar, classe: @character.classe, competences: @character.competences, destin: @character.destin, hero: @character.hero, histoire: @character.histoire, inventaire: @character.inventaire, monde: @character.monde, nom: @character.nom, origine: @character.origine, pm: @character.pm, prenom: @character.prenom, published_at: @character.published_at, pv: @character.pv, race: @character.race, sexe: @character.sexe, surnom: @character.surnom } }
    assert_redirected_to character_url(@character)
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_url
  end
end
