//Ceci est une version etendue du v10 pour generaliser deux des trois cas particuler a ne pas utiliser car il est vraiment long et non optimise

@ paren @ expression E1, E2; constant C, C2; statement S; @@

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
for(...; ...;<+... E1 = E1 + C1 ...+>)
E2;
|
for(...; ...;<+... E1 = E1 - C1 ...+>)
E2;
|
for(...; ...;<+... E1 = E1 * C1 ...+>)
E2;
|
for(...; ...;<+... E1 = E1 / C1 ...+>)
E2;
|
for(...; ...;<+... E1 = E1 % C1 ...+>)
E2;
|
//--------------------//
for(...; ...;<+... E1 = E1 + C1 ...+>){
...
}
|
for(...; ...;<+... E1 = E1 - C1 ...+>){
...
}
|
for(...; ...;<+... E1 = E1 * C1 ...+>){
...
}
|
for(...; ...;<+... E1 = E1 / C1 ...+>){
...
}
|
for(...; ...;<+... E1 = E1 % C1 ...+>){
...
}
|
//for(...;...; incrementation avec expression)
for(...;...;<+... E1 += C1 ...+>)
E2;
|
for(...;...;<+...  E1 -= C1 ...+>)
E2;
|
for(...;...;<+...  E1 *= C1 ...+>)
E2;
|
for(...;...;<+...  E1 /= C1 ...+>)
E2;
|
for(...; ...;<+...  E1 %= C1 ...+>)
E2;
|
//--------------------//
for(...;...;<+... E1 += C1 ...+>){
...
}
|
for(...;...;<+... E1 -= C1 ...+>){
...
}
|
for(...;...;<+... E1 *= C1 ...+>){
...
}
|
for(...;...;<+... E1 /= C1 ...+>){
...
}
|
for(...; ...;<+... E1 %= C1 ...+>){
...
}
|
//Décalage
for(...; ...; <+... E1>>= C1 ...+>)
E2;
|
for(...; ...; <+... E1<<= C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1>>C1 ...+>)
E2;
| 
for(...; ...; <+... E1 = E1<<C1 ...+>)
E2;
|
for(...; ...; <+... E1>>= C1 ...+>){
...
}
|
for(...; ...; <+... E1<<= C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1>>C1 ...+>){
...
}
| 
for(...; ...; <+... E1 = E1<<C1 ...+>){
...
}
|
// for avec strlen
//----------------------- += --------------------
for(...; ...; <+... E1 += strlen(E1) + C1 ...+>)
E2;
|
for(...; ...; <+... E1 += strlen(E1) - C1 ...+>)
E2;
|
for(...; ...; <+... E1 += strlen(E1) * C1 ...+>)
E2;
|
for(...; ...; <+... E1 += strlen(E1) / C1 ...+>)
E2;
|
for(...; ...; <+... E1 += strlen(E1) % C1 ...+>)
E2;
|
for(...; ...; <+... E1 += strlen(E1) + C1 ...+>){
...
}
|
for(...; ...; <+... E1 += strlen(E1) - C1 ...+>){
...
}
|
for(...; ...; <+... E1 += strlen(E1) * C1 ...+>){
...
}
|
for(...; ...; <+... E1 += strlen(E1) / C1 ...+>){
...
}
|
for(...; ...; <+... E1 += strlen(E1) % C1 ...+>){
...
}
|
//----------------------- -= --------------------
for(...; ...; <+... E1 -= strlen(E1) + C1 ...+>)
E2;
|
for(...; ...; <+... E1 -= strlen(E1) - C1 ...+>)
E2;
|
for(...; ...; <+... E1 -= strlen(E1) * C1 ...+>)
E2;
|
for(...; ...; <+... E1 -= strlen(E1) / C1 ...+>)
E2;
|
for(...; ...; <+... E1 -= strlen(E1) % C1 ...+>)
E2;
|
for(...; ...; <+... E1 -= strlen(E1) + C1 ...+>){
...
}
|
for(...; ...; <+... E1 -= strlen(E1) - C1 ...+>){
...
}
|
for(...; ...; <+... E1 -= strlen(E1) * C1 ...+>){
...
}
|
for(...; ...; <+... E1 -= strlen(E1) / C1 ...+>){
...
}
|
for(...; ...; <+... E1 -= strlen(E1) % C1 ...+>){
...
}
|
//----------------------- *= --------------------
for(...; ...; <+... E1 *= strlen(E1) + C1 ...+>)
E2;
|
for(...; ...; <+... E1 *= strlen(E1) - C1 ...+>)
E2;
|
for(...; ...; <+... E1 *= strlen(E1) * C1 ...+>)
E2;
|
for(...; ...; <+... E1 *= strlen(E1) / C1 ...+>)
E2;
|
for(...; ...; <+... E1 *= strlen(E1) % C1 ...+>)
E2;
|
for(...; ...; <+... E1 *= strlen(E1) + C1 ...+>){
...
}
|
for(...; ...; <+... E1 *= strlen(E1) - C1 ...+>){
...
}
|
for(...; ...; <+... E1 *= strlen(E1) * C1 ...+>){
...
}
|
for(...; ...; <+... E1 *= strlen(E1) / C1 ...+>){
...
}
|
for(...; ...; <+... E1 *= strlen(E1) % C1 ...+>){
...
}
|
//----------------------- /= --------------------
for(...; ...; <+... E1 /= strlen(E1) + C1 ...+>)
E2;
|
for(...; ...; <+... E1 /= strlen(E1) - C1 ...+>)
E2;
|
for(...; ...; <+... E1 /= strlen(E1) * C1 ...+>)
E2;
|
for(...; ...; <+... E1 /= strlen(E1) / C1 ...+>)
E2;
|
for(...; ...; <+... E1 /= strlen(E1) % C1 ...+>)
E2;
|
for(...; ...; <+... E1 /= strlen(E1) + C1 ...+>){
...
}
|
for(...; ...; <+... E1 /= strlen(E1) - C1 ...+>){
...
}
|
for(...; ...; <+... E1 /= strlen(E1) * C1 ...+>){
...
}
|
for(...; ...; <+... E1 /= strlen(E1) / C1 ...+>){
...
}
|
for(...; ...; <+... E1 /= strlen(E1) % C1 ...+>){
...
}
|
//----------------------- %= --------------------
for(...; ...; <+... E1 %= strlen(E1) + C1 ...+>)
E2;
|
for(...; ...; <+... E1 %= strlen(E1) - C1 ...+>)
E2;
|
for(...; ...; <+... E1 %= strlen(E1) * C1 ...+>)
E2;
|
for(...; ...; <+... E1 %= strlen(E1) / C1 ...+>)
E2;
|
for(...; ...; <+... E1 %= strlen(E1) % C1 ...+>)
E2;
|
for(...; ...; <+... E1 %= strlen(E1) + C1 ...+>){
...
}
|
for(...; ...; <+... E1 %= strlen(E1) - C1 ...+>){
...
}
|
for(...; ...; <+... E1 %= strlen(E1) * C1 ...+>){
...
}
|
for(...; ...; <+... E1 %= strlen(E1) / C1 ...+>){
...
}
|
for(...; ...; <+... E1 %= strlen(E1) % C1 ...+>){
...
}
|
// for avec strlen E1 = E1+... attention problème au développement
//----------------------- += --------------------
for(...; ...; <+... E1 = E1 + strlen(E1) + C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 + strlen(E1) - C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 + strlen(E1) * C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 + strlen(E1) / C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 + strlen(E1) % C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 + strlen(E1) + C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 + strlen(E1) - C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 + strlen(E1) * C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 + strlen(E1) / C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 + strlen(E1) % C1 ...+>){
...
}
|
//----------------------- -= --------------------
for(...; ...; <+... E1 = E1 -  strlen(E1) + C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 -  strlen(E1) - C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 -  strlen(E1) * C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 -  strlen(E1) / C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 -  strlen(E1) % C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 -  strlen(E1) + C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 -  strlen(E1) - C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 -  strlen(E1) * C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 -  strlen(E1) / C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 -  strlen(E1) % C1 ...+>){
...
}
|
//----------------------- *= --------------------
for(...; ...; <+... E1 = E1 * strlen(E1) + C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 * strlen(E1) - C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 * strlen(E1) * C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 * strlen(E1) / C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 * strlen(E1) % C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 * strlen(E1) + C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 * strlen(E1) - C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 * strlen(E1) * C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 * strlen(E1) / C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 * strlen(E1) % C1 ...+>){
...
}
|
//----------------------- /= --------------------
for(...; ...; <+... E1 = E1 / strlen(E1) + C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 / strlen(E1) - C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 / strlen(E1) * C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 / strlen(E1) / C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 / strlen(E1) % C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 / strlen(E1) + C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 / strlen(E1) - C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 / strlen(E1) * C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 / strlen(E1) / C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 / strlen(E1) % C1 ...+>){
...
}
|
//----------------------- %= --------------------
for(...; ...; <+... E1 = E1 % strlen(E1) + C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 % strlen(E1) - C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 % strlen(E1) * C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 % strlen(E1) / C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 % strlen(E1) % C1 ...+>)
E2;
|
for(...; ...; <+... E1 = E1 % strlen(E1) + C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 % strlen(E1) - C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 % strlen(E1) * C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 % strlen(E1) / C1 ...+>){
...
}
|
for(...; ...; <+... E1 = E1 % strlen(E1) % C1 ...+>){
...
}
|
//for avec double constante ici aussi il peut y avoir des problemes
//----------------------- += --------------------
for(...; ...; <+... E1 = (E1 + C1) + C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 + C1) - C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 + C1) * C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 + C1) / C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 + C1) % C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 + C1) + C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 + C1) - C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 + C1) * C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 + C1) / C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 + C1) % C2 ...+>){
...
}
|
//----------------------- -= --------------------
for(...; ...; <+... E1 = (E1 - C1) + C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 - C1) - C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 - C1) * C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 - C1) / C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 - C1) % C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 - C1) + C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 - C1) - C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 - C1) * C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 - C1) / C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 - C1) % C2 ...+>){
...
}
|
//----------------------- *= --------------------
for(...; ...; <+... E1 = (E1 * C1) + C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 * C1) - C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 * C1) * C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 * C1) / C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 * C1) % C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 * C1) + C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 * C1) - C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 * C1) * C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 * C1) / C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 * C1) % C2 ...+>){
...
}
|
//----------------------- /= --------------------
for(...; ...; <+... E1 = (E1 / C1) + C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 / C1) - C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 / C1) * C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 / C1) / C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 / C1) % C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 / C1) + C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 / C1) - C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 / C1) * C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 / C1) / C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 / C1) % C2 ...+>){
...
}
|
//----------------------- %= --------------------
for(...; ...; <+... E1 = (E1 % C1) + C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 % C1) - C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 % C1) * C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 % C1) / C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 % C1) % C2 ...+>)
E2;
|
for(...; ...; <+... E1 = (E1 % C1) + C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 % C1) - C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 % C1) * C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 % C1) / C2 ...+>){
...
}
|
for(...; ...; <+... E1 = (E1 % C1) % C2 ...+>){
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
for(...;...;...)
break;
|
for(...;...;...){
<+...
break;
...+>

}
|
+ unsigned long long delta = (cpu/khz/HZ)*2;
+ unsigned long long _start = 0;
+ unsigned long long _cur = 0;
+ unsigned long long timeout;
+ timeout = rdstcll(start) + delta;
for(...;...;...)
+{
if(...) S;
+ if (_cur < timeout){
+ rdstcll(_cur);
+}
+ else {
+ break;
+}
+}
|
+ unsigned long long delta = (cpu/khz/HZ)*2;
+ unsigned long long _start = 0;
+ unsigned long long _cur = 0;
+ unsigned long long timeout;
+ timeout = rdstcll(start) + delta;
for(...;...;...)
+{
E1;
+ if (_cur < timeout){
+ rdstcll(_cur);
+}
+ else {
+ break;
+}
+}
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
|
//for(;;)
for(;;)
break;
|
for(;;){
<+... break; ...+>
}
|
+ unsigned long long delta = (cpu/khz/HZ)*2;
+ unsigned long long _start = 0;
+ unsigned long long _cur = 0;
+ unsigned long long timeout;
+ timeout = rdstcll(start) + delta;
for(;;)
+{
if(...) S;
+ if (_cur < timeout){
+ rdstcll(_cur);
+}
+ else {
+ break;
+}
+}
|
+ unsigned long long delta = (cpu/khz/HZ)*2;
+ unsigned long long _start = 0;
+ unsigned long long _cur = 0;
+ unsigned long long timeout;
+ timeout = rdstcll(start) + delta;
for(;;)
+{
E1;
+ if (_cur < timeout){
+ rdstcll(_cur);
+}
+ else {
+ break;
+}
+}
|
+ unsigned long long delta = (cpu/khz/HZ)*2;
+ unsigned long long _start = 0;
+ unsigned long long _cur = 0;
+ unsigned long long timeout;
+ timeout = rdstcll(start) + delta;
for(;;){
...
+ if (_cur < timeout){
+ rdstcll(_cur);
+}
+ else {
+ break;
+}
}
)
