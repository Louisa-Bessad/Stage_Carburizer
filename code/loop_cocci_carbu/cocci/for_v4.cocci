@ paren @ expression E1, E2; constant C; @@

(
//for(...;...; var incremente direct avec ou sans paranthèse)
for(...;...;<+... E1++ ...+>)
E2;
|
for(...;...;<+... E1-- ...+>)
E2;
|
//--------------------//
for(...;...;<+... E1++ ...+>){
...
}
|
for(...;...;<+... E1-- ...+>){
...
}
|
//--------------------//
for(...;...;<+... ++E1 ...+>)
E2;
|
for(...;...;<+... --E1 ...+>)
E2;
|
//--------------------//
for(...;...;<+... ++E1 ...+>){
...
}
|
for(...;...;<+... --E1 ...+>){
...
}
|
//for(...;...; incrementation avec constante)
for(...; ...;<+... E1 = E1 + C ...+>)
E2;
|
for(...; ...;<+... E1 = E1 - C ...+>)
E2;
|
for(...; ...;<+... E1 = E1 * C ...+>)
E2;
|
for(...; ...;<+... E1 = E1 / C ...+>)
E2;
|
for(...; ...;<+... E1 = E1 % C ...+>)
E2;
|
//--------------------//
for(...; ...;<+... E1 = E1 + C ...+>){
...
}
|
for(...; ...;<+... E1 = E1 - C ...+>){
...
}
|
for(...; ...;<+... E1 = E1 * C ...+>){
...
}
|
for(...; ...;<+... E1 = E1 / C ...+>){
...
}
|
for(...; ...;<+... E1 = E1 % C ...+>){
...
}

//for(...;...; incrementation avec expression)
for(...;...;<+... E1 += C ...+>)
E2;
|
for(...;...;<+...  E1 -= C ...+>)
E2;
|
for(...;...;<+...  E1 *= C ...+>)
E2;
|
for(...;...;<+...  E1 /= C ...+>)
E2;
|
for(...; ...;<+...  E1 %= C ...+>)
E2;
|
//--------------------//
for(...;...;<+... E1 += C ...+>){
...
}
|
for(...;...;<+... E1 -= C ...+>){
...
}
|
for(...;...;<+... E1 *= C ...+>){
...
}
|
for(...;...;<+... E1 /= C ...+>){
...
}
|
for(...; ...;<+... E1 %= C ...+>){
...
}
|
//Décalage
for(...; ...; <+... E1>>= C ...+>)
E2;
|
for(...; ...; <+... E1<<= C ...+>)
E2;
|
for(...; ...; <+... E1>>= C ...+>){
...
}
|
for(...; ...; <+... E1<<= C ...+>){
...
}
|
//Cas particulier
for (...; ...; (E1++, E2++))
{
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