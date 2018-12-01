package Monitor is

   protected type contadorCompartido is
      function lectura return Integer;
      procedure incrementar;
      private contador : Integer := 0;
   end contadorCompartido;

end Monitor;
