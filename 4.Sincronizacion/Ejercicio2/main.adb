with Text_IO;
with Ada.Real_Time;
use Ada.Real_Time;

--Dos tareas (Emisora y receptora)
-- Emisora envia un mensaje a la otra cada 10 segundos, imprime por pantalla el tiempo
-- Esto durante dos minutos y luego la tarea termina.
-- Receptora recibirá los mensajes que se envien, espera un maximo de 15 y si no muere
procedure Main is

   package Entero_IO is new Text_IO.Integer_IO(Integer);

   task type TareaReceptora is
      entry mensaje(input: in Integer);
   end TareaReceptora;

   task body TareaReceptora is
      fin : Boolean := False;
   begin
      --delay 120.0; then abort
      loop
         select
            accept mensaje(input: in Integer) do
               Text_IO.Put_Line("Tarea receptora, recibido:");
               Entero_IO.Put(input);

               if(input = 12)
               then
                  fin := True;
               end if;

            end mensaje;
         or
            delay 15.0; -- Retraso de 15 segundos
            fin := True;
         end select;
         exit when fin;
      end loop;
   end TareaReceptora;

   receptora : TareaReceptora;

   task type TareaEmisora;

   task body TareaEmisora is
      intervalo: constant Time_Span := Milliseconds(10000);
      sig: Time;
      contador: Integer := 1;
   begin
      select
         delay 120.0;
         then abort
         sig:= Ada.Real_Time.Clock + intervalo;
         loop
            delay until sig;
            receptora.mensaje(contador);
            contador := contador + 1;
            sig := sig + intervalo;
         end loop;
      end select;
   end TareaEmisora;

   emisora : TareaEmisora;

begin
   null;

end Main;
