varying vec2			v_texcoord;
attribute vec2			a_position;
attribute vec2			a_texcoord;
uniform vec2			v_location;
uniform vec2			v_scale;
uniform mat2			m_vp_matrix;
uniform mat2			m_rot_matrix;
uniform vec4			v_transform;

void main()
{
	vec2 ap = a_position * vec2(v_scale.x, v_scale.y);
	ap *= m_rot_matrix;
	ap += v_location;
	vec2 pos = ap * m_vp_matrix;
	gl_Position = vec4((pos.x - 1.0) * v_transform.x + v_transform.z, (-(pos.y - 1.0)) * v_transform.y + v_transform.w, 0.0, 1.0);
	v_texcoord = a_texcoord;
}