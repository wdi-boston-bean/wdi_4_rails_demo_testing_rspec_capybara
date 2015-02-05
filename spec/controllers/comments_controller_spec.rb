require 'rails_helper'

RSpec.describe CommentsController do
  let(:valid_attributes) {
    {body: 'so so so'}
  }
  let(:invalid_attributes) {
    {body: nil }
  }

  describe "GET index" do
    
    it 'has a 200 status code' do
      @article = Article.create!(title: "boo", body: "moo")
      @article.comments.create!(body: "cultural misunderstanding ensues")
      expect(response.status).to eq 200
    end

    it 'renders the index template' do
      get :index, article_id: '1'
      expect(response).to render_template('index')
    end

    it 'assigns @comments' do
      comments = Comment.all
      get :index, article_id: '1'
      expect(assigns(:comments)).to eq comments
    end
  end

  describe "GET new" do

    it 'has a 200 status code' do
      @comment = Comment.new
      expect(response.status).to eq 200
    end

    it 'renders the new template' do
      get :new, article_id: '1'
      expect(response).to render_template('new')
      # 'GET articles/:article_id/comments/new'
    end

  end

end
