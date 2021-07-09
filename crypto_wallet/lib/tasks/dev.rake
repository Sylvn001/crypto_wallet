namespace :dev do
  desc "Configure menu install"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Droping DB if exists...", format: :pulse_2)
      spinner.auto_spin
      puts %x(rails db:drop)
      spinner.success("Successful!")

      spinner = TTY::Spinner.new("[:spinner] Creating database...", format: :pulse_2)
      spinner.auto_spin
      puts %x(rails db:create)
      spinner.success("Successful!")

      spinner = TTY::Spinner.new("[:spinner] Running migrations...", format: :pulse_2)
      spinner.auto_spin
      puts %x(rails db:migrate)
      spinner.success("Successful!")

      spinner = TTY::Spinner.new("[:spinner] Running seeds...", format: :pulse_2)
      spinner.auto_spin
      puts %x(rails db:seed)
      spinner.success("Successful!")
    else
      puts "Você não está em ambiente de desenvolvimento"
    end
  end

end
