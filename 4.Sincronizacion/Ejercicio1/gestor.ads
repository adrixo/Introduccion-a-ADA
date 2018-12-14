package Gestor is

   protected type TipoGestor is
      function getNumLectores return Natural;
      entry iniciarLectura;
      entry iniciarEscritura;
      procedure terminarLectura;
      procedure terminarEscritura;
   private
      escribiendo: Boolean := False;
      numLectores: Natural := 0;
      turnoLectura: Boolean := False;
   end TipoGestor;
end Gestor;
