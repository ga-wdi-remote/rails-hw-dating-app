# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
        { name: 'Ryan Gosling', age: 35, gender: 'm', img: 'http://coolspotters.com/files/photos/591533/ryan-gosling-large.jpg?1357449177'},
        { name: 'Hypatia of Alexandria', age: 1700, gender: 'f', img: 'http://static1.squarespace.com/static/53e031f1e4b088c3aac80e47/t/5636ebf1e4b0683b6c56cb43/1446440030277/hypatia.jpg'},
        { name: "Hogan", age: 40, gender: 'm', img: 'http://myfivebest.com/wp-content/uploads/2010/10/crime_crane.jpg'},
        { name: 'Lumpy Space Princess', age: 29, gender: 'f', img: 'http://i0.wp.com/www.drawcentral.com/wp-content/uploads/2013/03/Lumpy-Space-Princess.jpg?resize=150%2C150'},
        { name: 'Idris Elba', age: 43, gender: 'm', img: 'http://www.ramascreen.com/wp-content/uploads/2015/01/Idris-Elba-Luther-150x150.jpg'},
        { name: 'The Trash Heap of Fraggle Rock', age: 1000, gender: 'f', img: 'http://www.toughpigs.com/wp-content/uploads/2009/12/trasheap-150x150.jpg'},
        { name: 'Homeless guy', age: 60, gender: 'm', img: 'https://s-media-cache-ak0.pinimg.com/236x/03/d1/53/03d153c14b49a88cab97d58a5bedb6e8.jpg'},
        { name: 'Raisin', age: 20, gender: 'f', img: 'http://cdn.lifeinthefastlane.com/wp-content/uploads/2010/09/raisin.jpg'},
        { name: 'Jim', age: 49, gender: 'm', img: 'http://www.argylejournal.com/wp-content/uploads/2012/10/Jim-Ellinghausen-e1349993531939-150x150.jpg'},
        { name: 'Muttley', age: 2, gender: 'm', img: 'http://gifrific.com/wp-content/uploads/2012/08/Cartoon-Character-Mutley-Laughing-150x150.gif'},
        { name: 'Slimer', age: 90, gender: 'f', img: 'http://orig13.deviantart.net/ef48/f/2014/309/1/5/slimer_by_bbjeg-d85exys.png'},
        { name: 'Mist', age: 3400000, gender: 'f', img: 'http://www.kidthesaurus.com/wp-content/uploads/2015/07/mist-150x150.jpg'},
        { name: 'Ching Shih', age: 25, gender: 'f', img: 'http://treehouseletter.com/wp-content/uploads/2015/04/Ching-Shih-150x150.jpg'},
        { name: 'Galadriel', age: 7045, gender: 'f', img: 'http://nerdbastards.com/wp-content/uploads/2015/12/Galadriel-and-Phial-150x150.jpg'},
        { name: 'Skeletor', age: 19, gender: 'm', img: 'http://www.shwiggie.com/media/images/skeletor-smirk.jpg'},
        { name: 'Sauron', age: 7045, gender: 'm', img: 'http://ia.media-imdb.com/images/M/MV5BMTc0Njk5NDQwNl5BMl5BanBnXkFtZTYwNTU3NTky._V1_SX150_CR0,0,150,150_.jpg'}
    ])
