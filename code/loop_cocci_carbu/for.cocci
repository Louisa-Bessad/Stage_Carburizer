@@ expression E1, E2, E3; constant C; @@

(
//for(...;...; var incremente direct avec ou sans paranthèse)
for(...;...;E1++)
E2;
|
for(...;...;E1--)
E2;
|
//--------------------//
for(...;...;E1++){
...
}
|
for(...;...;E1--){
...
}
|
//--------------------//
for(...;...;++E1)
E2;
|
for(...;...;--E1)
E2;
|
//--------------------//
for(...;...;++E1){
...
}
|
for(...;...;--E1){
...
}
|
//for(...;...; var incremente direct avec ou sans paranthèse avec d'autre evenement dans la suite de la condition)
for(...;...; E1++,...)
E2;
|
for(...;...; E1--,...)
E2;
|
//--------------------//
for(...;...; E1++,...){
...
}
|
for(...;...; E1--,...){
...
}
|
//--------------------//
for(...;...; ++E1,...)
E2;
|
for(...;...; --E1,...)
E2;
|
//--------------------//
for(...;...; ++E1,...){
...
}
|
for(...;...; --E1,...){
...
}
|
//for(...;...; dans la suite de la condition var incremente direct avec ou sans paranthèse)
for(...;...; ..., E1++)
E2;
|
for(...;...; ..., E1--)
E2;
|
//--------------------//
for(...;...; ..., E1++){
...
}
|
for(...;...; ..., E1--){
...
}
|
//--------------------//
for(...;...; ..., ++E1)
E2;
|
for(...;...; ..., --E1)
E2;
|
//--------------------//
for(...;...; ..., ++E1){
...
}
|
for(...;...; ..., --E1){
...
}
|
//for(...;...; incrementation avec constante)
for(...; ...; E1 = E1 + C)
E2;
|
for(...; ...; E1 = E1 - C)
E2;
|
for(...; ...; E1 = E1 * C)
E2;
|
for(...; ...; E1 = E1 / C)
E2;
|
for(...; ...; E1 = E1 % C)
E2;
|
//--------------------//
for(...; ...; E1 = E1 + C){
...
}
|
for(...; ...; E1 = E1 - C){
...
}
|
for(...; ...; E1 = E1 * C){
...
}
|
for(...; ...; E1 = E1 / C){
...
}
|
for(...; ...; E1 = E1 % C){
...
}
//for(...;...; incrementation avec expression)
for(...;...; E1 += E2)
E3;
|
for(...;...; E1 -= E2)
E3;
|
for(...;...; E1 *= E2)
E3;
|
for(...;...; E1 /= E2)
E3;
|
for(...; ...; E1 %= E2)
E3;
|
//--------------------//
for(...;...; E1 += E2){
...
}
|
for(...;...; E1 -= E2){
...
}
|
for(...;...; E1 *= E2){
...
}
|
for(...;...; E1 /= E2){
...
}
|
for(...; ...; E1 %= E2){
...
}
|
//--------------------//
for(...;...; E1 += E2, ...)
E3;
|
for(...;...; E1 -= E2, ...)
E3;
|
for(...;...; E1 *= E2, ...)
E3;
|
for(...;...; E1 /= E2, ...)
E3;
|
for(...;...; E1 %= E2, ...)
E3;
|
//--------------------//
for(...;...; E1 += E2, ...){
...
}
|
for(...;...; E1 -= E2, ...){
...
}
|
for(...;...; E1 *= E2, ...){
...
}
|
for(...;...; E1 /= E2, ...){
...
}
|
for(...; ...; E1 %= E2, ...){
...
}
|
//--------------------//
for(...;...; ..., E1 += E2)
E3;
|
for(...;...; ..., E1 -= E2)
E3;
|
for(...;...; ..., E1 *= E2)
E3;
|
for(...;...; ..., E1 /= E2)
E3;
|
for(...; ...; ..., E1 %= E2)
E3;
|
//--------------------//
for(...;...; ..., E1 += E2){
...
}
|
for(...;...; ..., E1 -= E2){
...
}
|
for(...;...; ..., E1 *= E2){
...
}
|
for(...;...; ..., E1 /= E2){
...
}
|
for(...; ...; ..., E1 %= E2){
...
}
|
//infinite for with break condition
for(...;...;...){
<+...
if (...) break;
...+>
}
|
for(...;...;...){
<+...
if (...){
...
break;
}
...+>
}
|
+ unsigned long long delta = (cpu/khz/HZ)*2;
+ unsigned long long _start = 0;
+ unsigned long long _cur = 0;
+ unsigned long long timeout;
+ timeout = rdstcll(start) + delta;
for(...;...;...){
...
+ if (_cur < timeout){
+ rdstcll(_cur);
+}
+ else {
+ break;
+}
}
)
