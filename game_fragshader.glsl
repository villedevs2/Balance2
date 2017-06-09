precision mediump float;

varying vec2			v_texcoord;
varying vec4			v_colormod;
uniform sampler2D		s_color_texture;

void main()
{
	gl_FragColor = texture2D(s_color_texture, v_texcoord) * v_colormod;
}