## _Functional Dependencies_:

 - ### User Relation:
	 -  $Username \rightarrow Email, \ Full Name, \ Age, \ Password$ 
	 - $Email \rightarrow Username, \ Password, \ Fullname, \ Age$ [^1]<br> 
- ### Rating Relation: 
	- $Rating \ ID \rightarrow Rating Value, \ Review Text$ [^1]<br>
- ### Lists:
	- $List \ ID \rightarrow Name, \ Access, \ Type$ [^1]<br>
- ### Movie & Series:
	- $Prodcution \ ID \rightarrow Title, \ Genre, \ Revenue, \ Release \ Date, \ IMDB \ Rating$ [^1]
	- $Title,\ Release \ Date \rightarrow Production \ ID, \ Genre, \ Revenue, \ Release \ Date, \ IMDB \ Rating$[^1] <br><br> *(Although this FD is not considered during the design process, it can be used as one. As it is highly unlikely to have two Productions (movie / series) with the same name and release date)* <br>
- ### People:
	- $Person \ ID \rightarrow Fullname$ <br>
- ### Company:
	- $Company \ ID \rightarrow Legal \ Name$
	- $Legal \ Name \rightarrow Company \ ID$  <br><br> *(The legal and registered name of a production company is very likely unique, however this is not considered in our design)* <br>
- ### Rating For Movie:
	- $Rating \ ID \rightarrow Production \ ID$ <br>
- ### User Created List:
	- $List \ ID \rightarrow User \ ID$ <br>
- ### User Created Rating:
	- $Rating \ ID \rightarrow Username$ <br>
- ### Movie Added List:
	- $List \ ID, \ Date \rightarrow Prodcution \ ID$ <br>
- ### Cast & Crew:
	- $Production \ ID, \ Role \rightarrow Person \ ID$<br>
- ### Produced By:
	- $Production \ ID \rightarrow Company \ ID$<br><br>
[^1]: Other FD's can be inferred using the *Reflexivity Axiom*. 
