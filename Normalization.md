## _Functional Dependencies_:

 - ### User Relation :
	 -  $Username \rightarrow Email$ 
	 - $Username \rightarrow Full \ Name$
	 - $Username \rightarrow Age$
	 - $Username \rightarrow Password$ [^1]
	 - $Email \rightarrow Username$ 
	 - $Email \rightarrow Password$
	 - $Email \rightarrow Full \ Name$
	 - $Email \rightarrow Age$ [^1]<br> 
- ### Rating Relation : 
	- $Rating \ ID \rightarrow Rating \ Value$ 
	- $Rating \ ID \rightarrow Review \ Text$ [^1]<br>
- ### Lists :
	- $List \ ID \rightarrow Name$
	- $List \ ID \rightarrow Access$
	- $List \ ID \rightarrow Type$[^1]<br>
- ### Movie & Series :
	- $Prodcution \ ID \rightarrow Title$ 
	- $Prodcution \ ID \rightarrow Genre$
	- $Prodcution \ ID \rightarrow Revenue$
	- $Prodcution \ ID \rightarrow Release \ Date$
	- $Prodcution \ ID \rightarrow IMDB \ Rating$ [^1] <br>
	- $Title,\ Release \ Date \rightarrow Production \ ID$
	- $Title,\ Release \ Date \rightarrow Genre$
	- $Title,\ Release \ Date \rightarrow Revenue$
	- $Title,\ Release \ Date \rightarrow IMDB \ Rating$ [^1] <br><br> *(Although this particular set of FD's is not considered during the design process, it can be used as one. As it is highly unlikely to have two Productions (movie / series) with the same name and release date)* <br>
- ### People :
	- $Person \ ID \rightarrow Fullname$ <br>
- ### Company :
	- $Company \ ID \rightarrow Legal \ Name$<br>
	- $Legal \ Name \rightarrow Company \ ID$  <br><br> *(The legal and registered name of a production company is very likely unique, however this is not considered in our design)* <br>
- ### Rating For Movie :
	- $Rating \ ID \rightarrow Production \ ID$ <br>
- ### User Created List :
	- $List \ ID \rightarrow User \ ID$ <br>
- ### User Created Rating :
	- $Rating \ ID \rightarrow Username$ <br>
- ### Movie Added List :
	- $List \ ID, \ Date \rightarrow Prodcution \ ID$ <br>
- ### Cast & Crew :
	- $Production \ ID, \ Role \rightarrow Person \ ID$<br>
- ### Produced By :
	- $Production \ ID \rightarrow Company \ ID$<br><br>
[^1]: Other FD's can be inferred using the *Union Rule (and other rules)* . 
## *Normal Forms* :

- ### _NF1_ : 
	The current design is *NF1*, because all the attributes in every relation (table) is **atomic**. <br> (In some contexts, *Full name* may be considered non-atomic but in our design as there is no need for differentiating between separate parts of a name, it can be considered to be in fact **atomic**) . <br>
- ### *NF2* :
	The current design is *NF2*, as all the attributes in each relation which are not part of the *Primary Key* are dependent to it. (In other words, the *Primary Key* is the determinant for other non prime attributes).<br>