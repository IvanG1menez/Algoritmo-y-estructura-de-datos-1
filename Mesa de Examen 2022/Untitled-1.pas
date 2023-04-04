
// una empresa tiene los datos de sus clientes que realizas compras y ventas de muebles con los siguientes datos: CODIGOS, DESCRIPCION, CANTIDAD, CANTIDAD EN STOCK, CODIGO DE OPERACION
//CODIGO DE OPERACION PUEDE SER: 1-COMPRA 2-VENTA

//se pide un listado de cada codigo con su descripcion donde la cantidad en stock es mas que la cantidad

pogram mesa;

Uses : crt;

Type 
  empresa := Record;
  cod := String;
  descrp := String;
  canti := integer;
  canti_stock := integer;
  cod_op := integer;
End;
