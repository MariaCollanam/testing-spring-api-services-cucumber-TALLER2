# language: es
@CrearProductoErrrado
Requisito: Crear un nuevo producto usando la api /api/v1/product

	Esquema del escenario: Crear un producto sin éxito
	Dada una API válida con ruta "/api/v1/product/" y formato "application/json"
	Cuando se hace una petición "POST" con el nombre "<nombre>"
	* y la descripción "<descripcion>"
	* y el precio <precio>
	* a la API
	Entonces se recibe una respuesta "exitosa" con código <codigo>
	* y el mensaje "<mensaje>"

	@Cat1
	Ejemplos: El campo nombre vacio
	|nombre|descripcion|precio|codigo|mensaje|
	||Un smartphone MyPhone|1100|400|El nombre del producto no fue proporcionado|
	||Un smartphone MyPhone|1100|400|El nombre del producto no fue proporcionado|
	
	@Cat2
	Ejemplos: El campo Descripcion vacio
	|nombre|descripcion|precio|codigo|mensaje|
	|Myphone 50||1100|400|La descripción del producto no fue proporcionada|
	|Myphone 60||1100|400|La descripción del producto no fue proporcionada|
	
	@Cat3
	Ejemplos: El campo Precio vacio
	|nombre|descripcion|precio|codigo|mensaje|
	|Myphone 11|Un smartphone MyPhone|0|400|El precio del producto no fue proporcionado|
	|Myphone 11|Un smartphone MyPhone|0|400|El precio del producto no fue proporcionado|
