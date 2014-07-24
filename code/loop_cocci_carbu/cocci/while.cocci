@@ expression E1, E2; constant C; statement S; @@

(
while(<+... ++E1 ...+>)
E2;
|
while(<+... E1++ ...+>)
E2;
|
while(<+... --E1 ...+>)
E2;
|
while(<+... E1-- ...+>)
E2;
|
while(<+... ++E1 ...+>){
...
}
|
while(<+... E1++ ...+>){
...
}
|
while(<+... --E1 ...+>){
...
}
|
while(<+... E1-- ...+>){
...
}
|
//--------------------------------
while(<+... E1 == C ...+>)
E2;
|
while(<+... E1 == C ...+>){
...
}
|
while(<+... E1 != C ...+>)
E2;
|
while(<+... E1 != C ...+>){
...
}
|
while(<+... E1 < C ...+>)
E2;
|
while(<+... E1 < C ...+>){
...
}
|
while(<+... E1 <= C ...+>)
E2;
|
while(<+... E1 <= C ...+>){
...
}
|
while(<+... E1 > C ...+>)
E2;
|
while(<+... E1 > C ...+>){
...
}
|
while(<+... E1 >= C ...+>)
E2;
|
while(<+... E1 >= C ...+>){
...
}
|
//------------------------//
while(<+... ++E1 == C ...+>)
E2;
|
while(<+... ++E1 == C ...+>){
...
}
|
while(<+... ++E1 != C ...+>)
E2;
|
while(<+... ++E1 != C ...+>){
...
}
|
while(<+... ++E1 < C ...+>)
E2;
|
while(<+... ++E1 < C ...+>){
...
}
|
while(<+... ++E1 <= C ...+>)
E2;
|
while(<+... ++E1 <= C ...+>){
...
}
|
while(<+... ++E1 > C ...+>)
E2;
|
while(<+... ++E1 > C ...+>){
...
}
|
while(<+... ++E1 >= C ...+>)
E2;
|
while(<+... ++E1 >= C ...+>){
...
}
|
//---------------------//
while(<+... --E1 == C ...+>)
E2;
|
while(<+... --E1 == C ...+>){
...
}
|
while(<+... --E1 != C ...+>)
E2;
|
while(<+... --E1 != C ...+>){
...
}
|
while(<+... --E1 < C ...+>)
E2;
|
while(<+... --E1 < C ...+>){
...
}
|
while(<+... --E1 <= C ...+>)
E2;
|
while(<+... --E1 <= C ...+>){
...
}
|
while(<+... --E1 > C ...+>)
E2;
|
while(<+... --E1 > C ...+>){
...
}
|
while(<+... --E1 >= C ...+>)
E2;
|
while(<+... --E1 >= C ...+>){
...
}
|
//------------------------//
while(<+... E1++ == C ...+>)
E2;
|
while(<+... E1++ == C ...+>){
...
}
|
while(<+... E1++ != C ...+>)
E2;
|
while(<+... E1++ != C ...+>){
...
}
|
while(<+... E1++ < C ...+>)
E2;
|
while(<+... E1++ < C ...+>){
...
}
|
while(<+... E1++ <= C ...+>)
E2;
|
while(<+... E1++ <= C ...+>){
...
}
|
while(<+... E1++ > C ...+>)
E2;
|
while(<+... E1++ > C ...+>){
...
}
|
while(<+... E1++ >= C ...+>)
E2;
|
while(<+... E1++ >= C ...+>){
...
}
|
//---------------------//
while(<+... E1-- == C ...+>)
E2;
|
while(<+... E1-- == C ...+>){
...
}
|
while(<+... E1-- != C ...+>)
E2;
|
while(<+... E1-- != C ...+>){
...
}
|
while(<+... E1-- < C ...+>)
E2;
|
while(<+... E1-- < C ...+>){
...
}
|
while(<+... E1-- <= C ...+>)
E2;
|
while(<+... E1-- <= C ...+>){
...
}
|
while(<+... E1-- > C ...+>)
E2;
|
while(<+... E1-- > C ...+>){
...
}
|
while(<+... E1-- >= C ...+>)
E2;
|
while(<+... E1-- >= C ...+>){
...
}
|
while(<+... E1>>=C ...+>)
E2;
|
while(<+... E1<<=C ...+>)
E2;
|
while(<+... E1>>=C ...+>){
...
}
|
while(<+... E1<<=C ...+>){
...
}
|
//----------------------//
while(...){
<+... break; ...+>
}
|
while(...)
break;
|
while(...){
<+...
if(...) break;
...+>
}
|
while(...){
<+...
if(...){
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
 while(...)
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
 while(...){ 
...
+ if (_cur < timeout){
+ rdstcll(_cur);
+}
+ else {
+ break;
+}
}
)


//while(a) a-- sans savoir ou est a