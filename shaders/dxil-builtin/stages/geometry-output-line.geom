struct Inputs
{
	float4 a : TEXCOORD;
	float4 pos : SV_Position;
};

struct Outputs
{
	float4 a : TEXCOORD;
	float4 pos : SV_Position;
};

[maxvertexcount(2)]
void main(triangle Inputs input[3], inout LineStream<Outputs> o)
{
	Outputs res;
	res.a = input[0].a;
	res.pos = input[1].pos;
	o.Append(res);
	res.pos += 0.01;
	o.Append(res);
}
