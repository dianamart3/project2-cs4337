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
