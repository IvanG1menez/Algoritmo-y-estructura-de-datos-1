program matrizteoria;

type    
    matrix = array[1..3,1..3] of integer;

var
    matriz : matrix;

procedure initMatrix;
var 
    i : integer;
    j : integer;
begin
    i := 1;
    while i <= 3 do
        j := 1;
        while j <= 3 do
            mat[i,j] := 0;
            j := j + 1;
        i := i + 1;    
end;

BEGIN
END.
