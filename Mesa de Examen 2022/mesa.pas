// una empresa tiene los datos de sus clientes que realizas compras y ventas de muebles con los siguientes datos: CODIGOS, DESCRIPCION, CANTIDAD, CANTIDAD EN STOCK, CODIGO DE OPERACION
//CODIGO DE OPERACION PUEDE SER: 1-COMPRA 2-VENTA

//se pide un listado de cada codigo con su descripcion donde la cantidad en stock es mas que la cantidad


program mesa;

uses crt;

type
	empresa = array [1..5] of record
		cod:integer;
		descrp: string;
		cant: integer;
		cant_stck: integer;
	end;
	
var 
i: integer;
e: integer;
c: integer;
emp: empresa;

procedure carga;
begin
		emp[1].cod:= 1;
		emp[1].descrp:= 'xxxx';
		emp[1].cant:= 10;
		emp[1].cant_stck:= 8;
		
		emp[2].cod:= 2;
		emp[2].descrp:= 'yyyy';
		emp[2].cant:= 10;
		emp[2].cant_stck:= 4;
		
		emp[3].cod:= 3;
		emp[3].descrp:= 'zzzz';
		emp[3].cant:= 10;
		emp[3].cant_stck:= 3;
end;	

Begin
  c := 0;
  carga();
  writeln('ingrese un codigo ');
  ReadLn(e);
  For i:=1 To 5 Do
    Begin
      If emp[i].cod = e Then
        Begin
			if emp[i].cant > emp[i].cant_stck then
			  begin
				WriteLn('La descripcion del codigo ingresado es: ',emp[i].descrp, ' y hay ',emp[i].cant_stck,
                  ' en stock');
				c := c+1;
			  end;
        End;
    End;
  If c= 0 Then
    Begin
      WriteLn('no se ha encontrado producto con el codigo ingresado');
    End;
End.
