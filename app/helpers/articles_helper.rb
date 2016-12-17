module ArticlesHelper
  def article_params
    params.require(:article).permit(:title, :body, :tag_list, :image)
  end

  def image(article)
    if (!article.blank?)
      return article
    else
      return "https://c2.staticflickr.com/8/7284/9261126436_216b937a43_b.jpg"
    end
  end
end
