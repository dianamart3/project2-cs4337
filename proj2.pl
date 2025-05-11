get(List, Row, Col, Value) :-
    nth0(Row, List, RowList),
    nth0(Col, RowList, Value).
