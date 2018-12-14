with Text_IO;

-- Ejercicio8
-- Sumar los numeros pares hasta 100
procedure Main is
   maximo:constant Integer:=100;
   i :Integer;
   total :Integer;

   package Integer_IO is new Text_IO.Integer_IO(Integer);
begin
   i := 2;
   total := 2;
   for i in 2..maximo/2
   loop
      total := total + i*2;
   end loop;

   Integer_IO.Put(total);
end Main;
