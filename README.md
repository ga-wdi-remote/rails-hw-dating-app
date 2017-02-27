# Dating App

## Setup

None! You guys are pros. You can do this.
First, you're going to set up your back end with Rails.
Then, you'll create your front end with Angular. Follow the prompts and be able to "fill in" the missing blanks.


# Rails API

### Part 1: Make the Rails Server
1. In the `homework` folder, make a directory called `dating_app` and `cd` into it.
2. Open up the directory in Atom
3. In terminal, create a new rails app `dating_app_api` and don't forget to use `--api` and assign postgresql as the database.
4. `cd` into `dating_app_api`
5. Create the database.
6. Run the server and check `localhost:3000` and see your API running!
7. :dart: Commit "Rails API server is running"

### Part 2: Make the User Schema
1. Set up a migration for Users: `rails g migration CreateUsers`
2. In `db`, update the migration so that a user has:
  - name
  - gender
  - age (integer)
  - img
3. Double check all your spelling + syntax.
4. Run the migration: `rails db:migrate`
5. You should see something like "-- create_table(:users)"
6. Open `psql` and check that a User table exists in our database. You may see some other tables like `ar_internal_metadata` and `schema_migrations`. This is fine. Exit out of `psql`.
7. You can also see the User schema in `db/schema.rb`
8. :dart: Commit "created User schema"

### Part 3: Make the User Model

We still need to access the database using Rails.

1. Create a new user model file in `app/models` (spelling counts).
2. Make a class `User` that inherits from ApplicationModel.
3. Run the rails console `rails c` and type `User`. You should see the User model.
4. `exit` out of `irb`.
5. :dart: Commit "created User Model"

### Part 4: Seed some Data

1. We're going to seed Users in 1 fell swoop. Copy and Paste the following code into `db/seeds.rb`:

```
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
```

Note: all images are 150x150px

2. Run the seed. There should be no error message.
3. Open rails console again and type `User.all`. You should see all our newly seeded dating contestants!
4. :dart: Commit "successfully seeded Users"

### Part 5: Define Routes

