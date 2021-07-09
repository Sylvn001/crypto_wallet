# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Coin.create!(
  description: 'Bitcoin',
  acronym: 'BTC',
  url_image: 'https://logosmarcas.net/wp-content/uploads/2020/08/Bitcoin-Logo.png',
)

Coin.create!(
  description: 'Etherum',
  acronym: 'ETH',
  url_image: 'https://static.coinpaprika.com/coin/eth-ethereum/logo.png?rev=112353',
)

Coin.create!(
  description: 'Dash',
  acronym: 'DHS',
  url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/131.png',
)