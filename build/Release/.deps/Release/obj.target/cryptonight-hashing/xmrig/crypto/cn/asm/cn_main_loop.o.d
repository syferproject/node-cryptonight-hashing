cmd_Release/obj.target/cryptonight-hashing/xmrig/crypto/cn/asm/cn_main_loop.o := cc -o Release/obj.target/cryptonight-hashing/xmrig/crypto/cn/asm/cn_main_loop.o ../xmrig/crypto/cn/asm/cn_main_loop.S '-DNODE_GYP_MODULE_NAME=cryptonight-hashing' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-D__STDC_FORMAT_MACROS' '-DOPENSSL_NO_PINSHARED' '-DOPENSSL_THREADS' '-DBUILDING_NODE_EXTENSION' -I/root/.cache/node-gyp/16.19.0/include/node -I/root/.cache/node-gyp/16.19.0/src -I/root/.cache/node-gyp/16.19.0/deps/openssl/config -I/root/.cache/node-gyp/16.19.0/deps/openssl/openssl/include -I/root/.cache/node-gyp/16.19.0/deps/uv/include -I/root/.cache/node-gyp/16.19.0/deps/zlib -I/root/.cache/node-gyp/16.19.0/deps/v8/include -I../xmrig-override -I../xmrig -I../xmrig/3rdparty/argon2/include -I../xmrig/3rdparty/argon2/lib -I../node_modules/nan  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -march=native -DXMRIG_FEATURE_ASM -DCPU_INTEL -DHAVE_SSE2 -DHAVE_SSSE3 -std=gnu11      -fPIC -DNDEBUG -Ofast -fno-fast-math -w -MMD -MF ./Release/.deps/Release/obj.target/cryptonight-hashing/xmrig/crypto/cn/asm/cn_main_loop.o.d.raw   -c
Release/obj.target/cryptonight-hashing/xmrig/crypto/cn/asm/cn_main_loop.o: \
 ../xmrig/crypto/cn/asm/cn_main_loop.S \
 ../xmrig/crypto/cn/asm/cn1/cnv1_single_main_loop.inc \
 ../xmrig/crypto/cn/asm/cn1/cnv1_double_main_loop.inc \
 ../xmrig/crypto/cn/asm/cn1/cnv1_quad_main_loop.inc \
 ../xmrig/crypto/cn/asm/cn2/cnv2_main_loop_ivybridge.inc \
 ../xmrig/crypto/cn/asm/cn2/cnv2_main_loop_ryzen.inc \
 ../xmrig/crypto/cn/asm/cn2/cnv2_main_loop_bulldozer.inc \
 ../xmrig/crypto/cn/asm/cn2/cnv2_double_main_loop_sandybridge.inc \
 ../xmrig/crypto/cn/asm/cn2/cnv2_rwz_main_loop.inc \
 ../xmrig/crypto/cn/asm/cn2/cnv2_rwz_double_main_loop.inc \
 ../xmrig/crypto/cn/asm/cn2/cnv2_upx_double_mainloop_zen3.inc
../xmrig/crypto/cn/asm/cn_main_loop.S:
../xmrig/crypto/cn/asm/cn1/cnv1_single_main_loop.inc:
../xmrig/crypto/cn/asm/cn1/cnv1_double_main_loop.inc:
../xmrig/crypto/cn/asm/cn1/cnv1_quad_main_loop.inc:
../xmrig/crypto/cn/asm/cn2/cnv2_main_loop_ivybridge.inc:
../xmrig/crypto/cn/asm/cn2/cnv2_main_loop_ryzen.inc:
../xmrig/crypto/cn/asm/cn2/cnv2_main_loop_bulldozer.inc:
../xmrig/crypto/cn/asm/cn2/cnv2_double_main_loop_sandybridge.inc:
../xmrig/crypto/cn/asm/cn2/cnv2_rwz_main_loop.inc:
../xmrig/crypto/cn/asm/cn2/cnv2_rwz_double_main_loop.inc:
../xmrig/crypto/cn/asm/cn2/cnv2_upx_double_mainloop_zen3.inc:
