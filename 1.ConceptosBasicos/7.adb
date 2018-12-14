with Text_IO;

-- Ejercicio7
-- Realiza un bucle que permita mostrar todos los elementos del tipo numerado
-- Sin listarlos uno a uno.
-- Emplear los atributos
procedure Main is
   --Tomando código del ejercicio3 para crear un tipo numerado
   type Semana is(Lunes,Martes,Miercoles,Jueves,Viernes,Sabado,Domingo);
   dia : Semana;
   package Integer_IO is new Text_IO.Integer_IO(Integer);
begin
   dia := Semana'First;

   loop
      exit when dia = Semana'Last;
      Text_IO.Put_Line(Semana'Image(dia));
      dia := Semana'Succ(dia);
   end loop;
   Text_IO.Put_Line(Semana'Image(dia));
end Main;
