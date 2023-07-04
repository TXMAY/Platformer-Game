/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var _move_count=abs(vel_x);
var _move_once=sign(vel_x);

repeat(_move_count)
{
	var _collision_found = place_meeting(x+_move_once,y,obj_collision);
	if(!_collision_found)
	{
		x+=_move_once;
	}
	else
	{
		vel_x=0;
		break;
	}
}
var _move_count=abs(vel_y);
var _move_once=sign(vel_y);

repeat(_move_count)
{
	var _collision_found = place_meeting(x,y+_move_once,obj_collision);
	if(!_collision_found)
	{
		y+=_move_once;
	}
	else
	{
		vel_y=0;
		break;
	}
}