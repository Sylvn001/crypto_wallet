namespace :dev do
  desc "Install development dependencies of DB"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Droping DB if exists...", "Successful!!") do
        puts %x(rails db:drop)
      end

      show_spinner("Creating DB...") do
        puts %x(rails db:create)
      end

      show_spinner("Running migrations...") do
        puts %x(rails db:migrate)
      end

      puts %x(rails dev:add_mining_types)
      puts %x(rails dev:add_coins)

    else
      puts "Você não está em ambiente de desenvolvimento"
    end
  end

  task add_coins: :environment do
    show_spinner("Creating coins...") do
      coins = [
        {
          description: 'Bitcoin',
          acronym: 'BTC',
          url_image: 'https://logosmarcas.net/wp-content/uploads/2020/08/Bitcoin-Logo.png'
        },
        {
          description: 'Etherum',
          acronym: 'ETH',
          url_image: 'https://static.coinpaprika.com/coin/eth-ethereum/logo.png?rev=112353'
        },
        {
          description: 'Dash',
          acronym: 'DHS',
          url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/131.png'
        }
      ]

      coins.each do |coin|
        Coin.find_or_create_by!(coin)
      end
    end
  end

  task add_mining_types: :environment do
    show_spinner("Creating Mining Types...") do
      mining_types = [
        {
          name: 'Proof of Work',
          acronym: 'PoW',
        },
        {
          name: 'Proof of Stake',
          acronym: 'PoS',
        },
        {
          name: 'Proof of capacity',
          acronym: 'PoC',
        }
      ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end

  private
    def show_spinner(msg_start, msg_end = "Successful!!")
      spinner = TTY::Spinner.new("[:spinner] #{msg_start}", format: :pulse_2)
      spinner.auto_spin
      yield
      spinner.success("(#{msg_end})")
    end
end
