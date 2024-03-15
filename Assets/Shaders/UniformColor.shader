Shader "Unlit/UniformColor"
{
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            
            float4 vert (float4 vertex : POSITION) : SV_POSITION
            {
                return UnityObjectToClipPos(vertex);
            }
            
            fixed4 _Color_Color;

            fixed4 frag () : SV_Target
            {
                return _Color;
            }
            ENDCG
        }
    }
}
