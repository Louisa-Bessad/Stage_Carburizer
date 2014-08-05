@@
expression E1, E2;
statement S;
@@

(
* for (...; ...; ...)
E1;
|
* for (...; ...; ...)
{...}
|
* for (...; ...; ...)
if(...) 
S;
//return E2;
|
* for(...;...;...)
//if(...) return E1;
if(...) 
E1;
|
* for ( ;  ;  )
E1;
|
* for ( ;  ;  )
{...}
|
* for ( ;  ;  )
if(...) 
E1;
//return E2;
|
* for( ; ; )
if(...) //return E1;
S;
|
* while (...)
E1;
|
* while (...)
{...}
|
*while(...)
if(...)
//return E1;
S;
|
*while(...)
if(...)
E1;
//return E2;
)