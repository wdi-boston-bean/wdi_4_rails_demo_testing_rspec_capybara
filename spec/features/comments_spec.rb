require 'rails_helper'

RSpec.feature 'Manages Comments' do
  scenario 'lists first three comments' do
    @article = Article.create!(title: "Sweet", body: "Beat")
    @article.comments.create!(body: "blah")
    @article.comments.create!(body: "blue")
    @article.comments.create!(body: "blood")

    visit 'articles/1/comments'

    expect(page).to have_content 'Comments'
    expect(page).to have_selector 'comment', count: 3
  end

end