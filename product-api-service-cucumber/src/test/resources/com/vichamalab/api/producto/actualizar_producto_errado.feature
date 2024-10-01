# language: es
@ActualizarFallo
Requisito: Fallo al actualizar producto que no existe

	Antecedentes:
		Dada un producto con nombre "Nombre original"
		* y la descripción "Descripción original"
		* y el precio 1500
		* previamente creado con exito usando la ruta "/api/v1/product/" y metodo "POST"
	
	Esquema del escenario: Fallo al actualizar un producto que no existe
	Cuando se hace una petición "PUT" con el nombre "<nombre>"
	* y la descripción "<descripcion>"
	* y el precio <precio>
	* a la API para un producto errado
	Entonces se recibe una respuesta "fallida" con código <codigo>
	* y el mensaje "<mensaje>"

	@FalloActualizar
	Ejemplos:
	|nombre|descripcion|precio|codigo|mensaje|
	|Myphone 50|Descripcion no Actualizada|999|400|El producto no fue encontrado|
	|Myphone 51|Descripcion no Actualizada|999|400|El producto no fue encontrado|