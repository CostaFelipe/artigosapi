require 'test_helper'

class ArtigosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artigo = artigos(:one)
  end

  test "should get index" do
    get artigos_url, as: :json
    assert_response :success
  end

  test "should create artigo" do
    assert_difference('Artigo.count') do
      post artigos_url, params: { artigo: { content: @artigo.content, slug: @artigo.slug, title: @artigo.title } }, as: :json
    end

    assert_response 201
  end

  test "should show artigo" do
    get artigo_url(@artigo), as: :json
    assert_response :success
  end

  test "should update artigo" do
    patch artigo_url(@artigo), params: { artigo: { content: @artigo.content, slug: @artigo.slug, title: @artigo.title } }, as: :json
    assert_response 200
  end

  test "should destroy artigo" do
    assert_difference('Artigo.count', -1) do
      delete artigo_url(@artigo), as: :json
    end

    assert_response 204
  end
end
