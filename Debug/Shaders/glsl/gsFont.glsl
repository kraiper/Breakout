﻿#version 430 core

layout(points) in;
layout(triangle_strip, max_vertices = 4) out;

in vec2		gpos[];
in vec2		gsize[];
in float	grotation[];
in vec4		gtintAlpha[];
in int		gtexIndex[];

out vec2 UV;
out vec4 tintAlpha;
out int texIndex;

void main()
{
	gl_Position	= vec4( gpos[0].x / 1024 * 2 - 1, gpos[0].y / 768 * 2 - 1, 0, 1 );
	tintAlpha = gtintAlpha[0];
	UV	= vec2( 0, 0 );
	texIndex = gtexIndex[0];
	EmitVertex();

	gl_Position = vec4( gpos[0].x / 1024 * 2 - 1, (gpos[0].y + gsize[0].y) / 768 * 2 - 1, 0, 1 );
	tintAlpha = gtintAlpha[0];
	UV = vec2( 0, 1 );
	texIndex = gtexIndex[0];
	EmitVertex();

	gl_Position = vec4( (gpos[0].x + gsize[0].x) / 1024 * 2 - 1, gpos[0].y / 768 * 2 - 1, 0, 1);
	tintAlpha = gtintAlpha[0];
	UV = vec2( 1, 0 );
	texIndex = gtexIndex[0];
	EmitVertex();

	gl_Position = vec4( (gpos[0].x + gsize[0].x) / 1024 * 2 - 1, (gpos[0].y + gsize[0].y) / 768 * 2 - 1, 0, 1 );
	tintAlpha = gtintAlpha[0];
	UV = vec2( 1, 1 );
	texIndex = gtexIndex[0];
	EmitVertex();

	EndPrimitive();
}