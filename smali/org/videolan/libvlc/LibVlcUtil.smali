.class public Lorg/videolan/libvlc/LibVlcUtil;
.super Ljava/lang/Object;
.source "LibVlcUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/LibVlcUtil$ElfData;,
        Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    }
.end annotation


# static fields
.field private static CPU_archs:[Ljava/lang/String; = null

.field private static final ELF_HEADER_SIZE:I = 0x34

.field private static final EM_386:I = 0x3

.field private static final EM_ARM:I = 0x28

.field private static final EM_MIPS:I = 0x8

.field private static final SECTION_HEADER_SIZE:I = 0x28

.field private static final SHT_ARM_ATTRIBUTES:I = 0x70000003

.field public static final TAG:Ljava/lang/String; = "VLC/LibVLC/Util"

.field private static errorMsg:Ljava/lang/String;

.field private static isCompatible:Z

.field private static machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 83
    sput-object v0, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 84
    sput-boolean v2, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 259
    sput-object v0, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    .line 290
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*Pre-v4"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "*v4"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "*v4T"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 291
    const-string v2, "v5T"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "v5TE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "v5TEJ"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 292
    const-string v2, "v6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "v6KZ"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "v6T2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "v6K"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "v7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 293
    const-string v2, "*v6-M"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "*v6S-M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "*v7E-M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "*v8"

    aput-object v2, v0, v1

    .line 290
    sput-object v0, Lorg/videolan/libvlc/LibVlcUtil;->CPU_archs:[Ljava/lang/String;

    .line 293
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static URItoFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "URI"    # Ljava/lang/String;

    .prologue
    .line 90
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static URItoFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "URI"    # Ljava/lang/String;

    .prologue
    .line 95
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/videolan/libvlc/LibVlcUtil;->URItoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public static getMachineSpecs()Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    return-object v0
.end method

.method private static getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 451
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gtz v2, :cond_1

    .line 457
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 452
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-char v0, v2

    .line 453
    .local v0, "c":C
    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static getUleb128(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 461
    const/4 v1, 0x0

    .line 464
    .local v1, "ret":I
    :cond_0
    shl-int/lit8 v1, v1, 0x7

    .line 465
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 466
    .local v0, "c":I
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 467
    and-int/lit16 v2, v0, 0x80

    .line 463
    if-gtz v2, :cond_0

    .line 469
    return v1
.end method

.method public static hasCompatibleCPU(Landroid/content/Context;)Z
    .locals 24
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    sget-object v20, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    if-nez v20, :cond_0

    sget-boolean v20, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    if-eqz v20, :cond_1

    :cond_0
    sget-boolean v20, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 253
    :goto_0
    return v20

    .line 104
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lhdp/http/MyApp;->VLC_SO_DIR:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "/libvlcjni.so"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/videolan/libvlc/LibVlcUtil;->readLib(Ljava/lang/String;)Lorg/videolan/libvlc/LibVlcUtil$ElfData;

    move-result-object v8

    .line 105
    .local v8, "elf":Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    if-nez v8, :cond_2

    .line 106
    const-string v20, "VLC/LibVLC/Util"

    const-string v21, "WARNING: Unable to read libvlcjni.so; cannot check device ABI!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v20, "VLC/LibVLC/Util"

    const-string v21, "WARNING: Cannot guarantee correct ABI for this build (may crash)!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/16 v20, 0x1

    goto :goto_0

    .line 111
    :cond_2
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 112
    .local v2, "CPU_ABI":Ljava/lang/String;
    const-string v3, "none"

    .line 113
    .local v3, "CPU_ABI2":Ljava/lang/String;
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 115
    :try_start_0
    const-class v20, Landroid/os/Build;

    const-string v21, "CPU_ABI2"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 119
    :cond_3
    :goto_1
    const-string v21, "VLC/LibVLC/Util"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v20, "machine = "

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v20, v0

    const/16 v23, 0x28

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    const-string v20, "arm"

    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v20, "VLC/LibVLC/Util"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "arch = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_arch:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v20, "VLC/LibVLC/Util"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "fpu = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_fpu:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/16 v16, 0x0

    .local v16, "hasNeon":Z
    const/4 v14, 0x0

    .local v14, "hasFpu":Z
    const/4 v12, 0x0

    .line 123
    .local v12, "hasArmV6":Z
    const/4 v13, 0x0

    .local v13, "hasArmV7":Z
    const/4 v15, 0x0

    .local v15, "hasMips":Z
    const/16 v17, 0x0

    .line 124
    .local v17, "hasX86":Z
    const/high16 v4, -0x40800000    # -1.0f

    .line 125
    .local v4, "bogoMIPS":F
    const/16 v19, 0x0

    .line 127
    .local v19, "processors":I
    const-string v20, "x86"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 128
    const-string v20, "x86"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 129
    :cond_4
    const/16 v17, 0x1

    .line 140
    :cond_5
    :goto_3
    :try_start_1
    new-instance v10, Ljava/io/FileReader;

    const-string v20, "/proc/cpuinfo"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 141
    .local v10, "fileReader":Ljava/io/FileReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 143
    .local v6, "br":Ljava/io/BufferedReader;
    :cond_6
    :goto_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .local v18, "line":Ljava/lang/String;
    if-nez v18, :cond_e

    .line 175
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    if-nez v19, :cond_7

    .line 183
    const/16 v19, 0x1

    .line 186
    :cond_7
    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    if-nez v17, :cond_17

    .line 187
    const-string v20, "x86 build on non-x86 device"

    sput-object v20, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 188
    const/16 v20, 0x0

    sput-boolean v20, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 189
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 119
    .end local v4    # "bogoMIPS":F
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .end local v12    # "hasArmV6":Z
    .end local v13    # "hasArmV7":Z
    .end local v14    # "hasFpu":Z
    .end local v15    # "hasMips":Z
    .end local v16    # "hasNeon":Z
    .end local v17    # "hasX86":Z
    .end local v18    # "line":Ljava/lang/String;
    .end local v19    # "processors":I
    :cond_8
    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v20, v0

    const/16 v23, 0x3

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    const-string v20, "x86"

    goto/16 :goto_2

    :cond_9
    const-string v20, "mips"

    goto/16 :goto_2

    .line 130
    .restart local v4    # "bogoMIPS":F
    .restart local v12    # "hasArmV6":Z
    .restart local v13    # "hasArmV7":Z
    .restart local v14    # "hasFpu":Z
    .restart local v15    # "hasMips":Z
    .restart local v16    # "hasNeon":Z
    .restart local v17    # "hasX86":Z
    .restart local v19    # "processors":I
    :cond_a
    const-string v20, "armeabi-v7a"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 131
    const-string v20, "armeabi-v7a"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 132
    :cond_b
    const/4 v13, 0x1

    .line 133
    const/4 v12, 0x1

    .line 134
    goto :goto_3

    :cond_c
    const-string v20, "armeabi"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 135
    const-string v20, "armeabi"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 136
    :cond_d
    const/4 v12, 0x1

    goto :goto_3

    .line 144
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v18    # "line":Ljava/lang/String;
    :cond_e
    if-nez v13, :cond_f

    :try_start_2
    const-string v20, "ARMv7"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 145
    const/4 v13, 0x1

    .line 146
    const/4 v12, 0x1

    .line 148
    :cond_f
    if-nez v13, :cond_10

    if-nez v12, :cond_10

    const-string v20, "ARMv6"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 149
    const/4 v12, 0x1

    .line 152
    :cond_10
    const-string v20, "clflush size"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 153
    const/16 v17, 0x1

    .line 154
    :cond_11
    const-string v20, "GenuineIntel"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 155
    const/16 v17, 0x1

    .line 158
    :cond_12
    const-string v20, "microsecond timers"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 159
    const/4 v15, 0x1

    .line 160
    :cond_13
    if-nez v16, :cond_14

    const-string v20, "neon"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 161
    const/16 v16, 0x1

    .line 162
    :cond_14
    if-nez v14, :cond_15

    const-string v20, "vfp"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 163
    const/4 v14, 0x1

    .line 164
    :cond_15
    const-string v20, "processor"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 165
    add-int/lit8 v19, v19, 0x1

    .line 166
    :cond_16
    const/16 v20, 0x0

    cmpg-float v20, v4, v20

    if-gez v20, :cond_6

    sget-object v20, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "bogomips"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 167
    const-string v20, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 169
    .local v5, "bogo_parts":[Ljava/lang/String;
    const/16 v20, 0x1

    :try_start_3
    aget-object v20, v5, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    goto/16 :goto_4

    .line 170
    :catch_0
    move-exception v7

    .line 171
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/high16 v4, -0x40800000    # -1.0f

    goto/16 :goto_4

    .line 176
    .end local v5    # "bogo_parts":[Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .end local v18    # "line":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 177
    .local v9, "ex":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    const-string v20, "IOException whilst reading cpuinfo flags"

    sput-object v20, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 179
    const/16 v20, 0x0

    sput-boolean v20, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 180
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 190
    .end local v9    # "ex":Ljava/io/IOException;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v18    # "line":Ljava/lang/String;
    :cond_17
    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v20, v0

    const/16 v21, 0x28

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    if-eqz v17, :cond_18

    .line 191
    const-string v20, "ARM build on x86 device"

    sput-object v20, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 192
    const/16 v20, 0x0

    sput-boolean v20, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 193
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 196
    :cond_18
    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    if-nez v15, :cond_19

    .line 197
    const-string v20, "MIPS build on non-MIPS device"

    sput-object v20, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 198
    const/16 v20, 0x0

    sput-boolean v20, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 199
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 200
    :cond_19
    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v20, v0

    const/16 v21, 0x28

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    if-eqz v15, :cond_1a

    .line 201
    const-string v20, "ARM build on MIPS device"

    sput-object v20, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 202
    const/16 v20, 0x0

    sput-boolean v20, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 203
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 206
    :cond_1a
    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v20, v0

    const/16 v21, 0x28

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    iget-object v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_arch:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "v7"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1b

    if-nez v13, :cond_1b

    .line 207
    const-string v20, "ARMv7 build on non-ARMv7 device"

    sput-object v20, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 208
    const/16 v20, 0x0

    sput-boolean v20, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 209
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 211
    :cond_1b
    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v20, v0

    const/16 v21, 0x28

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 212
    iget-object v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_arch:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "v6"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1c

    if-nez v12, :cond_1c

    .line 213
    const-string v20, "ARMv6 build on non-ARMv6 device"

    sput-object v20, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 214
    const/16 v20, 0x0

    sput-boolean v20, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 215
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 216
    :cond_1c
    iget-boolean v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_fpu:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1d

    if-nez v14, :cond_1d

    .line 217
    const-string v20, "FPU-enabled build on non-FPU device"

    sput-object v20, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 218
    const/16 v20, 0x0

    sput-boolean v20, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 219
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 223
    :cond_1d
    const/high16 v11, -0x40800000    # -1.0f

    .line 225
    .local v11, "frequency":F
    :try_start_4
    new-instance v10, Ljava/io/FileReader;

    .end local v10    # "fileReader":Ljava/io/FileReader;
    const-string v20, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 226
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6    # "br":Ljava/io/BufferedReader;
    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 227
    .restart local v6    # "br":Ljava/io/BufferedReader;
    const-string v18, ""
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 229
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .line 230
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v20

    const/high16 v21, 0x447a0000    # 1000.0f

    div-float v11, v20, v21

    .line 235
    :goto_5
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 240
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    :goto_6
    const/16 v20, 0x0

    sput-object v20, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 241
    const/16 v20, 0x1

    sput-boolean v20, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 243
    new-instance v20, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    invoke-direct/range {v20 .. v20}, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;-><init>()V

    sput-object v20, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    .line 244
    sget-object v20, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move-object/from16 v0, v20

    iput-boolean v12, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasArmV6:Z

    .line 245
    sget-object v20, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move-object/from16 v0, v20

    iput-boolean v13, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasArmV7:Z

    .line 246
    sget-object v20, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move-object/from16 v0, v20

    iput-boolean v14, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasFpu:Z

    .line 247
    sget-object v20, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move-object/from16 v0, v20

    iput-boolean v15, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasMips:Z

    .line 248
    sget-object v20, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move/from16 v0, v16

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasNeon:Z

    .line 249
    sget-object v20, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move/from16 v0, v17

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasX86:Z

    .line 250
    sget-object v20, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move-object/from16 v0, v20

    iput v4, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->bogoMIPS:F

    .line 251
    sget-object v20, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->processors:I

    .line 252
    sget-object v20, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move-object/from16 v0, v20

    iput v11, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->frequency:F

    .line 253
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 231
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v7

    .line 232
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v20, "VLC/LibVLC/Util"

    const-string v21, "Could not parse maximum CPU frequency!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v20, "VLC/LibVLC/Util"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Failed to parse: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    .line 236
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    :catch_3
    move-exception v9

    .line 237
    .restart local v9    # "ex":Ljava/io/IOException;
    const-string v20, "VLC/LibVLC/Util"

    const-string v21, "Could not find maximum CPU frequency!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 116
    .end local v4    # "bogoMIPS":F
    .end local v9    # "ex":Ljava/io/IOException;
    .end local v11    # "frequency":F
    .end local v12    # "hasArmV6":Z
    .end local v13    # "hasArmV7":Z
    .end local v14    # "hasFpu":Z
    .end local v15    # "hasMips":Z
    .end local v16    # "hasNeon":Z
    .end local v17    # "hasX86":Z
    .end local v18    # "line":Ljava/lang/String;
    .end local v19    # "processors":I
    :catch_4
    move-exception v20

    goto/16 :goto_1
.end method

.method public static isFroyoOrLater()Z
    .locals 2

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGingerbreadOrLater()Z
    .locals 2

    .prologue
    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoneycombOrLater()Z
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isICSOrLater()Z
    .locals 2

    .prologue
    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJellyBeanMR1OrLater()Z
    .locals 2

    .prologue
    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJellyBeanMR2OrLater()Z
    .locals 2

    .prologue
    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJellyBeanOrLater()Z
    .locals 2

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKitKatOrLater()Z
    .locals 2

    .prologue
    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readArmAttributes(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/LibVlcUtil$ElfData;)Z
    .locals 13
    .param p0, "in"    # Ljava/io/RandomAccessFile;
    .param p1, "elf"    # Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    const/4 v9, 0x1

    .line 390
    iget v10, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->sh_size:I

    new-array v2, v10, [B

    .line 391
    .local v2, "bytes":[B
    iget v10, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->sh_offset:I

    int-to-long v10, v10

    invoke-virtual {p0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 392
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 395
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 396
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v10, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 400
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    const/16 v11, 0x41

    if-eq v10, v11, :cond_8

    .line 401
    const/4 v9, 0x0

    .line 446
    :cond_0
    :goto_0
    return v9

    .line 405
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 406
    .local v6, "start_section":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 407
    .local v3, "length":I
    invoke-static {v1}, Lorg/videolan/libvlc/LibVlcUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v8

    .line 408
    .local v8, "vendor":Ljava/lang/String;
    const-string v10, "aeabi"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 410
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int v11, v6, v3

    if-ge v10, v11, :cond_0

    .line 411
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 412
    .local v5, "start":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 413
    .local v7, "tag":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 415
    .local v4, "size":I
    if-eq v7, v9, :cond_3

    .line 416
    add-int v10, v5, v4

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 422
    :cond_2
    invoke-static {v1}, Lorg/videolan/libvlc/LibVlcUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 423
    const/4 v10, 0x6

    if-ne v7, v10, :cond_4

    .line 424
    invoke-static {v1}, Lorg/videolan/libvlc/LibVlcUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 425
    .local v0, "arch":I
    sget-object v10, Lorg/videolan/libvlc/LibVlcUtil;->CPU_archs:[Ljava/lang/String;

    aget-object v10, v10, v0

    iput-object v10, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_arch:Ljava/lang/String;

    .line 421
    .end local v0    # "arch":I
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int v11, v5, v4

    if-lt v10, v11, :cond_2

    goto :goto_1

    .line 427
    :cond_4
    const/16 v10, 0x1b

    if-ne v7, v10, :cond_5

    .line 428
    invoke-static {v1}, Lorg/videolan/libvlc/LibVlcUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    .line 429
    iput-boolean v9, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_fpu:Z

    goto :goto_2

    .line 435
    :cond_5
    rem-int/lit16 v7, v7, 0x80

    .line 436
    const/4 v10, 0x4

    if-eq v7, v10, :cond_6

    const/4 v10, 0x5

    if-eq v7, v10, :cond_6

    if-eq v7, v12, :cond_6

    if-le v7, v12, :cond_7

    and-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_7

    .line 437
    :cond_6
    invoke-static {v1}, Lorg/videolan/libvlc/LibVlcUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_2

    .line 439
    :cond_7
    invoke-static {v1}, Lorg/videolan/libvlc/LibVlcUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    .line 404
    .end local v3    # "length":I
    .end local v4    # "size":I
    .end local v5    # "start":I
    .end local v6    # "start_section":I
    .end local v7    # "tag":I
    .end local v8    # "vendor":Ljava/lang/String;
    :cond_8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-gtz v10, :cond_1

    goto :goto_0
.end method

.method private static readHeader(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/LibVlcUtil$ElfData;)Z
    .locals 6
    .param p0, "in"    # Ljava/io/RandomAccessFile;
    .param p1, "elf"    # Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 342
    const/16 v4, 0x34

    new-array v1, v4, [B

    .line 343
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 344
    aget-byte v4, v1, v2

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_0

    .line 345
    aget-byte v4, v1, v3

    const/16 v5, 0x45

    if-ne v4, v5, :cond_0

    .line 346
    const/4 v4, 0x2

    aget-byte v4, v1, v4

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_0

    .line 347
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    const/16 v5, 0x46

    if-ne v4, v5, :cond_0

    .line 348
    const/4 v4, 0x4

    aget-byte v4, v1, v4

    if-eq v4, v3, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v2

    .line 352
    :cond_1
    const/4 v2, 0x5

    aget-byte v2, v1, v2

    if-ne v2, v3, :cond_2

    .line 353
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 352
    :goto_1
    iput-object v2, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->order:Ljava/nio/ByteOrder;

    .line 357
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 358
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 360
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    iput v2, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    .line 361
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iput v2, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_shoff:I

    .line 362
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    iput v2, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_shnum:I

    move v2, v3

    .line 363
    goto :goto_0

    .line 354
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1
.end method

.method private static readLib(Ljava/lang/String;)Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 296
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v1, v5

    .line 337
    :cond_1
    :goto_0
    return-object v1

    .line 300
    :cond_2
    const/4 v3, 0x0

    .line 302
    .local v3, "in":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v4, v2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .local v4, "in":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lorg/videolan/libvlc/LibVlcUtil$ElfData;-><init>(Lorg/videolan/libvlc/LibVlcUtil$ElfData;)V

    .line 305
    .local v1, "elf":Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    invoke-static {v4, v1}, Lorg/videolan/libvlc/LibVlcUtil;->readHeader(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/LibVlcUtil$ElfData;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_5

    move-object v3, v4

    .line 332
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 333
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_4
    :goto_2
    move-object v1, v5

    .line 306
    goto :goto_0

    .line 308
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :cond_5
    :try_start_3
    iget v6, v1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sparse-switch v6, :sswitch_data_0

    move-object v3, v4

    .line 323
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 332
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :sswitch_0
    if-eqz v4, :cond_1

    .line 333
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v5

    goto :goto_0

    .line 313
    :sswitch_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 314
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v3, v2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 315
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :try_start_6
    invoke-static {v3, v1}, Lorg/videolan/libvlc/LibVlcUtil;->readSection(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/LibVlcUtil$ElfData;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 317
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 318
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v4, v2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 319
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :try_start_7
    invoke-static {v4, v1}, Lorg/videolan/libvlc/LibVlcUtil;->readArmAttributes(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/LibVlcUtil$ElfData;)Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v6

    if-nez v6, :cond_6

    move-object v3, v4

    .line 320
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 332
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :cond_6
    if-eqz v4, :cond_1

    .line 333
    :try_start_8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 334
    :catch_1
    move-exception v5

    goto :goto_0

    .line 326
    .end local v1    # "elf":Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .line 327
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 332
    if-eqz v3, :cond_7

    .line 333
    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_7
    :goto_4
    move-object v1, v5

    .line 337
    goto :goto_0

    .line 328
    :catch_3
    move-exception v0

    .line 329
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 332
    if-eqz v3, :cond_7

    .line 333
    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_4

    .line 334
    :catch_4
    move-exception v6

    goto :goto_4

    .line 330
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 332
    :goto_6
    if-eqz v3, :cond_8

    .line 333
    :try_start_d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 336
    :cond_8
    :goto_7
    throw v5

    .line 334
    .restart local v1    # "elf":Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    :catch_5
    move-exception v6

    goto :goto_2

    .end local v1    # "elf":Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v6

    goto :goto_4

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v6

    goto :goto_7

    .line 330
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 328
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 326
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x28 -> :sswitch_1
    .end sparse-switch
.end method

.method private static readSection(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/LibVlcUtil$ElfData;)Z
    .locals 6
    .param p0, "in"    # Ljava/io/RandomAccessFile;
    .param p1, "elf"    # Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    const/16 v4, 0x28

    new-array v1, v4, [B

    .line 368
    .local v1, "bytes":[B
    iget v4, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_shoff:I

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 370
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_shnum:I

    if-lt v2, v4, :cond_0

    .line 386
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 371
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 374
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 375
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v4, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 377
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 378
    .local v3, "sh_type":I
    const v4, 0x70000003

    if-eq v3, v4, :cond_1

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_1
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    iput v4, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->sh_offset:I

    .line 382
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    iput v4, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->sh_size:I

    .line 383
    const/4 v4, 0x1

    goto :goto_1
.end method
