:- module(loader, [load_data/0]).
:- use_module(library(csv)).
load_food(FoodFile, FoodData) :-
	% Food Diary: Date Time Type Title Comment 
	csv_read_file(FoodFile, FoodData, [functor(food), arity(5), separator(0'\t), convert(true)]).

load_taplog(TapLogFile, TapLogData) :-
	csv_read_file(TapLogFile, TapLogData, [functor(taplog), arity(35), convert(true)]).

load_data :-
	load_taplog('data/taplog.csv', [TapHeader|TapLogData]),
	load_food('data/food.csv', [FoodHeader|FoodData]),
	maplist(assert, TapLogData),
	maplist(assert, FoodData).
	
	