1. In `config/routes.rb` add `resources :users` between `do` and `end`.  Adding [resources](http://guides.rubyonrails.org/routing.html#resource-routing-the-rails-default) will create your routes for the `user` controller. Easy peasy!
2. Run `rails routes` and verify all your routes for `users`
3. :dart: Commit "successfully created routes"


### Part 6: Set up User Controller

1. Touch a file called `users_controller.rb` in `app/controllers`. Spelling counts!
2. Create a `UsersController` class that inherits from `ApplicationController`
3. Time to create your methods. We won't necessarily use all of them in this assignment, but it's good to practice. Add methods for:
  - index
  - show
  - create
  - update
  - destroy
4. Add strong params, again, not really using it in this assignment unless you hit the reach goals, but get comfortable with the set up since you will have to make a full CRUD app anyway. Refer to [the notes from the lesson](https://github.com/ga-students/wdi-remote-matey/blob/master/unit_04/w12d05/instructor_notes/rails_api_full_crud.md) from class to see how this controller file is set up.
5. :dart: Commit "user controller done"

### Part 7: Test your routes

It's always important to test your routes! Use POSTMAN, cURL (or the browser for get requests) and see if they work!

# Angular UI

Time to build the front-end! Keep your Rails server running and open a new tab in terminal. In this terminal window we'll run the front-end server.

### Part 1: Make the Express server + folders

You know the drill.

1. In the `dating_app` top-level directory, make a new directory called `dating_app_ui`. This should be a sibling directory of our Rails API.
2. Navigate into `dating_app_ui`, run `npm init`, and create a `server.js`. The only package you'll need is `express`.
3. Set up your server so that it serves files in the `public` folder. Your `index.html`, `app.js`, and `style.css` will live here.
4. Set up your listener on a port **other than** 3000. 4000?
5. Run `nodemon` and see your server log showing you're connected.
6. :dart: Commit "express server up and running"

<details><summary>.. Stuck?</summary>

  ```
  //Boilerplate Express server.js

  var express = require('express');
  var app = express();
  var port = 4000 || process.env.PORT;

  app.use(express.static('public'));

  app.listen(port, function(){
    console.log("Get some dates on Port 4000!");
  })
  ```

  Folder structure for `dating_app`
  ![img](https://i.imgur.com/pi0PGNa.png)
</details>


### Part 2: Ng Module and Controller

1. In `index.html` and `app.js`, set up your boilerplate code and bootstrap Angular to it.
2. Set up the Angular module for `ng-app` called `dating_app`
3. Set up your controller on the `<body>` named `MainController` and whatever nickname you want. Add a value in this controller and test that it works on the index page (ie. `{{main.message}}`)
4. In your controller, make an $http request to the `/users` index route to the Rails server. Console log the response.
5. This should FAIL due to the single-origin policy. This is ok, we'll configure CORS next.
6. :dart: Commit "Angular module and controller are good to go"

### Part 3: Configure CORS

1. Back in Rails, open `config/initializers/cors.rb`
2. Uncomment the code starting from line 8. For "origins" let's change that to `origins: 'localhost:4000'` (or whichever port you've set your app to.)
3. Restart your Rails server. This should give you an error. That's because we didn't uncomment the `rack-cors` gem.
4. In the Gemfile, uncomment the gem `gem 'rack-cors'`
5. In terminal run `bundle` and restart your Rails server.
6. Refresh your front-end on `localhost:4000`, open up your console and see your $http call's response.
6. :dart: Commit "Configured CORS"

### Part 4: Flexbox Layout
(10 mins)

1. We're gonna make a Flexbox layout with header, footer, columns, main content, etc, known as the "Holy Grail Layout" . Use this [tutorial](https://philipwalton.github.io/solved-by-flexbox/demos/holy-grail/) to create the layout, but for crying out loud, don't use the word `HolyGrail` in your class names. In fact, you can set the css just on the elements: `body`, `nav`, `aside`, etc.
2. Add `border: 1px solid red;` to all these elements so you can visually see the layout. It's ugly for now, and that's ok.
2. :dart: Commit "created holygrail flexbox layout"

![](https://i.imgur.com/53rO9fz.png)

### Part 5: Display Users

Now that we have a basic layout, it's time to build out our User Interface and display some data with ng! Throw in 2 default question mark images in the middle; these will get replaced with daters later.

1. Make it so that 3 users are displayed on each side
2. Make it so your Rails Index route serves up **only 6 random** daters, so that your Angular $http request only ever gets back 6 random daters. You can use `.sample` with an argument of 6 on your index route:

  ```
  def index
    @users = User.all.sample(6)
    render json: @users
  end
  ```

3. Figure out how to use Javascript to split this data up so that three of these are ng-repeated on the left, and three are ng-repeated on the right. Remember, they have already been 'shuffled' so to speak by the Rails controller.

  When you refresh the page, a new random bunch of daters should render:
  ![img](https://i.imgur.com/6jsQdQK.png)

4. :dart: Commit "Displayed Users on the Page"


### Part 6: Add a User

1. Add a form in the footer to add a new dater. Remember, a user has a `name`, `age`, `gender`, `img`. Note: the img should be 150 x 150 like [spongebob](http://orig04.deviantart.net/92ae/f/2009/230/4/1/spongebob_9_150x150_png_by_somemilk.png) and it'll mess up your layout otherwise.
2. The form should `ng-submit` to a function that will process the form data, so you will want your each of the `input` to bind to an `ng-model` of that form data.
3. Write a function in your controller than will process the form upon submit ($http!) and console.log the response and make sure your new user exists in the DB!
4. Keep refreshing the page to see your new dater appear randomly.
5. :dart: Commit "Created a New User"


###  Part 7+: Finish the App!

   - Use `ng-hover` on the user's sidebar images to make an enlarged version of the image appear in the central column.
   - Using `ng-if`, make it so that when an image from the left and and an image from the right are in the central column, a "MATCH" button appears below.
   - Using `ng-click`, when the match button is clicked, make it so that the button disappears and is replaced either with a successful or unsuccessful match message.
   - Using `ng-click` on the page header, when the title of the app is clicked, a new batch of random users will take the place of the old ones. (You can re-use the original $http request).
   - **EDIT** : Make it so that if you click on a user's image (as opposed to hover over it), an edit form will appear in the central column. The edit form should make a PUT request to the Rails server and update the user.
   - **DELETE** : When you click on a user, a delete button shows us with the edit form. Clicking on the delete button deletes the dater.
   - Style it so that it actually looks good.

## Reach Goals: Advanced CSS

Using `ng-class`, make it so that when the 'Click to Match' button is pressed:

* The two central images translate into each other during a 3 second interval and overlay, and the opacity of each will halve.
	* Remember to set the CSS transition properties on the elements.
	* Use ng-class to give the images a class that will animate them, only if a variable bound to the controller is true. If the variable is false, the images will not have that class.
* The click to match button disappears. Hint: use `ng-if` (you can take left image and right image out of the match function).
* A delayed message will appear saying whether or not the match is successful (the relative success can be random). Hint: Use animation keyframes and the css `visible` property to delay the display of the message for 3 seconds.

Here is the full demonstration: https://youtu.be/jLCder5O6Ls


## Submitting Your Work

  When you're ready to submit your work,

  1.  Add, commit, and push your code to your fork of the class repo.
  2.  File an issue on the class repo titled "Your Name -- wXXdXX".

  The issue should include:

  -   A link that points back to your fork.

  -   A 'comfort' score on how you feel about the material, from 1 (very
      uncomfortable) to 5 (very comfortable)
