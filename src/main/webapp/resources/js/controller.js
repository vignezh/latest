var productsApp=angular.module("productsApp",[]);

productsApp.controller("productCtrl",function($scope,$http){

	$http.get('/viewall1').success(function(data,status,config){
		$scope.productsList=data;
		console.log("viewall");
		alert("here is your products");
	}).error(function(data,status){
		alert("couldn't retrieve");
	})
})