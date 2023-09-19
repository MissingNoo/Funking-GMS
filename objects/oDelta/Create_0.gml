global.delta = 0;
#macro Delta global.delta
if(instance_number(oDelta) > 1){
    instance_destroy();
}
targetDelta = 1 / 60;
actualDelta = 0;