{
    "targets": [
        {
            "target_name": "cryptonight-hashing",
             'conditions': [
                ['OS=="mac"', {
                  'xcode_settings': {
                    'GCC_ENABLE_CPP_EXCEPTIONS': 'YES'
                  }
                }]
              ],
            "sources": [
                '<!@(uname -a | grep "x86_64" >/dev/null && echo "xmrig/crypto/cn/asm/cn_main_loop.S" || echo)',
                '<!@(uname -a | grep "x86_64" >/dev/null && echo "xmrig/crypto/cn/asm/CryptonightR_template.S" || echo)',
                '<!@(uname -a | grep "x86_64" >/dev/null && echo "xmrig/crypto/cn/r/CryptonightR_gen.cpp" || echo)',
                '<!@(uname -a | grep "x86_64" >/dev/null && (./check_cpu.sh avx2 && echo "xmrig/crypto/cn/gpu/cn_gpu_avx.cpp" || echo) || echo)',
                '<!@(uname -a | grep "x86_64" >/dev/null && echo "xmrig/crypto/cn/gpu/cn_gpu_ssse3.cpp" || echo)',
                '<!@(uname -a | grep "x86_64" >/dev/null || echo "xmrig/crypto/cn/gpu/cn_gpu_arm.cpp" || echo)',
                '<!@(uname -a | grep "x86_64" >/dev/null && echo "xmrig-override/backend/cpu/platform/BasicCpuInfo.cpp" || echo)',
                '<!@(uname -a | grep "x86_64" >/dev/null || echo "xmrig-override/backend/cpu/platform/BasicCpuInfo_arm.cpp" || echo)',
                "multihashing.cc",
                "xmrig/extra.cpp",
                "xmrig/Mem_unix.cpp",
                "xmrig/common/crypto/keccak.cpp",
                "cn_gpu/cn_slow_hash_soft.cpp",
                "cn_gpu/cn_slow_hash_hard_intel.cpp",
                "cn_gpu/cn_slow_hash_hard_arm.cpp",
                "cn_gpu/cn_slow_hash_intel_avx2.cpp",
                "aux_hash/aux_hash.c",
                "cn_gpu/keccak.c"
            ],
            "include_dirs": [
                "xmrig-override",
                "xmrig",
                "xmrig/3rdparty/argon2/include",
                "xmrig/3rdparty/argon2/lib",
                "<!(node -e \"require('nan')\")"
            ],
            "cflags_c": [
                '<!@(uname -a | grep "aarch64" >/dev/null && echo "-march=armv8-a+crypto" || (uname -a | grep "armv7" >/dev/null && echo "-mfpu=neon -flax-vector-conversions" || echo "-march=native"))',
                '<!@(grep Intel /proc/cpuinfo >/dev/null && echo -DCPU_INTEL || (grep AMD /proc/cpuinfo >/dev/null && (test `awk \'/cpu family/ && $NF~/^[0-9]*$/ {print $NF}\' /proc/cpuinfo | head -n1` -ge 23 && echo -DAMD || echo -DAMD_OLD) || echo))>',
                "-std=gnu11 -fPIC -DNDEBUG -O3 -funroll-loops -fvariable-expansion-in-unroller -ftree-loop-if-convert-stores -fmerge-all-constants -fbranch-target-load-optimize2"
            ],
            "cflags_cc": [
                '<!@(uname -a | grep "aarch64" >/dev/null && echo "-march=armv8-a+crypto -flax-vector-conversions" || (uname -a | grep "armv7" >/dev/null && echo "-mfpu=neon -flax-vector-conversions" || echo "-march=native"))',
                '<!@(grep Intel /proc/cpuinfo >/dev/null && echo -DCPU_INTEL || (grep AMD /proc/cpuinfo >/dev/null && (test `awk \'/cpu family/ && $NF~/^[0-9]*$/ {print $NF}\' /proc/cpuinfo | head -n1` -ge 23 && echo -DAMD || echo -DAMD_OLD) || echo))>',
                "-std=gnu++11 -fPIC -DNDEBUG -O3 -s -funroll-loops -fvariable-expansion-in-unroller -ftree-loop-if-convert-stores -fmerge-all-constants -fbranch-target-load-optimize2"
            ]
        }
    ]
}
