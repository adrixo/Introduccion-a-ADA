with Text_IO;

-- Dos tareas que incrementen de manera concurrente y sin ningun tipo de control una variable compartida
-- La variable modificada sera un entero que se incrementará 10000000 veces por cada tarea
-- El area de datos es compartida por las dos tareas
procedure Main is task type Tarea;
   tarea1, tarea2 : Tarea;

   contador : Integer := 0;
   task body Tarea is
   begin
      for i in 1..1000000 loop
         contador := contador + 1;
      end loop;
   end Tarea;

begin
   Text_IO.Put_Line("Contador = "&Integer'Image(contador));
   --Text_IO.Put_Line("");
   --Text_IO.Put_Line("Contador = "&Integer'Image(contador));

end Main;
