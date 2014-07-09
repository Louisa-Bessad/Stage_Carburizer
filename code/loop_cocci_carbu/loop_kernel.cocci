@@ @@

(
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
