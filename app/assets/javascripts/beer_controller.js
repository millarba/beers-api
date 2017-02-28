(function() {
  "use strict";

  angular.module("app").controller("beerCtrl", function($scope, $http){
    $scope.setup = function() {
      $http.get('/api/v2/beers.json').then(function(response) {
        $scope.beers = response.data;
      })
    };

    $scope.toggleInfo = function(beer) {
      beer.visible = !beer.visible;
    };


    $scope.addBeer = function(newBeerName, newBeerStyle, newBeerAlcohol, newBeerIbu) {
      var beer = {
                  name: newBeerName,
                  style: newBeerStyle,
                  alcohol: newBeerAlcohol,
                  ibu: newBeerIbu
                  };

      $http.post('/api/v2/beers.json', beer).then(function(response) {
        $scope.beers.push(response.data);
        $scope.newBeerName = null;
        $scope.newBeerStyle = null;
        $scope.newBeerAlcohol = null;
        $scope.newBeerIbu = null;
      }, function(errors) {
        $scope.errors = errors.data;
      });
    }; 




  });
}());