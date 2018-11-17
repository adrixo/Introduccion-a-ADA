with Text_IO;

-- Ejercicio2
-- crear una variable que solo puede almacenar valores discretos 0-10
--Comprobar que no se puede introducir el 11
procedure Main is
   type Discreto is New Integer range 0 .. 10;
   package Integer_IO is new Text_IO.Integer_IO(Discreto);

   inputNumber : Discreto;
begin
   Integer_IO.Get(inputNumber);
   Integer_IO.Put(inputNumber);
end Main;
