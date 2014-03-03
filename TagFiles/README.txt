Copiare la cartella /html all'interno della directory WEB-INF
Referenziare la taglibrary nel file php con

     <%@ taglib prefix="html" tagdir="/WEB-INF/tags/html" %>

<html:form /> 
è la rappresentazione di <form> ...  </form>
imposta automaticamente il post alla pagina corrente tramite il metodo post
	htmlID
	cssClass

<html:text /> 
è la rappresentazione di <input type="text"> ed espone i segenti attributi:
	name
	value
	htmlID
	style
	cssClass
	maxLength


<html:textarea /> 
è la rappresentazione di <textarea></textarea> ed espone i segenti attributi:
	name
	value		il contenuto della textarea
	rows
	cols
	htmlID
	style
	cssClass
	maxLength

	
<html:hidden /> 
è la rappresentazione di <input type="hidden"> ed espone i segenti attributi:
	name
	value


<html:check /> 
è la rappresentazione di <input type="checkbox" value="true" /> il valore è sempre impostato a "true" ed espone i segenti attributi:
	name
	cssClass
	htmlID


<html:select>
è la rappresentazione di <select></select> ed espone i segenti attributi:
	name
	cssClass
	onchange
	htmlID
	defaultValue	- imposta come selected l'option che ha tale valore 


<html:option /> 
è la rappresentazione di <option value="value"></option> e espone i segenti attributi:
	value
	label	- opzionale, se omesso viene utilizzato il valore di value 


<html:optionsFromCollection />
è la rappresentazione di una serie di tag <option value="value"></option>
 
	collection 	- l'oggetto da cui andare a pescare i valori da mostrare.
			      Il valore viene utilizzato anche come etichetta.


<html:radio />
è la rappresentazione di una serie di tag <input type="radio" />
	name
	value
	cssClass
	style
	htmlID
	onclick 


<html:submit />
è la rappresentazione di <input type="submit" />
	name
	value
	htmlID
	style
	cssClass


<html:error />
<html:error>(body)</html:error>
cerca nei vari contesti l'attributo errors e lo mostra. 
	name	il nome della chiave di un errore
	(body)	Se presente viene mostrato solo in presenza della chiave specificata da name, 
			altrimenti viene mostrato solo il messaggio d'errore per quella chiave
