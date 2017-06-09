varying vec2			v_texcoord;
varying vec4			v_colormod;
attribute vec3			a_position;
attribute vec2			a_texcoord;
uniform vec2			v_location;
uniform vec2			v_scale;
uniform vec4			v_color;
uniform mat2			m_vp_matrix;
uniform mat2			m_rot_matrix;

void main()
{
	vec2 ap = a_position.xy * vec2(v_scale.x, v_scale.y);
	ap *= m_rot_matrix;
	ap += v_location;
	vec2 pos = ap * m_vp_matrix;
	float depth = 1.0 - (a_position.z * 0.0005);		// scale 0..2000 to 1..0
	gl_Position = vec4(pos.x - 1.0, -(pos.y - 1.0), depth, 1.0);
	v_texcoord = a_texcoord;
	v_colormod = v_color;
}