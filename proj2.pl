get(List, Row, Col, Value) :-
    nth0(Row, List, RowList),
    nth0(Col, RowList, Value).
find_position(Map, Symbol, RowIndex, ColIndex) :-
    nth0(RowIndex, Map, Row),
    nth0(ColIndex, Row, Symbol).

valid_cell(Map, Row, Col) :-
    nth0(Row, Map, RowList),
    nth0(Col, RowList, Cell),
    Cell \= w.

% applying the coordinates
move(coord(R,C), up, coord(R2,C))    :- R2 is R - 1.
move(coord(R,C), down, coord(R2,C))  :- R2 is R + 1.
move(coord(R,C), left, coord(R,C2))  :- C2 is C - 1.
move(coord(R,C), right, coord(R,C2)) :- C2 is C + 1.

simulate(_, Coord, [], Coord). % no more actions
simulate(Map, Coord, [Dir|Rest], FinalCoord) :-
    move(Coord, Dir, NewCoord),
    NewCoord = coord(R,C),
    valid_cell(Map, R, C),
    simulate(Map, NewCoord, Rest, FinalCoord).
