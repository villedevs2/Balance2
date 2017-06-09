varying vec4			v_texture;
attribute vec2			a_position;
attribute vec4			a_texture;
uniform mat2			m_vp_matrix;
uniform vec2			v_location;
uniform float			f_part_size;

void main()
{
	vec2 pos = a_position + v_location;
	pos = m_vp_matrix * pos;

	gl_Position = vec4(pos.x - 1.0, -(pos.y - 1.0), 0.0, 1.0);
	gl_PointSize = f_part_size;

	v_texture = a_texture;
}
