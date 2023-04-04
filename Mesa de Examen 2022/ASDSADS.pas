program matrizteoria;

type    
    matrix = array[1..3,1..4] of integer;
    totalidad = array[1..3] of integer;

var
    mat : matrix;
    total: totalidad;

procedure initMatrix;
var 
    i : integer;
    j : integer;
begin
    i := 1;
    while i <= 3 do
		begin
			j := 1;
				while j <= 4 do
				begin
					mat[i,j] := 0;
					j := j + 1;
				end;
		i := i + 1; 
		end;	   
end;

procedure cargaxfila(var mat : matrix);
var
    i : integer;
    j : integer;
begin
    i := 1;
    while i <= 3 do
    begin
        j := 1;
        while j <= 3 do
        begin
            writeln('ingrese un valor');
            readln(mat[i,j]);
            j := j + 1;
        end;
        i := i + 1;
    end;
end;

procedure sumarfilas(mat : matrix; var total : totalidad);
var 
    i : integer;
    j : integer;
begin
    i := 1;
    while i <= 3 do
    begin
        j := 1;
        while j <= 3 do
        begin
            total[i] := total[i] + mat[i,j];
            j := j + 1;
        end;
        writeln (' suma de la linea ', i, ' es: ', total[i]);
        i := i + 1;
    end;
end;

BEGIN
cargaxfila(mat);
sumarfilas(mat, total);
	
END.
