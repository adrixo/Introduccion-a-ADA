with Text_IO;
with Ada.Command_Line;

-- Tratamiento de los parámetros:
-- Este programa se llama NombrePrograma y ha recibido n Parametros: par1 par2
procedure Main is
   package Integer_IO is new Text_IO.Integer_IO(Natural);

begin
   Text_IO.Put("Este programa se llama ");
   Text_IO.Put(Ada.Command_Name);
   Text_IO.Put("y ha recibido ");
   Integer_IO.Put(Ada.Command_Line.Argument_Count);

   if (Ada.Command_Line.Argument_Count > 1)
   then
      Text_IO.Put(" parametros: ");
      for i in 2..Ada.Command_Line.Argument_Count loop
         Text_IO.Put_Line(Ada.Command_Line.Argument(i));
      end loop;
   else
      Text_IO.Put(" parametros. ");
   end if;

end Main;
