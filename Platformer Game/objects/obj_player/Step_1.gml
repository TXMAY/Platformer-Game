/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
grounded=place_meeting(x,y+1,obj_collision);	// 땅 위인지 확인
unjump=keyboard_check(vk_up);
if(round(vel_x)!=0)
{
	var _friction_applied=sign(vel_x)*friction_power;
	vel_x-=_friction_applied;
}
else
{
	vel_x=0;
}
if(vel_y<0&&!unjump)
{
	vel_y=max(vel_y,vel_y*0.75);
}
vel_y+=grav_speed;