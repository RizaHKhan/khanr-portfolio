module PortfoliosHelper
  def image_generator(width:)
    "https://place-hold.it/#{300}"
  end

  def portfolio_img img, type
    if img
      img
    elsif type == 'thumbnail'
      image_generator(width: '300')
    elsif type == 'main'
      image_generator(width: '800')
    end
  end
end
