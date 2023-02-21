10.times do
  title = Faker::Book.title
  content = Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4)
  article = Article.new(title: title, content: content)
  article.save
end
