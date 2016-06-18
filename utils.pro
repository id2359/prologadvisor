:-module(utils, [parse_food_date/2]).

parse_date(DateString, Date) :-
	parse_time(DateString, _, Stamp),
	stamp_date_time(Stamp, Date, local).

	


	