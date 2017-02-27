var app = angular.module('dating_app', []);

app.controller('mainController', ['$http', function($http) {
  main = this;
  // grab elements
  var mainImg = document.getElementById('main-img');
  var mainImg2 = document.getElementById('main-img-2');

  // hold 6 random daters
  main.daters = [];
  main.createDater = createDater;

  // auto http request to rails API to get dater info
  $http.get(`http://localhost:3000/users`)
    .then(function(response) {
    main.daters = response.data;
    console.log(main.daters);
  });

  // $http post request to Rails API to create user
  function createDater(){
    $http.post(`http://localhost:3000/users/`, main.newDater)
    .then(function(response) {
      console.log('Data from server: ', response);
      //reset the newDater to avoid duplicates
      main.newDater = {};
    });
  }

  // Mouseover: Left-side daters
  main.moveNavImg = function(index) {
    mainImg.src = main.daters[index].img;
  };

  // Mouseover: Right-side daters
  main.moveAsideImg = function(index) {
    mainImg2.src = main.daters[index].img;
  };

  // Verify two images are not question marks
  main.checkImgs = function() {
    if (mainImg.src != 'https://secure.polyvoreimg.com/cgi/img-thing/size/l/tid/25090360.jpg' && mainImg2.src != 'https://secure.polyvoreimg.com/cgi/img-thing/size/l/tid/25090360.jpg') {
      return true;
    }
  };

  // function to choose the fate of the date
  main.chooseFate = function() {
    var fates = ['successful', 'unsuccessful'];
    main.result = fates[Math.floor(Math.random() * fates.length)];
    console.log(main.result);
  };



}]);
