xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 304;
 36.30857;18.06431;24.64144;,
 40.04494;17.21761;24.64144;,
 40.04494;17.21761;-19.47571;,
 36.30857;18.06431;-19.47571;,
 28.17069;33.32379;24.64144;,
 28.25516;29.22219;24.64144;,
 28.25516;29.22219;-19.47571;,
 28.17069;33.32379;-19.47571;,
 28.29012;36.35270;24.64144;,
 28.29012;36.35270;-19.47571;,
 33.05170;19.80509;-19.47571;,
 33.05170;19.80509;24.64144;,
 30.73374;22.31377;-19.47571;,
 30.73374;22.31377;24.64144;,
 29.25498;25.14958;-19.47571;,
 29.25498;25.14958;24.64144;,
 46.93795;17.27227;-19.47571;,
 43.51161;17.12738;-19.47571;,
 43.51161;17.12738;24.64144;,
 46.93795;17.27227;24.64144;,
 -48.39667;-40.66870;24.64144;,
 -49.39667;-40.40075;24.64144;,
 -49.39667;-40.40075;-19.47571;,
 -48.39667;-40.66870;-19.47571;,
 -50.12872;-39.66870;24.64144;,
 -50.12872;-39.66870;-19.47571;,
 -50.39667;-38.66870;24.64144;,
 -50.39667;-38.66870;-19.47571;,
 50.39158;-38.66870;24.64144;,
 50.12364;-39.66870;24.64144;,
 50.12364;-39.66870;-19.47571;,
 50.39158;-38.66870;-19.47571;,
 49.39158;-40.40075;24.64144;,
 49.39158;-40.40075;-19.47571;,
 48.39158;-40.66870;24.64144;,
 48.39158;-40.66870;-19.47571;,
 -48.39667;39.75849;-19.47571;,
 -49.39667;39.49054;-19.47571;,
 -49.39667;39.49054;24.64144;,
 -48.39667;39.75849;24.64144;,
 -50.12872;38.75849;-19.47571;,
 -50.12872;38.75849;24.64144;,
 -50.39667;37.75849;-19.47571;,
 -50.39667;37.75849;24.64144;,
 48.41907;17.52037;24.64144;,
 49.40533;17.41763;24.64144;,
 49.40533;17.41763;-19.47571;,
 48.41907;17.52037;-19.47571;,
 50.12731;16.80652;24.64144;,
 50.12731;16.80652;-19.47571;,
 50.39158;15.85079;24.64144;,
 50.39158;15.85079;-19.47571;,
 28.40819;37.76544;-19.47571;,
 28.22353;38.76196;-19.47571;,
 28.22353;38.76196;24.64144;,
 28.40819;37.76544;24.64144;,
 27.55245;39.49147;-19.47571;,
 27.55245;39.49147;24.64144;,
 26.57477;39.75849;-19.47571;,
 26.57477;39.75849;24.64144;,
 -50.39667;37.75849;-19.47571;,
 -50.12872;38.75849;-19.47571;,
 -49.39667;39.49054;-19.47571;,
 -48.39667;39.75849;-19.47571;,
 26.57477;39.75849;-19.47571;,
 27.55245;39.49147;-19.47571;,
 28.22353;38.76196;-19.47571;,
 28.40819;37.76544;-19.47571;,
 28.29012;36.35270;-19.47571;,
 28.17069;33.32379;-19.47571;,
 28.25516;29.22219;-19.47571;,
 29.25498;25.14958;-19.47571;,
 30.73374;22.31377;-19.47571;,
 33.05170;19.80509;-19.47571;,
 36.30857;18.06431;-19.47571;,
 40.04494;17.21761;-19.47571;,
 43.51161;17.12738;-19.47571;,
 46.93795;17.27227;-19.47571;,
 48.41907;17.52037;-19.47571;,
 49.40533;17.41763;-19.47571;,
 50.12731;16.80652;-19.47571;,
 50.39158;15.85079;-19.47571;,
 50.39158;-38.66870;-19.47571;,
 50.12364;-39.66870;-19.47571;,
 49.39158;-40.40075;-19.47571;,
 48.39158;-40.66870;-19.47571;,
 -48.39667;-40.66870;-19.47571;,
 -49.39667;-40.40075;-19.47571;,
 -50.12872;-39.66870;-19.47571;,
 -50.39667;-38.66870;-19.47571;,
 50.39158;15.85079;24.64144;,
 50.12731;16.80652;24.64144;,
 49.40533;17.41763;24.64144;,
 48.41907;17.52037;24.64144;,
 46.93795;17.27227;24.64144;,
 43.51161;17.12738;24.64144;,
 40.04494;17.21761;24.64144;,
 36.30857;18.06431;24.64144;,
 33.05170;19.80509;24.64144;,
 30.73374;22.31377;24.64144;,
 29.25498;25.14958;24.64144;,
 28.25516;29.22219;24.64144;,
 28.17069;33.32379;24.64144;,
 28.29012;36.35270;24.64144;,
 28.40819;37.76544;24.64144;,
 28.22353;38.76196;24.64144;,
 27.55245;39.49147;24.64144;,
 26.57477;39.75849;24.64144;,
 -48.39667;39.75849;24.64144;,
 -49.39667;39.49054;24.64144;,
 -50.12872;38.75849;24.64144;,
 -50.39667;37.75849;24.64144;,
 -50.39667;-38.66870;24.64144;,
 -50.12872;-39.66870;24.64144;,
 -49.39667;-40.40075;24.64144;,
 -48.39667;-40.66870;24.64144;,
 48.39158;-40.66870;24.64144;,
 49.39158;-40.40075;24.64144;,
 50.12364;-39.66870;24.64144;,
 50.39158;-38.66870;24.64144;,
 -40.07011;9.89399;-21.28898;,
 -40.07011;13.26491;-21.28898;,
 32.46549;13.26491;-21.28898;,
 32.46549;9.89399;-21.28898;,
 -40.07011;13.26491;-21.28898;,
 -40.07011;13.26491;-19.25214;,
 32.46549;13.26491;-19.25214;,
 32.46549;13.26491;-21.28898;,
 -40.07011;13.26491;-19.25214;,
 -40.07011;9.89399;-19.25214;,
 32.46549;9.89399;-19.25214;,
 32.46549;13.26491;-19.25214;,
 -40.07011;9.89399;-19.25214;,
 -40.07011;9.89399;-21.28898;,
 32.46549;9.89399;-21.28898;,
 32.46549;9.89399;-19.25214;,
 -40.07011;13.26491;-21.28898;,
 -40.07011;9.89399;-21.28898;,
 32.46549;9.89399;-21.28898;,
 32.46549;13.26491;-21.28898;,
 -39.97412;-13.35385;-21.28898;,
 -39.97412;-9.98295;-21.28898;,
 32.28891;-9.98295;-21.28898;,
 32.28891;-13.35385;-21.28898;,
 -39.97412;-9.98295;-21.28898;,
 -39.97412;-9.98295;-19.25214;,
 32.28891;-9.98295;-19.25214;,
 32.28891;-9.98295;-21.28898;,
 -39.97412;-9.98295;-19.25214;,
 -39.97412;-13.35385;-19.25214;,
 32.28891;-13.35385;-19.25214;,
 32.28891;-9.98295;-19.25214;,
 -39.97412;-13.35385;-19.25214;,
 -39.97412;-13.35385;-21.28898;,
 32.28891;-13.35385;-21.28898;,
 32.28891;-13.35385;-19.25214;,
 -39.97412;-9.98295;-21.28898;,
 -39.97412;-13.35385;-21.28898;,
 32.28891;-13.35385;-21.28898;,
 32.28891;-9.98295;-21.28898;,
 -24.87252;-13.15657;-21.28898;,
 -25.27957;-13.15657;-21.28898;,
 -25.27957;13.11817;-21.28898;,
 -24.87252;13.11817;-21.28898;,
 -25.27957;-13.15657;-21.28898;,
 -25.27957;-13.15657;-19.25214;,
 -25.27957;13.11817;-19.25214;,
 -25.27957;13.11817;-21.28898;,
 -25.27957;-13.15657;-19.25214;,
 -24.87252;-13.15657;-19.25214;,
 -24.87252;13.11817;-19.25214;,
 -25.27957;13.11817;-19.25214;,
 -24.87252;-13.15657;-19.25214;,
 -24.87252;-13.15657;-21.28898;,
 -24.87252;13.11817;-21.28898;,
 -24.87252;13.11817;-19.25214;,
 -25.27957;-13.15657;-21.28898;,
 -24.87252;-13.15657;-21.28898;,
 -24.87252;13.11817;-21.28898;,
 -25.27957;13.11817;-21.28898;,
 -38.23773;-13.15657;-21.28898;,
 -40.06299;-13.15657;-21.28898;,
 -40.06299;13.11817;-21.28898;,
 -38.23773;13.11817;-21.28898;,
 -40.06299;-13.15657;-21.28898;,
 -40.06299;-13.15657;-19.25214;,
 -40.06299;13.11817;-19.25214;,
 -40.06299;13.11817;-21.28898;,
 -40.06299;-13.15657;-19.25214;,
 -38.23773;-13.15657;-19.25214;,
 -38.23773;13.11817;-19.25214;,
 -40.06299;13.11817;-19.25214;,
 -38.23773;-13.15657;-19.25214;,
 -38.23773;-13.15657;-21.28898;,
 -38.23773;13.11817;-21.28898;,
 -38.23773;13.11817;-19.25214;,
 -40.06299;-13.15657;-21.28898;,
 -38.23773;-13.15657;-21.28898;,
 -38.23773;13.11817;-21.28898;,
 -40.06299;13.11817;-21.28898;,
 -10.87252;-13.15657;-21.28898;,
 -11.27957;-13.15657;-21.28898;,
 -11.27957;13.11817;-21.28898;,
 -10.87252;13.11817;-21.28898;,
 -11.27957;-13.15657;-21.28898;,
 -11.27957;-13.15657;-19.25214;,
 -11.27957;13.11817;-19.25214;,
 -11.27957;13.11817;-21.28898;,
 -11.27957;-13.15657;-19.25214;,
 -10.87252;-13.15657;-19.25214;,
 -10.87252;13.11817;-19.25214;,
 -11.27957;13.11817;-19.25214;,
 -10.87252;-13.15657;-19.25214;,
 -10.87252;-13.15657;-21.28898;,
 -10.87252;13.11817;-21.28898;,
 -10.87252;13.11817;-19.25214;,
 -11.27957;-13.15657;-21.28898;,
 -10.87252;-13.15657;-21.28898;,
 -10.87252;13.11817;-21.28898;,
 -11.27957;13.11817;-21.28898;,
 3.12748;-13.15657;-21.28898;,
 2.72043;-13.15657;-21.28898;,
 2.72043;13.11817;-21.28898;,
 3.12748;13.11817;-21.28898;,
 2.72043;-13.15657;-21.28898;,
 2.72043;-13.15657;-19.25214;,
 2.72043;13.11817;-19.25214;,
 2.72043;13.11817;-21.28898;,
 2.72043;-13.15657;-19.25214;,
 3.12748;-13.15657;-19.25214;,
 3.12748;13.11817;-19.25214;,
 2.72043;13.11817;-19.25214;,
 3.12748;-13.15657;-19.25214;,
 3.12748;-13.15657;-21.28898;,
 3.12748;13.11817;-21.28898;,
 3.12748;13.11817;-19.25214;,
 2.72043;-13.15657;-21.28898;,
 3.12748;-13.15657;-21.28898;,
 3.12748;13.11817;-21.28898;,
 2.72043;13.11817;-21.28898;,
 17.12748;-13.15657;-21.28898;,
 16.72043;-13.15657;-21.28898;,
 16.72043;13.11817;-21.28898;,
 17.12748;13.11817;-21.28898;,
 16.72043;-13.15657;-21.28898;,
 16.72043;-13.15657;-19.25214;,
 16.72043;13.11817;-19.25214;,
 16.72043;13.11817;-21.28898;,
 16.72043;-13.15657;-19.25214;,
 17.12748;-13.15657;-19.25214;,
 17.12748;13.11817;-19.25214;,
 16.72043;13.11817;-19.25214;,
 17.12748;-13.15657;-19.25214;,
 17.12748;-13.15657;-21.28898;,
 17.12748;13.11817;-21.28898;,
 17.12748;13.11817;-19.25214;,
 16.72043;-13.15657;-21.28898;,
 17.12748;-13.15657;-21.28898;,
 17.12748;13.11817;-21.28898;,
 16.72043;13.11817;-21.28898;,
 32.45611;-13.15655;-21.28898;,
 30.46736;-13.15655;-21.28898;,
 30.46736;12.99949;-21.28898;,
 32.45611;12.99949;-21.28898;,
 30.46736;-13.15655;-21.28898;,
 30.46736;-13.15655;-19.25214;,
 30.46736;12.99949;-19.25214;,
 30.46736;12.99949;-21.28898;,
 30.46736;-13.15655;-19.25214;,
 32.45611;-13.15655;-19.25214;,
 32.45611;12.99949;-19.25214;,
 30.46736;12.99949;-19.25214;,
 32.45611;-13.15655;-19.25214;,
 32.45611;-13.15655;-21.28898;,
 32.45611;12.99949;-21.28898;,
 32.45611;12.99949;-19.25214;,
 30.46736;-13.15655;-21.28898;,
 32.45611;-13.15655;-21.28898;,
 32.45611;12.99949;-21.28898;,
 30.46736;12.99949;-21.28898;,
 -51.67458;40.72787;-25.59772;,
 52.03759;40.72787;-25.59772;,
 52.03759;-41.09757;-25.59772;,
 -51.67458;-41.09757;-25.59772;,
 52.03759;40.72787;-25.59772;,
 52.03759;40.72787;27.03685;,
 52.03759;-41.09757;27.03685;,
 52.03759;-41.09757;-25.59772;,
 52.03759;40.72787;27.03685;,
 -51.67458;40.72787;27.03685;,
 -51.67458;-41.09757;27.03685;,
 52.03759;-41.09757;27.03685;,
 -51.67458;40.72787;27.03685;,
 -51.67458;40.72787;-25.59772;,
 -51.67458;-41.09757;-25.59772;,
 -51.67458;-41.09757;27.03685;,
 52.03759;40.72787;-25.59772;,
 -51.67458;40.72787;-25.59772;,
 -51.67458;-41.09757;-25.59772;,
 52.03759;-41.09757;-25.59772;,
 -56.02770;44.87287;29.34299;,
 55.74128;44.87287;29.34299;,
 55.74128;-44.87287;29.34299;,
 -56.02770;-44.87287;29.34299;;
 
 87;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,4,7,9;,
 4;3,10,11,0;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,6,5,15;,
 4;16,17,18,19;,
 4;17,2,1,18;,
 4;20,21,22,23;,
 4;21,24,25,22;,
 4;24,26,27,25;,
 4;28,29,30,31;,
 4;29,32,33,30;,
 4;32,34,35,33;,
 4;36,37,38,39;,
 4;37,40,41,38;,
 4;40,42,43,41;,
 4;44,45,46,47;,
 4;45,48,49,46;,
 4;48,50,51,49;,
 4;52,53,54,55;,
 4;53,56,57,54;,
 4;56,58,59,57;,
 4;43,42,27,26;,
 4;23,35,34,20;,
 4;51,50,28,31;,
 4;39,59,58,36;,
 4;19,44,47,16;,
 4;55,8,9,52;,
 30;60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89;,
 30;90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119;,
 4;120,121,122,123;,
 4;124,125,126,127;,
 4;128,129,130,131;,
 4;132,133,134,135;,
 4;132,125,136,137;,
 4;138,139,126,135;,
 4;140,141,142,143;,
 4;144,145,146,147;,
 4;148,149,150,151;,
 4;152,153,154,155;,
 4;152,145,156,157;,
 4;158,159,146,155;,
 4;160,161,162,163;,
 4;164,165,166,167;,
 4;168,169,170,171;,
 4;172,173,174,175;,
 4;172,165,176,177;,
 4;178,179,166,175;,
 4;180,181,182,183;,
 4;184,185,186,187;,
 4;188,189,190,191;,
 4;192,193,194,195;,
 4;192,185,196,197;,
 4;198,199,186,195;,
 4;200,201,202,203;,
 4;204,205,206,207;,
 4;208,209,210,211;,
 4;212,213,214,215;,
 4;212,205,216,217;,
 4;218,219,206,215;,
 4;220,221,222,223;,
 4;224,225,226,227;,
 4;228,229,230,231;,
 4;232,233,234,235;,
 4;232,225,236,237;,
 4;238,239,226,235;,
 4;240,241,242,243;,
 4;244,245,246,247;,
 4;248,249,250,251;,
 4;252,253,254,255;,
 4;252,245,256,257;,
 4;258,259,246,255;,
 4;260,261,262,263;,
 4;264,265,266,267;,
 4;268,269,270,271;,
 4;272,273,274,275;,
 4;272,265,276,277;,
 4;278,279,266,275;,
 4;280,281,282,283;,
 4;284,285,286,287;,
 4;288,289,290,291;,
 4;292,293,294,295;,
 4;292,285,296,297;,
 4;298,299,286,295;,
 4;300,301,302,303;;
 
 MeshMaterialList {
  3;
  87;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  2,
  2,
  2,
  2,
  2,
  1;;
  Material {
   0.549020;0.611765;0.696471;1.000000;;
   3.750000;
   0.350000;0.350000;0.350000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;0.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  56;
  0.349329;0.937000;0.000000;,
  0.124114;0.992268;0.000000;,
  0.999956;-0.009408;0.000000;,
  0.991476;0.130293;0.000000;,
  0.998116;-0.061359;0.000000;,
  0.611438;0.791293;0.000000;,
  0.817761;0.575559;0.000000;,
  0.935649;0.352931;0.000000;,
  -0.103929;0.994585;0.000000;,
  -0.008120;0.999967;0.000000;,
  -0.130527;-0.991445;-0.000000;,
  -0.500001;-0.866025;-0.000000;,
  -0.866024;-0.500003;-0.000000;,
  -0.991444;-0.130530;-0.000000;,
  0.991445;-0.130524;0.000000;,
  0.866025;-0.500000;0.000000;,
  0.499999;-0.866026;0.000000;,
  0.130527;-0.991445;0.000000;,
  -0.130527;0.991445;0.000000;,
  -0.500001;0.866025;0.000000;,
  -0.866024;0.500003;0.000000;,
  -0.991444;0.130530;0.000000;,
  -0.031082;0.999517;0.000000;,
  0.392278;0.919847;0.000000;,
  0.842400;0.538853;0.000000;,
  0.990917;0.134476;0.000000;,
  0.998754;0.049901;0.000000;,
  0.894509;0.447051;0.000000;,
  0.520001;0.854166;0.000000;,
  0.132910;0.991128;0.000000;,
  -0.000000;0.000000;-1.000000;,
  -0.000000;0.000000;-1.000000;,
  -0.000000;0.000000;-1.000000;,
  -0.000000;0.000000;-1.000000;,
  -0.000000;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;-1.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;0.000000;-1.000000;;
  87;
  4;0,1,1,0;,
  4;2,3,3,2;,
  4;4,2,2,4;,
  4;0,5,5,0;,
  4;5,6,6,5;,
  4;6,7,7,6;,
  4;7,3,3,7;,
  4;8,9,9,8;,
  4;9,1,1,9;,
  4;10,11,11,10;,
  4;11,12,12,11;,
  4;12,13,13,12;,
  4;14,15,15,14;,
  4;15,16,16,15;,
  4;16,17,17,16;,
  4;18,19,19,18;,
  4;19,20,20,19;,
  4;20,21,21,20;,
  4;22,23,23,22;,
  4;23,24,24,23;,
  4;24,25,25,24;,
  4;26,27,27,26;,
  4;27,28,28,27;,
  4;28,29,29,28;,
  4;21,21,13,13;,
  4;10,17,17,10;,
  4;25,25,14,14;,
  4;18,29,29,18;,
  4;8,22,22,8;,
  4;26,4,4,26;,
  30;30,31,31,32,31,31,33,31,31,31,31,34,31,31,33,33,31,31,31,31,31,34,31,31,31,33,33,31,31,30;,
  30;35,36,37,35,37,38,37,37,39,40,38,38,38,41,40,37,39,37,42,41,39,41,41,39,41,37,37,37,37,37;,
  4;43,43,43,43;,
  4;44,44,44,44;,
  4;45,45,45,45;,
  4;46,46,46,46;,
  4;47,47,47,47;,
  4;48,48,48,48;,
  4;43,43,43,43;,
  4;44,44,44,44;,
  4;45,45,45,45;,
  4;46,46,46,46;,
  4;47,47,47,47;,
  4;48,48,48,48;,
  4;43,43,43,43;,
  4;47,47,47,47;,
  4;45,45,45,45;,
  4;48,48,48,48;,
  4;46,46,46,46;,
  4;44,44,44,44;,
  4;43,43,43,43;,
  4;47,47,47,47;,
  4;45,45,45,45;,
  4;48,48,48,48;,
  4;46,46,46,46;,
  4;44,44,44,44;,
  4;43,43,43,43;,
  4;47,47,47,47;,
  4;45,45,45,45;,
  4;48,48,48,48;,
  4;46,46,46,46;,
  4;44,44,44,44;,
  4;43,43,43,43;,
  4;47,47,47,47;,
  4;45,45,45,45;,
  4;48,48,48,48;,
  4;46,46,46,46;,
  4;44,44,44,44;,
  4;43,43,43,43;,
  4;47,47,47,47;,
  4;45,45,45,45;,
  4;48,48,48,48;,
  4;46,46,46,46;,
  4;44,44,44,44;,
  4;43,43,43,43;,
  4;47,47,47,47;,
  4;45,45,45,45;,
  4;48,48,48,48;,
  4;46,46,46,46;,
  4;44,44,44,44;,
  4;49,49,49,49;,
  4;50,50,50,50;,
  4;51,51,51,51;,
  4;52,52,52,52;,
  4;53,53,53,53;,
  4;54,54,54,54;,
  4;55,55,55,55;;
 }
 MeshTextureCoords {
  304;
  0.878672;0.258068;,
  0.919115;0.309682;,
  0.169115;0.559682;,
  0.253672;0.633068;,
  0.757344;0.103227;,
  0.797787;0.154841;,
  0.422787;0.779841;,
  0.507344;0.853227;,
  0.716902;0.051614;,
  0.591902;0.926614;,
  0.295951;0.669761;,
  0.858451;0.232261;,
  0.338230;0.706455;,
  0.838230;0.206455;,
  0.380508;0.743148;,
  0.818008;0.180648;,
  0.084557;0.486295;,
  0.126836;0.522989;,
  0.939336;0.335489;,
  0.959557;0.361295;,
  0.019884;1.000000;,
  0.013256;0.991541;,
  0.346589;0.324874;,
  0.019884;0.000000;,
  0.006628;0.983082;,
  0.673295;0.649749;,
  0.000000;0.974623;,
  1.000000;0.974623;,
  1.000000;0.979366;,
  0.993372;0.986244;,
  0.326705;0.652911;,
  0.000000;0.979366;,
  0.986744;0.993122;,
  0.653411;0.326455;,
  0.980116;1.000000;,
  0.980116;0.000000;,
  0.017176;1.000000;,
  0.344784;0.675125;,
  0.011451;0.008459;,
  0.017176;0.000000;,
  0.672392;0.350251;,
  0.005725;0.016918;,
  1.000000;0.025377;,
  0.000000;0.025377;,
  0.976901;0.383430;,
  0.984601;0.400135;,
  0.032196;0.447730;,
  0.048294;0.454823;,
  0.992301;0.416839;,
  0.016098;0.440636;,
  1.000000;0.433543;,
  0.000000;0.433543;,
  0.626977;0.957055;,
  0.637745;0.971370;,
  0.686512;0.020136;,
  0.700126;0.030204;,
  0.648514;0.985685;,
  0.672897;0.010068;,
  0.659283;1.000000;,
  0.659283;0.000000;,
  0.000000;0.025377;,
  0.002722;0.012635;,
  0.010158;0.003201;,
  0.017176;0.000000;,
  0.659283;0.000000;,
  0.671042;0.004047;,
  0.685992;0.015102;,
  0.700126;0.030204;,
  0.716902;0.051614;,
  0.757344;0.103227;,
  0.797787;0.154841;,
  0.818008;0.180648;,
  0.838230;0.206455;,
  0.858451;0.232261;,
  0.878672;0.258068;,
  0.919115;0.309682;,
  0.939336;0.335489;,
  0.959557;0.361295;,
  0.976901;0.383430;,
  0.989640;0.412152;,
  0.997373;0.423683;,
  1.000000;0.433543;,
  1.000000;0.979366;,
  0.997336;0.989683;,
  0.990058;0.997235;,
  0.980116;1.000000;,
  0.019884;1.000000;,
  0.009942;0.997235;,
  0.002722;0.987258;,
  0.000000;0.974623;,
  0.000000;0.433543;,
  0.003095;0.419277;,
  0.011549;0.400934;,
  0.023098;0.383430;,
  0.040443;0.361295;,
  0.060664;0.335489;,
  0.080885;0.309682;,
  0.121328;0.258068;,
  0.141549;0.232261;,
  0.161770;0.206455;,
  0.181992;0.180648;,
  0.202213;0.154841;,
  0.242656;0.103227;,
  0.283098;0.051614;,
  0.299874;0.030204;,
  0.314008;0.015102;,
  0.328958;0.004047;,
  0.340717;0.000000;,
  0.982824;0.000000;,
  0.989849;0.003207;,
  0.997336;0.012688;,
  1.000000;0.025377;,
  1.000000;0.974623;,
  0.997336;0.987312;,
  0.990058;0.996600;,
  0.980116;1.000000;,
  0.019884;1.000000;,
  0.009942;0.996600;,
  0.002344;0.987017;,
  0.000000;0.979366;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;;
 }
}
