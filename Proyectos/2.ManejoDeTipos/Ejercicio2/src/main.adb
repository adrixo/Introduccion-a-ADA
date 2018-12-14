with Text_IO;

-- Pedir al usuario dimensiones (filas*columnas)
-- rellenala con los número múltiplos de 3.765
-- Imprimir en pantalla a fila por linea
procedure Main is
   filas : Natural;
   columnas : Natural;
   package Integer_IO is new Text_IO.Integer_IO(Natural);
   package Float_IO is new Text_IO.Float_IO(Float);

   type matriz is array(Positive range <>, Positive range <>) of Float;

begin
   --Pedimos los datos al usuario
   Text_IO.Put("Introduce el n de filas: ");
   Integer_IO.Get(filas);

   Text_IO.Put("Introduce el n de columnas: ");
   Integer_IO.Get(columnas);

   declare
      matrizValores : matriz(1..filas, 1..columnas);
      iterator : Integer;
   begin
      Text_IO.Put("Asignando numeros multiplos de 3.765 a la matriz... ");
      iterator := 1;
      for i in 1..filas
      loop
         for j in 1..columnas
         loop
            matrizValores(i,j) := 3.765 * float(iterator);
            iterator := iterator + 1;
         end loop;
      end loop;

      Text_IO.Put_Line("");
      Text_IO.Put_Line("Matriz: ");
      for i in 1..filas
      loop
         for j in 1..columnas
         loop
           Float_IO.Put( matrizValores(i,j));
         end loop;
         Text_IO.Put_Line("");
      end loop;
   end;
end Main;
