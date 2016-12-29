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

  def card_title(index)
    if index == 0
      "mdl-card-wide"
    else
      "mdl-card"
    end
  end

  def col_size(index)
    len = @articles.length
     if index == len-1
            "mdl-card-wide mdl-cell mdl-cell--9-col-desktop mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-shadow--4dp"
     elsif index == len-2
            "mdl-card-wide mdl-cell mdl-cell--3-col-desktop mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-shadow--4dp"
     else
            "mdl-card-wide mdl-cell mdl-cell--4-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-shadow--4dp"
      end
  end

  def comment_author(auth)
     auth.empty? ? "Mysterious Person" : auth
   end
end
