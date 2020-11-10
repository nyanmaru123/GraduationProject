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
 263;
 -10.32606;-34.57047;-14.81369;,
 -10.32606;-31.98228;-14.81369;,
 -0.53331;-30.43130;-14.81369;,
 0.26648;-32.89279;-14.81369;,
 8.30087;-25.93006;-14.81369;,
 9.82212;-28.02393;-14.81369;,
 15.31169;-18.91924;-14.81369;,
 17.40556;-20.44049;-14.81369;,
 19.81292;-10.08506;-14.81369;,
 22.27441;-10.88484;-14.81369;,
 21.36392;-0.29231;-14.81369;,
 23.95208;-0.29231;-14.81369;,
 19.81292;9.50044;-14.81369;,
 22.27441;10.30022;-14.81369;,
 15.31169;18.33460;-14.81369;,
 17.40556;19.85586;-14.81369;,
 8.30086;25.34540;-14.81369;,
 9.82212;27.43929;-14.81369;,
 -0.53331;29.84666;-14.81369;,
 0.26647;32.30815;-14.81369;,
 -10.32606;31.39764;-14.81369;,
 -10.32606;33.98582;-14.81369;,
 -20.11882;29.84665;-14.81369;,
 -20.91860;32.30814;-14.81369;,
 -28.95300;25.34540;-14.81369;,
 -30.47424;27.43927;-14.81369;,
 -35.96383;18.33460;-14.81369;,
 -38.05767;19.85583;-14.81369;,
 -40.46505;9.50042;-14.81369;,
 -42.92653;10.30020;-14.81369;,
 -42.01603;-0.29231;-14.81369;,
 -44.60419;-0.29231;-14.81369;,
 -40.46504;-10.08509;-14.81369;,
 -42.92651;-10.88487;-14.81369;,
 -35.96380;-18.91927;-14.81369;,
 -38.05762;-20.44052;-14.81369;,
 -28.95295;-25.93008;-14.81369;,
 -30.47420;-28.02396;-14.81369;,
 -20.11879;-30.43131;-14.81369;,
 -20.91854;-32.89280;-14.81369;,
 0.26648;-32.89279;-14.81369;,
 0.26648;-32.89279;-12.48786;,
 -10.32606;-34.57047;-12.48786;,
 9.82212;-28.02393;-14.81369;,
 9.82212;-28.02393;-12.48786;,
 -10.32606;-34.57047;-14.81369;,
 -10.32606;-34.57047;-12.48786;,
 -20.91854;-32.89280;-12.48786;,
 -20.91854;-32.89280;-14.81369;,
 17.40556;-20.44049;-14.81369;,
 17.40556;-20.44049;-12.48786;,
 -30.47420;-28.02396;-12.48786;,
 -30.47420;-28.02396;-14.81369;,
 22.27441;-10.88484;-14.81369;,
 22.27441;-10.88484;-12.48786;,
 -38.05762;-20.44052;-12.48786;,
 -38.05762;-20.44052;-14.81369;,
 23.95208;-0.29231;-14.81369;,
 23.95208;-0.29231;-12.48786;,
 -42.92651;-10.88487;-12.48786;,
 -42.92651;-10.88487;-14.81369;,
 22.27441;10.30022;-14.81369;,
 22.27441;10.30022;-12.48786;,
 -44.60419;-0.29231;-12.48786;,
 -44.60419;-0.29231;-14.81369;,
 17.40556;19.85586;-14.81369;,
 17.40556;19.85586;-12.48786;,
 -42.92653;10.30020;-12.48786;,
 -42.92653;10.30020;-14.81369;,
 9.82212;27.43929;-14.81369;,
 9.82212;27.43929;-12.48786;,
 -38.05767;19.85583;-12.48786;,
 -38.05767;19.85583;-14.81369;,
 0.26647;32.30815;-14.81369;,
 0.26647;32.30815;-12.48786;,
 -30.47424;27.43927;-12.48786;,
 -30.47424;27.43927;-14.81369;,
 -10.32606;33.98582;-14.81369;,
 -10.32606;33.98582;-12.48786;,
 -20.91860;32.30814;-12.48786;,
 -20.91860;32.30814;-14.81369;,
 22.83402;-2.39560;-14.51713;,
 22.83402;1.64594;-14.51713;,
 22.83402;1.64594;-12.76385;,
 22.83402;-2.39560;-12.76385;,
 -43.68725;1.64594;-14.51713;,
 -43.68725;-2.39560;-14.51713;,
 -43.68725;-2.39560;-12.76385;,
 -43.68725;1.64594;-12.76385;,
 22.83402;1.64594;-14.51713;,
 -8.32701;1.64594;-14.51713;,
 -8.32701;1.64594;-12.76385;,
 22.83402;1.64594;-12.76385;,
 -8.32701;1.64594;-14.51713;,
 22.83402;-2.39560;-14.51713;,
 -8.32702;-2.39560;-14.51713;,
 -8.32702;-2.39560;-14.51713;,
 22.83402;-2.39560;-14.51713;,
 22.83402;-2.39560;-12.76385;,
 -8.32702;-2.39560;-12.76385;,
 -12.29878;1.64594;-14.51713;,
 -43.68725;1.64594;-14.51713;,
 -43.68725;1.64594;-12.76385;,
 -12.29878;1.64594;-12.76385;,
 -12.29878;1.64594;-14.51713;,
 -12.29878;-2.39560;-14.51713;,
 -43.68725;-2.39560;-14.51713;,
 -43.68725;-2.39560;-14.51713;,
 -12.29878;-2.39560;-14.51713;,
 -12.29878;-2.39560;-12.76385;,
 -43.68725;-2.39560;-12.76385;,
 -8.32702;-33.21452;-14.51713;,
 -12.29878;-33.21452;-14.51713;,
 -8.32702;-33.21452;-12.76385;,
 -12.29878;-33.21452;-12.76385;,
 -12.29878;33.60717;-14.51713;,
 -8.32701;33.60717;-14.51713;,
 -12.29878;33.60717;-12.76385;,
 -8.32701;33.60717;-12.76385;,
 36.10806;17.43423;25.56950;,
 39.84443;16.58752;25.56950;,
 39.84443;16.58752;-12.37705;,
 36.10806;17.43423;-12.37705;,
 27.97017;32.69370;25.56950;,
 28.05465;28.59211;25.56950;,
 28.05465;28.59211;-12.37705;,
 27.97017;32.69370;-12.37705;,
 28.08961;35.72262;25.56950;,
 28.08961;35.72262;-12.37705;,
 32.85119;19.17501;-12.37705;,
 32.85119;19.17501;25.56950;,
 30.53323;21.68369;-12.37705;,
 30.53323;21.68369;25.56950;,
 29.05447;24.51949;-12.37705;,
 29.05447;24.51949;25.56950;,
 46.73744;16.64218;-12.37705;,
 43.31110;16.49729;-12.37705;,
 43.31110;16.49729;25.56950;,
 46.73744;16.64218;25.56950;,
 -48.39163;-39.68457;25.56950;,
 -49.39163;-39.41662;25.56950;,
 -49.39163;-39.41662;-12.37705;,
 -48.39163;-39.68457;-12.37705;,
 -50.12368;-38.68457;25.56950;,
 -50.12368;-38.68457;-12.37705;,
 -50.39163;-37.68457;25.56950;,
 -50.39163;-37.68457;-12.37705;,
 50.19107;-37.68457;25.56950;,
 49.92312;-38.68457;25.56950;,
 49.92312;-38.68457;-12.37705;,
 50.19107;-37.68457;-12.37705;,
 49.19107;-39.41662;25.56950;,
 49.19107;-39.41662;-12.37705;,
 48.19107;-39.68457;25.56950;,
 48.19107;-39.68457;-12.37705;,
 -48.39163;39.12840;-12.37705;,
 -49.39163;38.86045;-12.37705;,
 -49.39163;38.86045;25.56950;,
 -48.39163;39.12840;25.56950;,
 -50.12368;38.12840;-12.37705;,
 -50.12368;38.12840;25.56950;,
 -50.39163;37.12840;-12.37705;,
 -50.39163;37.12840;25.56950;,
 48.21856;16.89029;25.56950;,
 49.20482;16.78755;25.56950;,
 49.20482;16.78755;-12.37705;,
 48.21856;16.89029;-12.37705;,
 49.92681;16.17644;25.56950;,
 49.92681;16.17644;-12.37705;,
 50.19107;15.22070;25.56950;,
 50.19107;15.22070;-12.37705;,
 28.20768;37.13536;-12.37705;,
 28.02302;38.13188;-12.37705;,
 28.02302;38.13188;25.56950;,
 28.20768;37.13536;25.56950;,
 27.35194;38.86139;-12.37705;,
 27.35194;38.86139;25.56950;,
 26.37426;39.12840;-12.37705;,
 26.37426;39.12840;25.56950;,
 -50.39163;37.12840;-12.37705;,
 -50.12368;38.12840;-12.37705;,
 -49.39163;38.86045;-12.37705;,
 -48.39163;39.12840;-12.37705;,
 26.37426;39.12840;-12.37705;,
 27.35194;38.86139;-12.37705;,
 28.02302;38.13188;-12.37705;,
 28.20768;37.13536;-12.37705;,
 28.08961;35.72262;-12.37705;,
 27.97017;32.69370;-12.37705;,
 28.05465;28.59211;-12.37705;,
 29.05447;24.51949;-12.37705;,
 30.53323;21.68369;-12.37705;,
 32.85119;19.17501;-12.37705;,
 36.10806;17.43423;-12.37705;,
 39.84443;16.58752;-12.37705;,
 43.31110;16.49729;-12.37705;,
 46.73744;16.64218;-12.37705;,
 48.21856;16.89029;-12.37705;,
 49.20482;16.78755;-12.37705;,
 49.92681;16.17644;-12.37705;,
 50.19107;15.22070;-12.37705;,
 50.19107;-37.68457;-12.37705;,
 49.92312;-38.68457;-12.37705;,
 49.19107;-39.41662;-12.37705;,
 48.19107;-39.68457;-12.37705;,
 -48.39163;-39.68457;-12.37705;,
 -49.39163;-39.41662;-12.37705;,
 -50.12368;-38.68457;-12.37705;,
 -50.39163;-37.68457;-12.37705;,
 50.19107;15.22070;25.56950;,
 49.92681;16.17644;25.56950;,
 49.20482;16.78755;25.56950;,
 48.21856;16.89029;25.56950;,
 46.73744;16.64218;25.56950;,
 43.31110;16.49729;25.56950;,
 39.84443;16.58752;25.56950;,
 36.10806;17.43423;25.56950;,
 32.85119;19.17501;25.56950;,
 30.53323;21.68369;25.56950;,
 29.05447;24.51949;25.56950;,
 28.05465;28.59211;25.56950;,
 27.97017;32.69370;25.56950;,
 28.08961;35.72262;25.56950;,
 28.20768;37.13536;25.56950;,
 28.02302;38.13188;25.56950;,
 27.35194;38.86139;25.56950;,
 26.37426;39.12840;25.56950;,
 -48.39163;39.12840;25.56950;,
 -49.39163;38.86045;25.56950;,
 -50.12368;38.12840;25.56950;,
 -50.39163;37.12840;25.56950;,
 -50.39163;-37.68457;25.56950;,
 -50.12368;-38.68457;25.56950;,
 -49.39163;-39.41662;25.56950;,
 -48.39163;-39.68457;25.56950;,
 48.19107;-39.68457;25.56950;,
 49.19107;-39.41662;25.56950;,
 49.92312;-38.68457;25.56950;,
 50.19107;-37.68457;25.56950;,
 -51.54226;39.81059;-28.74197;,
 52.16992;39.81059;-28.74197;,
 52.16992;-39.81059;-28.74197;,
 -51.54226;-39.81059;-28.74197;,
 52.16992;39.81059;-28.74197;,
 52.16992;39.81059;28.26160;,
 52.16992;-39.81059;28.26160;,
 52.16992;-39.81059;-28.74197;,
 52.16992;39.81059;28.26160;,
 -51.54226;39.81059;28.26160;,
 -51.54226;-39.81059;28.26160;,
 52.16992;-39.81059;28.26160;,
 -51.54226;39.81059;28.26160;,
 -51.54226;39.81059;-28.74197;,
 -51.54226;-39.81059;-28.74197;,
 -51.54226;-39.81059;28.26160;,
 52.16992;39.81059;-28.74197;,
 -51.54226;39.81059;-28.74197;,
 -51.54226;-39.81059;-28.74197;,
 52.16992;-39.81059;-28.74197;,
 -55.62416;44.87287;29.74654;,
 56.14483;44.87287;29.74654;,
 56.14483;-44.87287;29.74654;,
 -55.62416;-44.87287;29.74654;;
 
 96;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;5,4,6,7;,
 4;7,6,8,9;,
 4;9,8,10,11;,
 4;11,10,12,13;,
 4;13,12,14,15;,
 4;15,14,16,17;,
 4;17,16,18,19;,
 4;19,18,20,21;,
 4;21,20,22,23;,
 4;23,22,24,25;,
 4;25,24,26,27;,
 4;27,26,28,29;,
 4;29,28,30,31;,
 4;31,30,32,33;,
 4;33,32,34,35;,
 4;35,34,36,37;,
 4;37,36,38,39;,
 4;39,38,1,0;,
 4;40,41,42,0;,
 4;41,40,43,44;,
 4;45,46,47,48;,
 4;44,43,49,50;,
 4;48,47,51,52;,
 4;50,49,53,54;,
 4;52,51,55,56;,
 4;54,53,57,58;,
 4;56,55,59,60;,
 4;58,57,61,62;,
 4;60,59,63,64;,
 4;62,61,65,66;,
 4;64,63,67,68;,
 4;66,65,69,70;,
 4;68,67,71,72;,
 4;70,69,73,74;,
 4;72,71,75,76;,
 4;74,73,77,78;,
 4;76,75,79,80;,
 4;78,77,80,79;,
 4;81,82,83,84;,
 4;85,86,87,88;,
 4;89,90,91,92;,
 4;93,82,94,95;,
 4;96,97,98,99;,
 4;100,101,102,103;,
 4;85,104,105,106;,
 4;104,93,95,105;,
 4;107,108,109,110;,
 4;111,112,108,96;,
 4;113,111,96,99;,
 4;112,114,109,108;,
 4;112,111,113,114;,
 4;115,116,90,100;,
 4;117,115,100,103;,
 4;116,118,91,90;,
 4;116,115,117,118;,
 4;119,120,121,122;,
 4;123,124,125,126;,
 4;127,123,126,128;,
 4;122,129,130,119;,
 4;129,131,132,130;,
 4;131,133,134,132;,
 4;133,125,124,134;,
 4;135,136,137,138;,
 4;136,121,120,137;,
 4;139,140,141,142;,
 4;140,143,144,141;,
 4;143,145,146,144;,
 4;147,148,149,150;,
 4;148,151,152,149;,
 4;151,153,154,152;,
 4;155,156,157,158;,
 4;156,159,160,157;,
 4;159,161,162,160;,
 4;163,164,165,166;,
 4;164,167,168,165;,
 4;167,169,170,168;,
 4;171,172,173,174;,
 4;172,175,176,173;,
 4;175,177,178,176;,
 4;162,161,146,145;,
 4;142,154,153,139;,
 4;170,169,147,150;,
 4;158,178,177,155;,
 4;138,163,166,135;,
 4;174,127,128,171;,
 30;179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208;,
 30;209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238;,
 4;239,240,241,242;,
 4;243,244,245,246;,
 4;247,248,249,250;,
 4;251,252,253,254;,
 4;251,244,255,256;,
 4;257,258,245,254;,
 4;259,260,261,262;;
 
 MeshMaterialList {
  3;
  96;
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
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
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
  2,
  2,
  2,
  2,
  2,
  2,
  1;;
  Material {
   0.548800;0.612000;0.696800;1.000000;;
   3.750000;
   0.350000;0.350000;0.350000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
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
  112;
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  -0.000000;-0.000000;-1.000000;,
  -0.000000;-0.000000;-1.000000;,
  -0.000000;-0.000000;-1.000000;,
  -0.000000;-0.000000;-1.000000;,
  -0.000000;-0.000000;-1.000000;,
  -0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  -0.000000;-0.000000;-1.000000;,
  -0.000000;-0.000000;-1.000000;,
  -0.000000;-0.000000;-1.000000;,
  -0.000000;-0.000000;-1.000000;,
  -0.000000;-0.000000;-1.000000;,
  -0.000000;-0.000000;-1.000000;,
  0.309017;-0.951057;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.587786;-0.809017;0.000000;,
  -0.309016;-0.951057;-0.000000;,
  0.809021;-0.587780;0.000000;,
  0.809017;-0.587786;0.000000;,
  -0.587785;-0.809017;-0.000000;,
  0.951057;-0.309016;0.000000;,
  0.951057;-0.309016;0.000000;,
  -0.809016;-0.587786;-0.000000;,
  -0.809020;-0.587781;-0.000000;,
  1.000000;-0.000007;0.000000;,
  1.000000;0.000007;0.000000;,
  -0.951056;-0.309018;0.000000;,
  -0.951056;-0.309018;0.000000;,
  0.951055;0.309023;-0.000000;,
  0.951057;0.309017;-0.000000;,
  -1.000000;0.000006;-0.000000;,
  -1.000000;-0.000008;-0.000000;,
  0.809017;0.587786;0.000000;,
  0.809017;0.587786;0.000000;,
  -0.951057;0.309017;-0.000000;,
  -0.951055;0.309023;-0.000000;,
  0.587786;0.809017;0.000000;,
  -0.809017;0.587786;0.000000;,
  -0.809017;0.587786;0.000000;,
  0.309017;0.951057;0.000000;,
  -0.587786;0.809016;0.000000;,
  -0.000000;1.000000;0.000000;,
  -0.309017;0.951056;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;1.000000;-0.000002;,
  0.000000;-0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;-0.000002;,
  0.000000;-0.000000;-1.000000;,
  0.000000;-0.000000;-1.000000;,
  0.000000;1.000000;0.000000;,
  0.349329;0.937000;0.000000;,
  0.124114;0.992268;0.000000;,
  0.999956;-0.009408;0.000000;,
  0.991475;0.130294;0.000000;,
  0.998116;-0.061358;0.000000;,
  0.611438;0.791293;0.000000;,
  0.817761;0.575558;0.000000;,
  0.935649;0.352931;0.000000;,
  -0.103929;0.994585;0.000000;,
  -0.008120;0.999967;0.000000;,
  -0.130527;-0.991445;-0.000000;,
  -0.500001;-0.866025;-0.000000;,
  -0.866025;-0.500001;-0.000000;,
  -0.991445;-0.130527;-0.000000;,
  0.991445;-0.130527;0.000000;,
  0.866025;-0.500001;0.000000;,
  0.500001;-0.866025;0.000000;,
  0.130527;-0.991445;0.000000;,
  -0.130527;0.991445;0.000000;,
  -0.500001;0.866025;0.000000;,
  -0.866025;0.500001;0.000000;,
  -0.991445;0.130527;0.000000;,
  -0.031082;0.999517;0.000000;,
  0.392276;0.919847;0.000000;,
  0.842400;0.538852;0.000000;,
  0.990917;0.134473;0.000000;,
  0.998754;0.049902;0.000000;,
  0.894509;0.447050;0.000000;,
  0.520001;0.854165;0.000000;,
  0.132910;0.991128;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;0.000000;-1.000000;;
  96;
  4;0,0,1,0;,
  4;0,1,2,3;,
  4;3,2,4,5;,
  4;5,4,6,7;,
  4;7,6,0,0;,
  4;0,0,8,9;,
  4;9,8,10,11;,
  4;11,10,12,13;,
  4;13,12,0,0;,
  4;0,0,1,0;,
  4;0,1,1,0;,
  4;0,1,14,15;,
  4;15,14,16,17;,
  4;17,16,18,19;,
  4;19,18,1,0;,
  4;0,1,20,21;,
  4;21,20,22,23;,
  4;23,22,24,25;,
  4;25,24,0,0;,
  4;0,0,0,0;,
  4;26,26,27,27;,
  4;26,26,28,28;,
  4;27,27,29,29;,
  4;28,28,30,31;,
  4;29,29,32,32;,
  4;31,30,33,34;,
  4;32,32,35,36;,
  4;34,33,37,38;,
  4;36,35,39,40;,
  4;38,37,41,42;,
  4;40,39,43,44;,
  4;42,41,45,46;,
  4;44,43,47,48;,
  4;46,45,49,49;,
  4;48,47,50,51;,
  4;49,49,52,52;,
  4;51,50,53,53;,
  4;52,52,54,54;,
  4;53,53,55,55;,
  4;54,54,55,55;,
  4;56,57,56,56;,
  4;58,59,59,59;,
  4;60,60,60,60;,
  4;61,62,62,62;,
  4;63,63,63,63;,
  4;64,64,64,64;,
  4;62,65,62,62;,
  4;65,61,62,62;,
  4;63,63,63,63;,
  4;62,62,62,62;,
  4;56,56,56,56;,
  4;59,59,59,59;,
  4;63,63,63,63;,
  4;66,66,61,65;,
  4;59,59,59,58;,
  4;56,56,57,56;,
  4;67,67,67,67;,
  4;68,69,69,68;,
  4;70,71,71,70;,
  4;72,70,70,72;,
  4;68,73,73,68;,
  4;73,74,74,73;,
  4;74,75,75,74;,
  4;75,71,71,75;,
  4;76,77,77,76;,
  4;77,69,69,77;,
  4;78,79,79,78;,
  4;79,80,80,79;,
  4;80,81,81,80;,
  4;82,83,83,82;,
  4;83,84,84,83;,
  4;84,85,85,84;,
  4;86,87,87,86;,
  4;87,88,88,87;,
  4;88,89,89,88;,
  4;90,91,91,90;,
  4;91,92,92,91;,
  4;92,93,93,92;,
  4;94,95,95,94;,
  4;95,96,96,95;,
  4;96,97,97,96;,
  4;89,89,81,81;,
  4;78,85,85,78;,
  4;93,93,82,82;,
  4;86,97,97,86;,
  4;76,90,90,76;,
  4;94,72,72,94;,
  30;98,99,99,98,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,98,99,99,98,98,99,99,98;,
  30;100,101,101,101,100,100,101,102,101,102,101,101,101,101,100,103,101,101,104,102,102,104,104,102,102,104,104,102,102,104;,
  4;105,105,105,105;,
  4;106,106,106,106;,
  4;107,107,107,107;,
  4;108,108,108,108;,
  4;109,109,109,109;,
  4;110,110,110,110;,
  4;111,111,111,111;;
 }
 MeshTextureCoords {
  263;
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.050000;0.000000;,
  0.050000;0.500000;,
  0.000000;0.500000;,
  0.100000;0.000000;,
  0.100000;0.500000;,
  1.000000;0.000000;,
  1.000000;0.500000;,
  0.950000;0.500000;,
  0.950000;0.000000;,
  0.150000;0.000000;,
  0.150000;0.500000;,
  0.900000;0.500000;,
  0.900000;0.000000;,
  0.200000;0.000000;,
  0.200000;0.500000;,
  0.850000;0.500000;,
  0.850000;0.000000;,
  0.250000;0.000000;,
  0.250000;0.500000;,
  0.800000;0.500000;,
  0.800000;0.000000;,
  0.300000;0.000000;,
  0.300000;0.500000;,
  0.750000;0.500000;,
  0.750000;0.000000;,
  0.350000;0.000000;,
  0.350000;0.500000;,
  0.700000;0.500000;,
  0.700000;0.000000;,
  0.400000;0.000000;,
  0.400000;0.500000;,
  0.650000;0.500000;,
  0.650000;0.000000;,
  0.450000;0.000000;,
  0.450000;0.500000;,
  0.600000;0.500000;,
  0.600000;0.000000;,
  0.500000;0.000000;,
  0.500000;0.500000;,
  0.550000;0.500000;,
  0.550000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.488035;0.000000;,
  0.488035;1.000000;,
  0.000000;1.000000;,
  0.511965;0.000000;,
  1.000000;1.000000;,
  0.511965;1.000000;,
  0.511965;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.511965;1.000000;,
  0.522722;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.522722;1.000000;,
  0.477278;0.000000;,
  0.477278;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.477278;0.000000;,
  0.477278;1.000000;,
  0.000000;1.000000;,
  0.511965;0.000000;,
  0.477278;0.000000;,
  0.511965;1.000000;,
  0.477278;1.000000;,
  0.522722;0.000000;,
  0.488035;0.000000;,
  0.522722;1.000000;,
  0.488035;1.000000;,
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
  0.000000;1.000000;;
 }
}