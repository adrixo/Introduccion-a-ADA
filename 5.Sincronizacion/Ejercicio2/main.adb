with System;
with Ada.Real_Time;
use Ada.Real_Time;
with Ada.Real_Time.Timing_Events;
use Ada.Real_Time.Timing_Events;
with Text_IO;
with Monitor;
use Monitor;

procedure Main is
   task type Periodica;

   controlador: codigoControlador;

   package Entero_IO is new Text_IO.Integer_IO(Integer);

   Task body Periodica is
      codigo : Integer;
      valorIntroducido : Integer;
      NextRelease:Time;
      ReleaseInterval : constant Time_Span:=Milliseconds(1000);

   begin
      NextRelease := Ada.Real_Time.Clock;
      nextRelease := NextRelease + ReleaseInterval;

      loop
         controlador.Generar(codigo);

         Text_IO.Put("Introduzca codigo 1: ");
         Entero_IO.Get(valorIntroducido);

         controlador.validar(valorIntroducido);

         delay until NextRelease;
         NextRelease := NextRelease + ReleaseInterval;
     end loop;

   end Periodica;

   tarea2:Periodica;

begin
   null;
end Main;
