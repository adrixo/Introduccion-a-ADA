with Text_IO;
with Monitor;
use Monitor;

-- Crear un objeto protegido que permite controlar el acceso a la variable
-- La suma de las iteraciones totales debe ser correcta
-- Quedarse bloqeuado hasta alcanzar el valor máximo predefinido
procedure Main is

   task type Tarea;

   tarea1, tarea2 : Tarea;

   contador : contadorCompartido;

   task body Tarea is
   begin
      for i in 1..1000000 loop
         contador.incrementar;
      end loop;
   end Tarea;

   type listaTareas is array (1..20) of Tarea;

   procedure instanciar is
     tareas: listaTareas;
   begin
      null;
   end instanciar;

begin
   instanciar;
   Text_IO.Put_Line("Contador = "&Integer'Image(contador.lectura));
   --Text_IO.Put_Line("");
   --Text_IO.Put_Line("Contador = "&Integer'Image(contador.lectura));

end Main;
