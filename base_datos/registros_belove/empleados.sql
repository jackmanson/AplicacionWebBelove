




INSERT INTO `empleados` (`idEmpleados`,`idPersona`,`idEstado`,`idCargoEmpleado`,`idSede`,`Celular`,`Email`,`FechaRegistro`,`FechaModifica`) VALUES
(1 ,1 ,29,2,1,'','','',''),
(2 ,2 ,29,3,1,'','ECHAVEZ@MONTALVOGROUP.COM.PE','',''),
(3 ,3 ,29,4,1,'','','',''),
(4 ,4 ,29,5,1,'','','',''),
(5 ,5 ,29,6,1,'','','',''),
(6 ,6 ,29,2,1,'','','',''),
(7 ,7 ,29,7,1,'','','',''),
(8 ,8 ,29,1,1,'','','',''),
(9 ,9 ,29,2,1,'','','',''),
(10,10,29,5,1,'','','',''),
(11,11,29,5,1,'','','',''),
(12,12,29,4,1,'','','',''),
(13,13,29,5,1,'','','',''),
(14,14,29,2,1,'','','','');



select idEmpleados,NombrePersona,Email,NombreCargo,NombreEstado from empleados 
inner join personas on empleados.idPersona=personas.idPersona
inner join cargosempleados on empleados.idCargoEmpleado=cargosempleados.idCargo
inner join estados on empleados.idEstado=estados.idEstado




