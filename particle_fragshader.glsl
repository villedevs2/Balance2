#version 120

precision mediump float;

varying vec4			v_texture;
uniform sampler2D		s_color_texture;

void main()
{
	vec2 texcoord = (gl_PointCoord * v_texture.zw) + v_texture.xy;
	gl_FragColor = texture2D(s_color_texture, texcoord);
}