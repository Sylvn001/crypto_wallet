module ApplicationHelper
  def br_date(us_date)
    us_date.strftime("%d/%m/%Y")
  end

  def app_name
    "CRYPTO WALLET APP"
  end

  def env_rails
    if Rails.env.development?
      "Desenvolvimento"
    elsif Rails.env.production?
      "Producao"
    else
      "Teste"
    end
  end

end
