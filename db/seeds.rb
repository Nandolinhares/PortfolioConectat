# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Categories
 
principaisEventos = Category.create(name: 'Principais Eventos')
 
eSports = Category.create(name: 'Eventos de e-Sports')
 
eventosLudicos = Category.create(name: 'Eventos Lúdicos')
 
institucional = Category.create(name: 'Institucional')

outros = Category.create(name: 'Outros')

# Featured Movie
movie1 = Movie.create(title: "Invasão Vingadores",
description: "O Invasão Vingadores aconteceu no dia 28 de Abril de 2018, no Boulevard Shopping Campos. Foi uma oportunidade perfeita
para o público interagir com artistas convidados, cosplayers, painéis temáticos e muito mais.",
thumbnail_key: "invasaoVingadoresThumb.jpg", thumbnail_cover_key:
"invasaoVingadoresThumb.jpg", video_key: "invasaoVingadores.mp4",
highlighted: true, category: principaisEventos , featured_thumbnail_key:
"iron.png")
 
# Users
user1 = User.create(name: 'example', email: 'example@example.com',
password: '123456', password_confirmation: '123456')
user2 = User.create(name: 'example2', email: 'example2@example.com',
password: '123456', password_confirmation: '123456')
user3 = User.create(name: 'example3', email: 'example3@example.com',
password: '123456', password_confirmation: '123456')
user4 = User.create(name: 'example4', email: 'example4@example.com',
password: '123456', password_confirmation: '123456')
user5 = User.create(name: 'example5', email: 'example5@example.com',
password: '123456', password_confirmation: '123456')
 
# Movies sem série
movie2 = Movie.create(title: "Conectat Shuffle Dance - CJD 2018", description: "Vídeo promocional da 
	1° Conectat Just Dance. No vídeo foi dançado o Shuffle dance, em parceria com artistas convidados.",
thumbnail_key: "shuffleDance.png", thumbnail_cover_key: "shuffleDance.png" ,
video_key: "shuffleDance.mp4", category: outros)


#movie3 = Movie.create( title: "Dominando Atom [+12 pacotes
#Incríveis!", description: "O Atom é um editor bastante completo,
#cheio de temas e pacotes para facilitar a sua vida como
#programador.", thumbnail_key: "atom.png", thumbnail_cover_key:
#"atom-cover.png", video_key: "atom.mp4", category: outros)
#movie4 = Movie.create(title: "Criando um e-commerce com Spree em 15
#minutos!", description: "O Spree é umaplataforma de e-commerce criada
#usando Ruby On Rails e vem evoluindo constantemente. Ela possui
#diversas extensões que ajudam na customização do e-commerce gerado e
#possui uma grande versatilidade na hora das customizações." ,
#thumbnail_key: "spree.png" , thumbnail_cover_key: "spree-cover.png",
#video_key: "spree.mp4", category: outros)
 
# Series
invasao = Serie.create(title: 'Os Invasões', description: 'São os principais eventos produzidos
pelo Club Conectat, focados nos lançamentos dos principais BlockBusters.', thumbnail_key: "invasaoVingadoresThumb.png", thumbnail_cover_key:
"invasaoVingadoresThumb.jpg", last_watched_episode_id: 1, category:
principaisEventos)

 #Invasão
movie3 = Movie.create(title: "Invasão Galáctica - O começo de tudo!", description: "O Invasão Galáctica
 foi o primeiro grande evento realizado pelo Club Conectat. Com apresentações de dança,
 música, cosplayers e muito mais, o evento possibilitou aos participantes uma imersão completa
  no incrível universo de Star Wars!", thumbnail_key: "invasaoGalactica.jpg", thumbnail_cover_key:
"invasaoGalactica", video_key: "invasaoGalactica.mp4", serie: invasao,
episode_number: 1)

movie4 = Movie.create(title: "Invasão Vingadores", description: "O Invasão Vingadores 
	aconteceu no dia 28 de Abril de 2018, no Boulevard Shopping Campos. Foi uma oportunidade perfeita
	 para o público interagir com artistas convidados, cosplayers, painéis temáticos e muito mais.", thumbnail_key: "invasaoVingadoresThumb", thumbnail_cover_key:
"invasaoVingadoresThumb.jpg", video_key: "invasaoVingadores.mp4", serie: invasao,
episode_number: 2)

#Just Dance
justDance = Serie.create(title:"Conectat Just Dance", thumbnail_key: "justDance.jpg",thumbnail_cover_key: "justDance.jpg", 
category: eSports)

movie5 = Movie.create(title: "1° Conectat Just Dance", description: "A 1° Conectat Just Dance 
	foi realizada para os incríveis fãs que se mobilizaram em nossas redes sociais pedindo um evento 
	nesta escala.", thumbnail_key: "justDance.jpg", thumbnail_cover_key:
"justDance.jpg", video_key: "conectatJD.mp4", serie: justDance,
episode_number: 1)

#Futebol Eletrônico
Futebol_Eletronico = Serie.create(title:"Copa Conectat de Futebol Eletrônico", thumbnail_key: "copaFifa.jpg",thumbnail_cover_key: "copaFifa.jpg", 
category: eSports)

movie6 = Movie.create(title: "1° Copa Conectat de Futebol Eletrônico", 
	description: "A Copa Conectat de Futebol Eletrônico foi o primeiro grande evento 
	de e-sports organizado pelo Club. Na oportunidade, os jogadores competiram nos 
	consoles com FIFA 18.", 
	thumbnail_key: "copaFifa.jpg", thumbnail_cover_key:
"copaFifa.jpg", video_key: "copaFifa.mp4", serie: Futebol_Eletronico,
episode_number: 1)

#LudoFest
LudoFest = Serie.create(title:"LudoFest", thumbnail_key: "ludofest.jpg",thumbnail_cover_key: "ludofest.jpg", 
category: eSports)

movie7 = Movie.create(title: "LudoFest - Boulevard Shopping Campos", 
	description: "O LudoFest é uma experiência desenvolvida pelo Club Conectat totalmente 
	centrada no ludismo. Os participantes aproveitam a oportunidade para, enquanto jogam 
	cardgames, boardgames e xadrez, interagirem com amigos e familiares. ", 
	thumbnail_key: "ludofest.jpg", thumbnail_cover_key:
"ludofest.jpg", video_key: "LudoFest.mp4", serie: LudoFest,
episode_number: 1)
 
# Keep Wathching
Player.create(start_date: Time.now, user: user1, elapsed_time: '14',
movie: movie1)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14',
movie: movie2)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14',
movie: movie3)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14',
movie: movie4)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14',
movie: movie5)
 
# Reviews
Review.create(rating: 3, description: 'I have always depended on the
kindness of strangers.', reviewable: movie2, user: user1)
Review.create(rating: 2, description: 'Help me, Obi-Wan Kenobi. Youre
my only hope. ', reviewable: movie2, user: user2)
Review.create(rating: 5, description: 'Every time a bell rings, an
angel gets his wings. ' , reviewable: movie2, user: user3)
Review.create(rating: 3, description: 'Magic Mirror on the wall, who
is the fairest one of all?', reviewable: movie2, user: user4)
Review.create(rating: 5, description: 'Just when I thought I was out,
they pull me back in.', reviewable: movie2, user: user5)
 
# Favorites
Favorite.create(favoritable: Movie.all[0], user: user1)
Favorite.create(favoritable: Movie.all[1], user: user1)
Favorite.create(favoritable: Movie.all[2], user: user1)
Favorite.create(favoritable: Movie.all[3], user: user1)
Favorite.create(favoritable: Movie.all[4], user: user1)