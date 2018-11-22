with Text_IO;

--Crear una variable de tipo Natural.
--Introducir un valor por teclado y mostrarlo por pantalla
procedure Main is
   number :Natural;
   package Integer_IO is new Text_IO.Integer_IO(Natural);

begin
   Integer_IO.Get(number);
   Integer_IO.Put(number);

end Main;
