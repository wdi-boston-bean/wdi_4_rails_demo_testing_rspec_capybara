require 'rails_helper'

RSpec.describe CommentsController do
  let(:valid_attributes) {
    {body: 'so so so'}
  }
  let(:invalid_attributes) {
    {body: nil }
  }

  describe "get index" do
    it 'has a 200 status code' do
      @article = Article.create!(title: "boo", body: "moo")
      @article.comments.create!(body: "cultural misunderstanding ensues")
      expect(response.status).to eq 200
    end
    
    it 'renders the index template' do
      expect(response).to render_template('index')
    end
  end

end
