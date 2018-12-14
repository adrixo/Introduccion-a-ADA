
package body Monitor is
   protected body codigoControlador is

      procedure Generar(codigo:out Integer) is
      begin
         delay until (Ada.Real_Time.Clock + Milliseconds(1000));
         codigo := 1;
         dato := codigo;
         Text_IO.Put_Line("Generado: "&Integer'Image(codigo));
         Ada.Real_Time.Timing_Events.Set_Handler(entradaJitterControl, nextTime, Timer'Access);
      end Generar;

      procedure Validar(valor: in Integer) is
      begin
         if (valor = dato) then
            Text_IO.Put_Line("Correcto.");
            Ada.Real_Time.Timing_Events.Set_Handler(entradaJitterControl, nextTime, null);
         else
             Text_IO.Put_Line("Incorrecto.");
         end if;
      end Validar;

      procedure Timer(event: in out Ada.Real_Time.Timing_Events.Timing_Event) is
      begin
         Text_IO.Put_Line("Temporizador");
         Ada.Real_Time.Timing_Events.Set_Handler(entradaJitterControl, nextTime, Timer'Access);
         Ada.Real_Time.Timing_Events.Set_Handler(entradaJitterControl, nextTime, null);

      end Timer;

   end codigoControlador;
end Monitor;
