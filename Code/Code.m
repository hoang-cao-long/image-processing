a = [
    66  52  43 48  61 12   249 244 194 202 221 243 210 247 238 247;
    94  45  60 22  77  9   198 206 251 225 211 237 237 220 255 222;
    119 121 67 101 55  111 233 195 237 228 238 230 254 226 198 204;
    65  75  46  20  15 21  219 246 233 199 255 248 243 193 203 234;
    5   15  119 65  73 7   198 221 218 252 224 222 241 229 208 210;
    117 25  84  124 91 30  192 195 210 206 196 196 196 241 243 210;
    101 2   103 18  53 59  249 224 252 255 241 254 215 224 228 200;
    112 21  89  77  90 111 219 218 197 233 203 232 246 203 252 227;
    48  127 117 112 84 121 230 210 222 211 207 253 236 221 199 239;
    64  108 16  15  91 52  236 254 203 252 236 234 235 254 227 197;
    55  25  27  111 10 94  218 239 211 192 249 226 245 255 224 230;
    126 110 63  16 110 78  201 209 207 250 229 207 196 222 198 196;
    82  23  97  101 70 123 221 193 202 217 209 237 206 214 238 247;
    232 243 237 250 197 196 246 196 208 221 217 217 203 209 203 209;
    229 198 203 236 234 219 255 249 209 209 253 202 205 231 233 232;
    228 234 202 248 255 214 220 243 203 255 237 245 246 216 250 214;
];
b=[
    15 72 93 72 251 222 218 200 246 219 253 248 247 214 225 238;
    109 110 36 67 241 198 198 193 213 205 220 226 254 221 240 224;
    86 119 70 77 222 241 197 215 241 209 212 205 202 209 248 215;
    110 85 49 107 197 243 202 238 212 229 202 209 236 238 247 193;
    115 43 124 73 248 250 230 240 238 253 243 217 211 231 213 247;
    77 98 5 90 254 216 228 241 227 215 218 236 250 239 235 213;
    208 198 238 201 251 213 252 219 252 253 254 200 235 229 196 194;
    249 218 253 255 202 254 219 204 218 239 223 252 205 194 194 197;
    198 214 197 198 240 203 194 198 206 218 226 224 250 206 194 214;
    199 217 207 204 222 205 255 197 224 207 227 251 217 227 236 211;
    201 245 240 216 198 248 195 243 224 255 220 211 203 210 210 199;
    217 198 217 238 255 200 251 217 196 255 225 213 222 217 231 201;
    225 227 196 230 200 252 218 200 252 248 228 233 194 237 228 221;
    210 199 207 204 207 192 230 208 217 243 217 254 246 237 214 248;
    193 229 240 254 251 221 214 237 246 212 192 224 255 246 244 248;
    194 196 231 227 209 209 251 235 215 225 203 243 253 201 197 239;
];
c = [
    214 206 228 229 255 205 41 62 127 104 49 16 43 101 79 110;
    228 235 253 218 250 251 8 42 85 56 88 96 44 108 122 46;
    239 192 201 219 196 247 117 124 0 122 34 45 35 89 50 5;
    203 253 203 219 199 192 1 6 121 0 115 0 48 79 100 63;
    76 27 86 88 48 117 30 41 62 5 118 27 7 113 104 120;
    26 109 26 37 21 30 26 49 111 25 13 31 74 119 70 12;
    95 57 72 78 13 107 95 1 61 94 117 68 116 65 22 4;
    3 111 21 83 61 6 23 20 86 66 50 66 4 113 87 1;
    67 79 121 73 82 103 15 82 69 31 21 77 127 1 48 6;
    30 56 111 41 97 17 28 39 84 111 28 67 62 32 22 61;
    39 74 123 59 102 124 30 108 69 109 50 36 110 82 26 50;
    112 80 113 98 121 110 87 121 75 88 47 19 44 108 31 46;
    0 18 124 78 119 104 116 46 13 27 79 97 18 1 47 81;
    53 38 66 14 66 58 63 26 23 46 54 28 15 116 67 5;
    66 63 112 98 84 10 58 39 101 97 34 41 8 7 10 44;
    94 97 36 96 97 61 102 106 90 79 111 101 116 94 97 101;
    ];
standardized = a/255;
level = graythresh(standardized);
BW = im2bw(standardized, level);
new = BW*255;
imshow(new);
% imshow(BW);
% imshow(standardized);
% imshowpair(standardized,BW,'montage');

% 
% I = imread('coins.png');
% imshow(I)
% level = graythresh(I);
% BW = im2bw(I,level);
% figure, imshow(BW)