Copiare la cartella /html all'interno della directory WEB-INF
Referenziare la taglibrary nel file php con

     <%@ taglib prefix="html" tagdir="/WEB-INF/tags/html" %>

<html:form /> 
� la rappresentazione di <form> ...  </form>
imposta automaticamente il post alla pagina corrente tramite il metodo post
	htmlID
	cssClass

<html:text /> 
� la rappresentazione di <input type="text"> ed espone i segenti attributi:
	name
	value
	htmlID
	style
	cssClass
	maxLength


<html:textarea /> 
� la rappresentazione di <textarea></textarea> ed espone i segenti attributi:
	name
	value		il contenuto della textarea
	rows
	cols
	htmlID
	style
	cssClass
	maxLength

	
<html:hidden /> 
� la rappresentazione di <input type="hidden"> ed espone i segenti attributi:
	name
	value


<html:check /> 
� la rappresentazione di <input type="checkbox" value="true" /> il valore � sempre impostato a "true" ed espone i segenti attributi:
	name
	cssClass
	htmlID


<html:select>
� la rappresentazione di <select></select> ed espone i segenti attributi:
	name
	cssClass
	onchange
	htmlID
	defaultValue	- imposta come selected l'option che ha tale valore 


<html:option /> 
� la rappresentazione di <option value="value"></option> e espone i segenti attributi:
	value
	label	- opzionale, se omesso viene utilizzato il valore di value 


<html:optionsFromCollection />
� la rappresentazione di una serie di tag <option value="value"></option>
 
	collection 	- l'oggetto da cui andare a pescare i valori da mostrare.
			      Il valore viene utilizzato anche come etichetta.


<html:radio />
� la rappresentazione di una serie di tag <input type="radio" />
	name
	value
	cssClass
	style
	htmlID
	onclick 


<html:submit />
� la rappresentazione di <input type="submit" />
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
