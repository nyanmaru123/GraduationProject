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
 129;
 0.00000;4.15693;-13.17444;,
 1.12486;3.84051;-14.29930;,
 0.00000;3.84051;-14.76523;,
 0.00000;4.15693;-13.17444;,
 1.59079;3.84051;-13.17444;,
 0.00000;4.15693;-13.17444;,
 1.12486;3.84051;-12.04957;,
 0.00000;4.15693;-13.17444;,
 -0.00000;3.84051;-11.58364;,
 0.00000;4.15693;-13.17444;,
 -1.12486;3.84051;-12.04957;,
 0.00000;4.15693;-13.17444;,
 -1.59079;3.84051;-13.17444;,
 0.00000;4.15693;-13.17444;,
 -1.12486;3.84051;-14.29930;,
 0.00000;4.15693;-13.17444;,
 0.00000;3.84051;-14.76523;,
 2.07847;2.93940;-15.25290;,
 0.00000;2.93940;-16.11383;,
 2.93940;2.93940;-13.17444;,
 2.07847;2.93940;-11.09598;,
 -0.00000;2.93940;-10.23505;,
 -2.07847;2.93940;-11.09598;,
 -2.93940;2.93940;-13.17444;,
 -2.07847;2.93940;-15.25290;,
 0.00000;2.93940;-16.11383;,
 2.71565;1.59079;-15.89009;,
 0.00000;1.59079;-17.01495;,
 3.84051;1.59079;-13.17444;,
 2.71565;1.59079;-10.45878;,
 -0.00000;1.59079;-9.33392;,
 -2.71565;1.59079;-10.45879;,
 -3.84051;1.59079;-13.17444;,
 -2.71565;1.59079;-15.89009;,
 0.00000;1.59079;-17.01495;,
 2.93940;-0.00000;-16.11383;,
 0.00000;-0.00000;-17.33137;,
 4.15693;-0.00000;-13.17444;,
 2.93940;-0.00000;-10.23505;,
 -0.00000;-0.00000;-9.01750;,
 -2.93940;-0.00000;-10.23505;,
 -4.15693;-0.00000;-13.17444;,
 -2.93940;-0.00000;-16.11383;,
 0.00000;-0.00000;-17.33137;,
 2.71565;-1.59079;-15.89009;,
 0.00000;-1.59079;-17.01495;,
 3.84051;-1.59079;-13.17444;,
 2.71565;-1.59079;-10.45878;,
 -0.00000;-1.59079;-9.33392;,
 -2.71565;-1.59079;-10.45879;,
 -3.84051;-1.59079;-13.17444;,
 -2.71565;-1.59079;-15.89009;,
 0.00000;-1.59079;-17.01495;,
 2.07847;-2.93940;-15.25290;,
 0.00000;-2.93940;-16.11383;,
 2.93940;-2.93940;-13.17444;,
 2.07847;-2.93940;-11.09598;,
 -0.00000;-2.93940;-10.23505;,
 -2.07847;-2.93940;-11.09598;,
 -2.93940;-2.93940;-13.17444;,
 -2.07847;-2.93940;-15.25290;,
 0.00000;-2.93940;-16.11383;,
 1.12486;-3.84051;-14.29930;,
 0.00000;-3.84051;-14.76523;,
 1.59079;-3.84051;-13.17444;,
 1.12486;-3.84051;-12.04957;,
 -0.00000;-3.84051;-11.58364;,
 -1.12486;-3.84051;-12.04957;,
 -1.59079;-3.84051;-13.17444;,
 -1.12486;-3.84051;-14.29930;,
 0.00000;-3.84051;-14.76523;,
 0.00000;-4.15693;-13.17444;,
 0.00000;-4.15693;-13.17444;,
 0.00000;-4.15693;-13.17444;,
 0.00000;-4.15693;-13.17444;,
 0.00000;-4.15693;-13.17444;,
 0.00000;-4.15693;-13.17444;,
 0.00000;-4.15693;-13.17444;,
 0.00000;-4.15693;-13.17444;,
 0.00000;10.00000;0.01636;,
 2.70598;9.23879;-2.68962;,
 0.00000;9.23879;-3.81047;,
 0.00000;10.00000;0.01636;,
 3.82683;9.23879;0.01636;,
 0.00000;10.00000;0.01636;,
 -2.70598;9.23879;-2.68962;,
 -3.82683;9.23879;0.01636;,
 0.00000;10.00000;0.01636;,
 0.00000;9.23879;-3.81047;,
 5.00000;7.07107;-4.98364;,
 0.00000;7.07107;-7.05471;,
 7.07107;7.07107;0.01636;,
 -5.00000;7.07107;-4.98364;,
 -7.07107;7.07107;0.01636;,
 0.00000;7.07107;-7.05471;,
 6.53281;3.82683;-6.51646;,
 0.00000;3.82683;-9.22243;,
 9.23879;3.82683;0.01636;,
 -6.53282;3.82683;-6.51646;,
 -9.23879;3.82683;0.01636;,
 0.00000;3.82683;-9.22243;,
 7.07107;-0.00000;-7.05471;,
 0.00000;-0.00000;-9.98364;,
 10.00000;-0.00000;0.01636;,
 -7.07107;-0.00000;-7.05471;,
 -10.00000;-0.00000;0.01636;,
 0.00000;-0.00000;-9.98364;,
 6.53281;-3.82684;-6.51646;,
 0.00000;-3.82684;-9.22243;,
 9.23879;-3.82684;0.01636;,
 -6.53282;-3.82684;-6.51646;,
 -9.23879;-3.82684;0.01636;,
 0.00000;-3.82684;-9.22243;,
 5.00000;-7.07107;-4.98364;,
 0.00000;-7.07107;-7.05471;,
 7.07107;-7.07107;0.01636;,
 -5.00000;-7.07107;-4.98364;,
 -7.07107;-7.07107;0.01636;,
 0.00000;-7.07107;-7.05471;,
 2.70598;-9.23879;-2.68962;,
 0.00000;-9.23879;-3.81047;,
 3.82683;-9.23879;0.01636;,
 -2.70598;-9.23879;-2.68962;,
 -3.82683;-9.23879;0.01636;,
 0.00000;-9.23879;-3.81047;,
 0.00000;-10.00000;0.01636;,
 0.00000;-10.00000;0.01636;,
 0.00000;-10.00000;0.01636;,
 0.00000;-10.00000;0.01636;;
 
 96;
 3;0,1,2;,
 3;3,4,1;,
 3;5,6,4;,
 3;7,8,6;,
 3;9,10,8;,
 3;11,12,10;,
 3;13,14,12;,
 3;15,16,14;,
 4;2,1,17,18;,
 4;1,4,19,17;,
 4;4,6,20,19;,
 4;6,8,21,20;,
 4;8,10,22,21;,
 4;10,12,23,22;,
 4;12,14,24,23;,
 4;14,16,25,24;,
 4;18,17,26,27;,
 4;17,19,28,26;,
 4;19,20,29,28;,
 4;20,21,30,29;,
 4;21,22,31,30;,
 4;22,23,32,31;,
 4;23,24,33,32;,
 4;24,25,34,33;,
 4;27,26,35,36;,
 4;26,28,37,35;,
 4;28,29,38,37;,
 4;29,30,39,38;,
 4;30,31,40,39;,
 4;31,32,41,40;,
 4;32,33,42,41;,
 4;33,34,43,42;,
 4;36,35,44,45;,
 4;35,37,46,44;,
 4;37,38,47,46;,
 4;38,39,48,47;,
 4;39,40,49,48;,
 4;40,41,50,49;,
 4;41,42,51,50;,
 4;42,43,52,51;,
 4;45,44,53,54;,
 4;44,46,55,53;,
 4;46,47,56,55;,
 4;47,48,57,56;,
 4;48,49,58,57;,
 4;49,50,59,58;,
 4;50,51,60,59;,
 4;51,52,61,60;,
 4;54,53,62,63;,
 4;53,55,64,62;,
 4;55,56,65,64;,
 4;56,57,66,65;,
 4;57,58,67,66;,
 4;58,59,68,67;,
 4;59,60,69,68;,
 4;60,61,70,69;,
 3;63,62,71;,
 3;62,64,72;,
 3;64,65,73;,
 3;65,66,74;,
 3;66,67,75;,
 3;67,68,76;,
 3;68,69,77;,
 3;69,70,78;,
 3;79,80,81;,
 3;82,83,80;,
 3;84,85,86;,
 3;87,88,85;,
 4;81,80,89,90;,
 4;80,83,91,89;,
 4;86,85,92,93;,
 4;85,88,94,92;,
 4;90,89,95,96;,
 4;89,91,97,95;,
 4;93,92,98,99;,
 4;92,94,100,98;,
 4;96,95,101,102;,
 4;95,97,103,101;,
 4;99,98,104,105;,
 4;98,100,106,104;,
 4;102,101,107,108;,
 4;101,103,109,107;,
 4;105,104,110,111;,
 4;104,106,112,110;,
 4;108,107,113,114;,
 4;107,109,115,113;,
 4;111,110,116,117;,
 4;110,112,118,116;,
 4;114,113,119,120;,
 4;113,115,121,119;,
 4;117,116,122,123;,
 4;116,118,124,122;,
 3;120,119,125;,
 3;119,121,126;,
 3;123,122,127;,
 3;122,124,128;;
 
 MeshMaterialList {
  4;
  96;
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
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
  1;;
  Material {
   0.511200;0.448800;0.473600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.476800;0.740000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.367059;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.229020;0.229020;0.229020;0.450000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  95;
  0.000000;1.000000;-0.000000;,
  0.000000;0.924735;-0.380611;,
  0.269133;0.924735;-0.269133;,
  0.380611;0.924735;-0.000000;,
  0.269133;0.924735;0.269133;,
  0.000000;0.924735;0.380612;,
  -0.269133;0.924735;0.269133;,
  -0.380611;0.924735;-0.000000;,
  -0.269133;0.924735;-0.269133;,
  0.000000;0.709231;-0.704976;,
  0.498494;0.709231;-0.498493;,
  0.704977;0.709231;-0.000000;,
  0.498494;0.709231;0.498493;,
  -0.000000;0.709231;0.704976;,
  -0.498494;0.709231;0.498494;,
  -0.704977;0.709230;-0.000000;,
  -0.498494;0.709230;-0.498493;,
  -0.000000;0.384551;-0.923104;,
  0.652733;0.384551;-0.652733;,
  0.923104;0.384551;-0.000000;,
  0.652733;0.384551;0.652732;,
  -0.000000;0.384552;0.923103;,
  -0.652733;0.384551;0.652732;,
  -0.923104;0.384551;0.000000;,
  -0.652733;0.384551;-0.652733;,
  0.000000;0.000000;-1.000000;,
  0.707107;0.000000;-0.707107;,
  1.000000;-0.000000;0.000000;,
  0.707107;0.000000;0.707106;,
  -0.000000;0.000000;1.000000;,
  -0.707107;0.000000;0.707106;,
  -1.000000;0.000000;0.000000;,
  -0.707107;0.000000;-0.707107;,
  0.000000;-0.384551;-0.923104;,
  0.652733;-0.384551;-0.652733;,
  0.923104;-0.384551;-0.000000;,
  0.652733;-0.384551;0.652732;,
  -0.000000;-0.384552;0.923103;,
  -0.652733;-0.384551;0.652732;,
  -0.923104;-0.384551;0.000000;,
  -0.652733;-0.384551;-0.652733;,
  0.000000;-0.709231;-0.704976;,
  0.498494;-0.709231;-0.498493;,
  0.704977;-0.709231;-0.000000;,
  0.498494;-0.709231;0.498493;,
  -0.000000;-0.709231;0.704976;,
  -0.498494;-0.709231;0.498493;,
  -0.704977;-0.709231;-0.000000;,
  -0.498494;-0.709231;-0.498493;,
  0.000000;-0.924735;-0.380611;,
  0.269133;-0.924735;-0.269133;,
  0.380611;-0.924735;-0.000000;,
  0.269133;-0.924735;0.269133;,
  0.000000;-0.924735;0.380612;,
  -0.269133;-0.924735;0.269133;,
  -0.380611;-0.924735;-0.000000;,
  -0.269133;-0.924735;-0.269133;,
  0.000000;-1.000000;-0.000000;,
  0.000000;0.990253;-0.139281;,
  0.000000;0.924735;-0.380611;,
  0.269132;0.924735;-0.269132;,
  0.375967;0.913453;-0.155731;,
  -0.375967;0.913453;-0.155731;,
  -0.269132;0.924735;-0.269132;,
  0.000000;0.709230;-0.704977;,
  0.498494;0.709230;-0.498494;,
  0.676715;0.680798;-0.280304;,
  -0.676715;0.680798;-0.280304;,
  -0.498494;0.709230;-0.498494;,
  -0.000000;0.384551;-0.923104;,
  0.652733;0.384551;-0.652733;,
  0.862224;0.359189;-0.357145;,
  -0.862224;0.359189;-0.357145;,
  -0.652733;0.384551;-0.652733;,
  -0.000000;0.000000;-1.000000;,
  0.707107;0.000000;-0.707107;,
  0.923880;0.000000;-0.382683;,
  -0.923880;0.000000;-0.382683;,
  -0.707107;0.000000;-0.707107;,
  -0.000000;-0.384551;-0.923104;,
  0.652733;-0.384551;-0.652733;,
  0.862224;-0.359189;-0.357145;,
  -0.862224;-0.359189;-0.357145;,
  -0.652733;-0.384551;-0.652733;,
  0.000000;-0.709230;-0.704977;,
  0.498494;-0.709230;-0.498494;,
  0.676715;-0.680798;-0.280305;,
  -0.676715;-0.680798;-0.280304;,
  -0.498494;-0.709230;-0.498494;,
  0.000000;-0.924735;-0.380611;,
  0.269132;-0.924735;-0.269132;,
  0.375967;-0.913453;-0.155731;,
  -0.375967;-0.913453;-0.155731;,
  -0.269132;-0.924735;-0.269132;,
  0.000000;-0.990253;-0.139281;;
  96;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,7,6;,
  3;0,8,7;,
  3;0,1,8;,
  4;1,2,10,9;,
  4;2,3,11,10;,
  4;3,4,12,11;,
  4;4,5,13,12;,
  4;5,6,14,13;,
  4;6,7,15,14;,
  4;7,8,16,15;,
  4;8,1,9,16;,
  4;9,10,18,17;,
  4;10,11,19,18;,
  4;11,12,20,19;,
  4;12,13,21,20;,
  4;13,14,22,21;,
  4;14,15,23,22;,
  4;15,16,24,23;,
  4;16,9,17,24;,
  4;17,18,26,25;,
  4;18,19,27,26;,
  4;19,20,28,27;,
  4;20,21,29,28;,
  4;21,22,30,29;,
  4;22,23,31,30;,
  4;23,24,32,31;,
  4;24,17,25,32;,
  4;25,26,34,33;,
  4;26,27,35,34;,
  4;27,28,36,35;,
  4;28,29,37,36;,
  4;29,30,38,37;,
  4;30,31,39,38;,
  4;31,32,40,39;,
  4;32,25,33,40;,
  4;33,34,42,41;,
  4;34,35,43,42;,
  4;35,36,44,43;,
  4;36,37,45,44;,
  4;37,38,46,45;,
  4;38,39,47,46;,
  4;39,40,48,47;,
  4;40,33,41,48;,
  4;41,42,50,49;,
  4;42,43,51,50;,
  4;43,44,52,51;,
  4;44,45,53,52;,
  4;45,46,54,53;,
  4;46,47,55,54;,
  4;47,48,56,55;,
  4;48,41,49,56;,
  3;49,50,57;,
  3;50,51,57;,
  3;51,52,57;,
  3;52,53,57;,
  3;53,54,57;,
  3;54,55,57;,
  3;55,56,57;,
  3;56,49,57;,
  3;58,60,59;,
  3;58,61,60;,
  3;58,63,62;,
  3;58,59,63;,
  4;59,60,65,64;,
  4;60,61,66,65;,
  4;62,63,68,67;,
  4;63,59,64,68;,
  4;64,65,70,69;,
  4;65,66,71,70;,
  4;67,68,73,72;,
  4;68,64,69,73;,
  4;69,70,75,74;,
  4;70,71,76,75;,
  4;72,73,78,77;,
  4;73,69,74,78;,
  4;74,75,80,79;,
  4;75,76,81,80;,
  4;77,78,83,82;,
  4;78,74,79,83;,
  4;79,80,85,84;,
  4;80,81,86,85;,
  4;82,83,88,87;,
  4;83,79,84,88;,
  4;84,85,90,89;,
  4;85,86,91,90;,
  4;87,88,93,92;,
  4;88,84,89,93;,
  3;89,90,94;,
  3;90,91,94;,
  3;92,93,94;,
  3;93,89,94;;
 }
 MeshTextureCoords {
  129;
  0.062500;0.000000;,
  0.125000;0.125000;,
  0.000000;0.125000;,
  0.187500;0.000000;,
  0.250000;0.125000;,
  0.312500;0.000000;,
  0.375000;0.125000;,
  0.437500;0.000000;,
  0.500000;0.125000;,
  0.562500;0.000000;,
  0.625000;0.125000;,
  0.687500;0.000000;,
  0.750000;0.125000;,
  0.812500;0.000000;,
  0.875000;0.125000;,
  0.937500;0.000000;,
  1.000000;0.125000;,
  0.125000;0.250000;,
  0.000000;0.250000;,
  0.250000;0.250000;,
  0.375000;0.250000;,
  0.500000;0.250000;,
  0.625000;0.250000;,
  0.750000;0.250000;,
  0.875000;0.250000;,
  1.000000;0.250000;,
  0.125000;0.375000;,
  0.000000;0.375000;,
  0.250000;0.375000;,
  0.375000;0.375000;,
  0.500000;0.375000;,
  0.625000;0.375000;,
  0.750000;0.375000;,
  0.875000;0.375000;,
  1.000000;0.375000;,
  0.125000;0.500000;,
  0.000000;0.500000;,
  0.250000;0.500000;,
  0.375000;0.500000;,
  0.500000;0.500000;,
  0.625000;0.500000;,
  0.750000;0.500000;,
  0.875000;0.500000;,
  1.000000;0.500000;,
  0.125000;0.625000;,
  0.000000;0.625000;,
  0.250000;0.625000;,
  0.375000;0.625000;,
  0.500000;0.625000;,
  0.625000;0.625000;,
  0.750000;0.625000;,
  0.875000;0.625000;,
  1.000000;0.625000;,
  0.125000;0.750000;,
  0.000000;0.750000;,
  0.250000;0.750000;,
  0.375000;0.750000;,
  0.500000;0.750000;,
  0.625000;0.750000;,
  0.750000;0.750000;,
  0.875000;0.750000;,
  1.000000;0.750000;,
  0.125000;0.875000;,
  0.000000;0.875000;,
  0.250000;0.875000;,
  0.375000;0.875000;,
  0.500000;0.875000;,
  0.625000;0.875000;,
  0.750000;0.875000;,
  0.875000;0.875000;,
  1.000000;0.875000;,
  0.062500;1.000000;,
  0.187500;1.000000;,
  0.312500;1.000000;,
  0.437500;1.000000;,
  0.562500;1.000000;,
  0.687500;1.000000;,
  0.812500;1.000000;,
  0.937500;1.000000;,
  0.062500;0.000000;,
  0.125000;0.125000;,
  0.000000;0.125000;,
  0.187500;0.000000;,
  0.250000;0.125000;,
  0.812500;0.000000;,
  0.875000;0.125000;,
  0.750000;0.125000;,
  0.937500;0.000000;,
  1.000000;0.125000;,
  0.125000;0.250000;,
  0.000000;0.250000;,
  0.250000;0.250000;,
  0.875000;0.250000;,
  0.750000;0.250000;,
  1.000000;0.250000;,
  0.125000;0.375000;,
  0.000000;0.375000;,
  0.250000;0.375000;,
  0.875000;0.375000;,
  0.750000;0.375000;,
  1.000000;0.375000;,
  0.125000;0.500000;,
  0.000000;0.500000;,
  0.250000;0.500000;,
  0.875000;0.500000;,
  0.750000;0.500000;,
  1.000000;0.500000;,
  0.125000;0.625000;,
  0.000000;0.625000;,
  0.250000;0.625000;,
  0.875000;0.625000;,
  0.750000;0.625000;,
  1.000000;0.625000;,
  0.125000;0.750000;,
  0.000000;0.750000;,
  0.250000;0.750000;,
  0.875000;0.750000;,
  0.750000;0.750000;,
  1.000000;0.750000;,
  0.125000;0.875000;,
  0.000000;0.875000;,
  0.250000;0.875000;,
  0.875000;0.875000;,
  0.750000;0.875000;,
  1.000000;0.875000;,
  0.062500;1.000000;,
  0.187500;1.000000;,
  0.812500;1.000000;,
  0.937500;1.000000;;
 }
}