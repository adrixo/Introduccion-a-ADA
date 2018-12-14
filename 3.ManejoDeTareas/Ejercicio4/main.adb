with Text_IO;

-- Crear una tarea que se quede a la espera de dos entradas (sensor1 sensor2)
-- sensor1 solo tiene un parámetro de entrada
-- Sensor2 tiene parametro de entrada y de salida, multiplica la entrada x2
-- Enviar un mensaje a cada uno de los sensores e introducir un terminate para que termine el hilo cuando no se vaya a invocar ninguna entrada mas
procedure Main is

   task type Tarea is
      entry sensor1 (input: in Integer);
      entry sensor2 (input: in Integer; output: out Integer);
   end Tarea;

   task body Tarea is
   begin
      loop
         select
            accept sensor1 (input : in Integer) do
               null;
            end sensor1;

         or
            accept sensor2 (input : in Integer; output : out Integer) do
               output := 2 * input;
            end sensor2;
         or
            terminate;
         end select;
      end loop;
   end Tarea;

   tareita : Tarea;
   output : Integer := 0;
begin

   tareita.sensor1(3);
   tareita.sensor2(3, output);

   Text_IO.Put_Line("Resultado: "&Integer'Image(output));

end Main;
