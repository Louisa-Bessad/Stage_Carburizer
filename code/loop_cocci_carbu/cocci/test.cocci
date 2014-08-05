@@
expression E1, E2;
constant C;
@@

(
for(...;...;<+... E1 += C ...+>)
E2;
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
)