module ApplicationHelper
  def br_date(us_date)
    us_date.strftime("%d/%m/%Y")
  end

  def app_name
    "CRYPTO WALLET APP"
  end

end
