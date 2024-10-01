# language: es
@EliminarFallo
Requisito: Eliminar un producto que no existe

	Antecedentes:
		Dada un producto con nombre "Eliminar"
		* y la descripción "Descripción original"
		* y el precio 1500
		* previamente creado con exito
	
	Escenario: Eliminar un producto no creado
	Cuando se hace una petición "DELETE" con el nombre "Eliminar"
	* a la API para un producto errado
	Entonces se recibe una respuesta "fallida" con código 404
	* y el mensaje "El producto no fue encontrado"