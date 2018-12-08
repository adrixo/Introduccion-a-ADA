package body Gestor is

   protected body TipoGestor is

      function getNumLectores return Natural is
      begin
         return numLectores;
      end getNumLectores;

      entry iniciarLectura when not escribiendo and (turnoLectura or iniciarEscritura'count = 0) is

      begin
         numLectores := numLectores + 1;

      end iniciarLectura;

      entry iniciarEscritura when not escribiendo and (not turnoLectura or ( numLectores = 0 and iniciarLectura'count = 0)) is
      begin
         escribiendo := True;

      end iniciarEscritura;

      procedure terminarLectura is
      begin
         numLectores := numLectores -1;
         turnoLectura := False;

      end terminarLectura;

      procedure terminarEscritura is
      begin
         escribiendo := False;
         turnoLectura := True;

      end terminarEscritura;

   end TipoGestor;

end Gestor;
