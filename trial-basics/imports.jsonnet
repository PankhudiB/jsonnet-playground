local config = import 'config.json';
local my_function(x, y) = x + y;

{
    "key": my_function(config.x,config.value.y)
}