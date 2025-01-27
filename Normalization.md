## _Functional Dependencies_:

 - ### User Relation :
	 - $User \ ID \rightarrow Username$
	 - $Username \rightarrow Email$ 
	 - $Username \rightarrow Full \ Name$
	 - $Username \rightarrow Age$
	 - $Username \rightarrow Password$ [^1]
	 - $Email \rightarrow Username$ 
	 - $Email \rightarrow Password$
	 - $Email \rightarrow Full \ Name$
	 - $Email \rightarrow Age$ [^1]<br> 
- ### Rating Relation : 
	- $Rating \ ID \rightarrow User \ ID$
	- $Rating \ ID \rightarrow Production \ ID$
	- $Rating \ ID \rightarrow Date$
	- $Rating \ ID \rightarrow Rating \ Value$ 
	- $Rating \ ID \rightarrow Review \ Text$ 
	- $User \ ID, \ Production \ ID \rightarrow Rating \ ID$[^1]<br>
- ### List Relation :
	- $List \ ID \rightarrow User \ ID$
	- $List \ ID \rightarrow Name$
	- $List \ ID \rightarrow Access$
	- $List \ ID \rightarrow Type$[^1]<br>
- ### Production Relation:
	- $Prodcution \ ID \rightarrow Title$ 
	- $Prodcution \ ID \rightarrow Genre$
	- $Prodcution \ ID \rightarrow Revenue$
	- $Prodcution \ ID \rightarrow Release \ Date$
	- $Prodcution \ ID \rightarrow IMDB \ Rating$ 
	- $Prodcution \ ID \rightarrow Type$[^1] <br><br>
	- $Title,\ Release \ Date \rightarrow Production \ ID$
	- $Title,\ Release \ Date \rightarrow Genre$
	- $Title,\ Release \ Date \rightarrow Revenue$
	- $Title,\ Release \ Date \rightarrow IMDB \ Rating$ 
	- $Title, Release \ Date \rightarrow Type$[^1] <br><br> *(Although this particular set of FD's is not considered during the design process, it can be used as one. As it is highly unlikely to have two Productions (movie / series) with the same name and release date)* <br>
- ### Part Relation:
	All the FD's are **Trivial**.
	- $Production \ ID, \ Part \ Number \rightarrow Part \ Number$
	- $Production \ ID, \ Part \ Number \rightarrow Production \ ID$
	<br>
- ### People Relation:
	- $Person \ ID \rightarrow Fullname$ <br>
- ### Company :
	- $Company \ ID \rightarrow Legal \ Name$<br><br>
	- $Legal \ Name \rightarrow Company \ ID$  <br><br> *(The legal and registered name of a production company is very likely unique, however this is not considered in our design)* <br>
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
- ### NF3 :
	The **User** relation is not *NF3*, because there are several *Transitive Functional Dependencies* (e.g. $User \ ID \rightarrow Username$ and $Username \rightarrow Email$ ). These happen because **Email** and **Username** are also valid *Candidate Keys*. 
	To normalize the **User** relation, it need to be broken up. Here are the steps:
	1. __Username__ is one of the attributes causing a *TFD*. So, the relation needs to be broken up into $R_1 \; (User \ ID, \ Username)$ and $R_2 \; (Username, \ Email, \ Password, \ Full \ Name, \ Age)$.
	2. In the newly created relation $R_2$, it seems to contain the same problem, initially present in the **User** relation, and it needs to be further broken up.
	3. The FD causing the relation not to be in *NF3*, is $Username \rightarrow Email$ and $Email \rightarrow Other \ Attributes$. So it needs to be broken up to eliminate this connection.
	4. $R_2$ should be broken up into $R_2 ^ \prime \; (Username, \ Email)$ and $R_2'' \; (Email, \ Password, Full \ Name, \ Age)$
	<br>Other relations are in *NF3*.