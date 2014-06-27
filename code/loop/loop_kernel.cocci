@@
expression E1, E2;
@@

(
* for (...; ...; ...)
{...}
|
* for (...; ...; ...)
if(...) 
E1;
return E2;
|
* for(...;...;...)
if(...) return E1;
|
* while (...)
{...}
|
*while(...)
if(...)
return E1;
|
*while(...)
if(...)
E1;
return E2;
)
