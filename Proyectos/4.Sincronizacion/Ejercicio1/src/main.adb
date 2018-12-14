with Text_IO;
with Gestor;
use Gestor;

procedure Main is
   task type Lector;
   task type Escritor;

   type ListaLectores is array (1..10) of Lector;
   type ListaEscritores is array (1..4) of Escritor;

   gestion : TipoGestor;

   procedure iniciar is
      escritores : ListaEscritores;
      lectores : ListaLectores;
   begin
      null;
   end iniciar;

   task body Lector is
   begin
      gestion.iniciarLectura;
      Text_IO.Put_Line("N Lectores ="&Natural'Image(gestion.getNumLectores));
      gestion.terminarLectura;
   end Lector;

   task body Escritor is
   begin
      gestion.iniciarEscritura;
      Text_IO.Put_Line("Escribiendo... ");
      gestion.terminarEscritura;
   end Escritor;

begin
   iniciar;

end Main;
