json.extract! article, :id, :title, :content, :pubdate, :published, :created_at, :updated_at
json.url article_url(article, format: :json)
json.content article.content.to_s
