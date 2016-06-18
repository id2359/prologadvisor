:- use_module(library(csv)).
load_food(FoodFile, FoodData) :-
	csv_read_file(FoodFile, FoodData).

