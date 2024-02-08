require 'rails_helper'

RSpec.describe Article, type: :model do
    context 'validations' do
        it 'is not valid without title' do
            article = Article.new(content: 'Get the latest on local news. See us Thursday at 5pm.')
            expect(article).to_not be_valid
        end

        it 'is not valid without content' do
            article = Article.new(title: 'Local News')
            expect(article).to_not be_valid
        end

        it 'is not valid without minimum length title' do
            article = Article.new(title: 'Titl', content: 'Nam quis nulla. Integer malesuada. In in enim a arcu im.')
            expect(article).to_not be_valid
        end

        it 'is not valid without minimum length content' do
            article = Article.new(title: 'Title', content: 'Nam quis nulla. Integer malesuada.')
            expect(article).to_not be_valid
        end

        it 'is valid with all conditions' do
            article = Article.new(title: 'Title', content: 'Nam quis nulla. Integer malesuada. In in enim a arcu im.')
            expect(article).to be_valid
        end

    end
  end