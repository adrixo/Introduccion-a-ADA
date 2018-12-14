with Text_IO;

-- Ejercicio3
-- Crea un tipo numerado que almacene los días de la semana
-- Crear un subtipo de esta variable con solo días laborables
procedure Main is
   type Semana is(Lunes,Martes,Miercoles,Jueves,Viernes,Sabado,Domingo);
   type DiaLaboral is Semana range Lunes .. Viernes;
   dia : DiaLaboral;
begin
   null;
end Main;
