with System;
with Ada.Real_Time;
use Ada.Real_Time;
with Ada.Real_Time.Timing_Events;
use Ada.Real_Time.Timing_Events;
with Text_IO;

package Monitor is
   entradaJitterControl: Ada.Real_Time.Timing_Events.Timing_Event;
   entradaPeriodo:Ada.Real_Time.Time_Span:=Ada.Real_Time.Milliseconds(300);

   protected type codigoControlador is
      procedure Generar(codigo:out Integer);
      procedure Validar(valor: in Integer);
      procedure Timer(event: in out Ada.Real_Time.Timing_Events.Timing_Event);
   private
      nextTime: Ada.Real_Time.Time;
      dato : Integer;
   end codigoControlador;

end monitor;
