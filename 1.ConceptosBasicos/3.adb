with Text_IO;

-- Ejercicio3
-- Crea un tipo numerado que almacene los d�as de la semana
-- Crear un subtipo de esta variable con solo d�as laborables
procedure Main is
   type Semana is(Lunes,Martes,Miercoles,Jueves,Viernes,Sabado,Domingo);
   type DiaLaboral is new Semana range Lunes .. Viernes;
   dia : DiaLaboral;
begin
   null;
end Main;
