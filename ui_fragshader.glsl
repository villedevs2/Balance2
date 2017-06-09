#ifdef GL_ES_VERSION_2_0
precision mediump float;
#endif

varying vec2			v_texcoord;
uniform sampler2D		s_color_texture;

void main()
{
	gl_FragColor = texture2D(s_color_texture, v_texcoord);
}