m4_dnl These settings must be kept in sync between toolchain and worker
m4_define(`DEBIAN_CLANG',-16)m4_dnl
m4_define(`MACOSX_SDK_VERSION',14.5)m4_dnl
m4_define(`MACOSX_TARGET_ARCH',x86_64)m4_dnl
m4_define(`MACOSX_TARGET_VERSION',23.6)m4_dnl
m4_define(`MACOSX_DEPLOYMENT_TARGET',10.9)m4_dnl
m4_define(`MACOSX_ARCHITECTURES',`x86_64')m4_dnl
m4_define(`MACOSX_PORTS_ARCH_ARG',`')m4_dnl
m4_dnl m4_define(`PATCH_OSXCROSS',`')m4_dnl
m4_include(`apple/macosx.m4')m4_dnl

# This package isn't available on older MacOS X
helpers_package(discord-rpc, -DCMAKE_SYSTEM_NAME=Darwin)

# This package isn't available for i386 so put it here
# It's in macosx-common for any MacOS toolchain
common_package(sparkle)
