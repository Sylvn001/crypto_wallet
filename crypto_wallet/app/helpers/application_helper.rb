module ApplicationHelper

  def locale(locale)
    I18n.locale == :en ? "United States" : "Portugês do Brasil"
  end

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
