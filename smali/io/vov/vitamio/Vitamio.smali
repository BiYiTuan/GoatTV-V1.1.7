.class public Lio/vov/vitamio/Vitamio;
.super Ljava/lang/Object;
.source "Vitamio.java"


# static fields
.field private static final LIBS_ARM_CODECS:[Ljava/lang/String;

.field private static final LIBS_AV:[Ljava/lang/String;

.field public static LIBS_DIR:Ljava/lang/String; = null

.field private static final LIBS_LOCK:Ljava/lang/String; = ".lock"

.field private static final LIBS_MIPS_CODECS:[Ljava/lang/String;

.field private static final LIBS_PLAYER:[Ljava/lang/String;

.field private static final LIBS_SCANNER:[Ljava/lang/String;

.field private static final LIBS_X86_CODECS:[Ljava/lang/String;

.field private static final VITAMIO_ARMV6:I = 0x3c

.field private static final VITAMIO_ARMV6_VFP:I = 0x3d

.field private static final VITAMIO_ARMV7_NEON:I = 0x47

.field private static final VITAMIO_ARMV7_VFPV3:I = 0x46

.field private static final VITAMIO_MIPS:I = 0x28

.field private static final VITAMIO_NOT_SUPPORTED:I = -0x1

.field private static final VITAMIO_X86:I = 0x32

.field private static vitamioLibraryPath:Ljava/lang/String;

.field private static vitamioPackage:Ljava/lang/String;

.field private static final vitamioType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    const-string v1, "/data/data/%s/files/libarm.so"

    sput-object v1, Lio/vov/vitamio/Vitamio;->LIBS_DIR:Ljava/lang/String;

    .line 46
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "libvvo.7.so"

    aput-object v2, v1, v4

    .line 47
    const-string v2, "libvvo.8.so"

    aput-object v2, v1, v5

    const-string v2, "libffmpeg.so"

    aput-object v2, v1, v6

    const-string v2, "libOMX.9.so"

    aput-object v2, v1, v7

    const-string v2, "libOMX.11.so"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 48
    const-string v3, "libOMX.14.so"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "libOMX.18.so"

    aput-object v3, v1, v2

    .line 46
    sput-object v1, Lio/vov/vitamio/Vitamio;->LIBS_ARM_CODECS:[Ljava/lang/String;

    .line 49
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "libffmpeg.so"

    aput-object v2, v1, v4

    .line 50
    const-string v2, "libOMX.9.so"

    aput-object v2, v1, v5

    const-string v2, "libOMX.14.so"

    aput-object v2, v1, v6

    const-string v2, "libOMX.18.so"

    aput-object v2, v1, v7

    .line 49
    sput-object v1, Lio/vov/vitamio/Vitamio;->LIBS_X86_CODECS:[Ljava/lang/String;

    .line 51
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "libffmpeg.so"

    aput-object v2, v1, v4

    .line 52
    const-string v2, "libOMX.14.so"

    aput-object v2, v1, v5

    .line 51
    sput-object v1, Lio/vov/vitamio/Vitamio;->LIBS_MIPS_CODECS:[Ljava/lang/String;

    .line 53
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "libvplayer.so"

    aput-object v2, v1, v4

    sput-object v1, Lio/vov/vitamio/Vitamio;->LIBS_PLAYER:[Ljava/lang/String;

    .line 54
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "libvscanner.so"

    aput-object v2, v1, v4

    sput-object v1, Lio/vov/vitamio/Vitamio;->LIBS_SCANNER:[Ljava/lang/String;

    .line 55
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "libvao.0.so"

    aput-object v2, v1, v4

    const-string v2, "libvvo.0.so"

    aput-object v2, v1, v5

    .line 56
    const-string v2, "libvvo.9.so"

    aput-object v2, v1, v6

    const-string v2, "libvvo.j.so"

    aput-object v2, v1, v7

    .line 55
    sput-object v1, Lio/vov/vitamio/Vitamio;->LIBS_AV:[Ljava/lang/String;

    .line 68
    invoke-static {}, Lio/vov/vitamio/utils/CPU;->getFeature()I

    move-result v0

    .line 69
    .local v0, "cpu":I
    and-int/lit8 v1, v0, 0x20

    if-lez v1, :cond_0

    .line 70
    const/16 v1, 0x47

    sput v1, Lio/vov/vitamio/Vitamio;->vitamioType:I

    .line 361
    :goto_0
    const-string v1, "vinit"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 362
    return-void

    .line 71
    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-lez v1, :cond_1

    .line 72
    and-int/lit8 v1, v0, 0x8

    if-lez v1, :cond_1

    .line 73
    const/16 v1, 0x46

    sput v1, Lio/vov/vitamio/Vitamio;->vitamioType:I

    goto :goto_0

    .line 74
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-lez v1, :cond_2

    .line 75
    and-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_2

    .line 76
    const/16 v1, 0x3d

    sput v1, Lio/vov/vitamio/Vitamio;->vitamioType:I

    goto :goto_0

    .line 77
    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_3

    .line 78
    const/16 v1, 0x3c

    sput v1, Lio/vov/vitamio/Vitamio;->vitamioType:I

    goto :goto_0

    .line 79
    :cond_3
    and-int/lit8 v1, v0, 0x40

    if-lez v1, :cond_4

    .line 80
    const/16 v1, 0x32

    sput v1, Lio/vov/vitamio/Vitamio;->vitamioType:I

    goto :goto_0

    .line 81
    :cond_4
    and-int/lit16 v1, v0, 0x80

    if-lez v1, :cond_5

    .line 82
    const/16 v1, 0x28

    sput v1, Lio/vov/vitamio/Vitamio;->vitamioType:I

    goto :goto_0

    .line 84
    :cond_5
    const/4 v1, -0x1

    sput v1, Lio/vov/vitamio/Vitamio;->vitamioType:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyCompressedLib(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "rawID"    # I
    .param p2, "destName"    # Ljava/lang/String;

    .prologue
    .line 272
    const/16 v11, 0x400

    new-array v2, v11, [B

    .line 273
    .local v2, "buffer":[B
    const/4 v10, 0x0

    .line 274
    .local v10, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 275
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    .line 276
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 280
    .local v4, "destPath":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lio/vov/vitamio/Vitamio;->getLibraryPath()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "destDir":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_0

    .line 284
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 285
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 286
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 287
    :cond_1
    new-instance v6, Ljava/io/File;

    .end local v6    # "f":Ljava/io/File;
    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .restart local v6    # "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v11

    if-nez v11, :cond_2

    .line 289
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 290
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 291
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .end local v3    # "destDir":Ljava/lang/String;
    .end local v6    # "f":Ljava/io/File;
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 297
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    .line 306
    invoke-static {v9}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 307
    invoke-static {v1}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 308
    invoke-static {v10}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    move-object v11, v4

    .line 311
    :goto_2
    return-object v11

    .line 292
    :catch_0
    move-exception v7

    .line 293
    .local v7, "fe":Ljava/lang/Exception;
    :try_start_4
    const-string v11, "loadLib"

    invoke-static {v11, v7}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 302
    .end local v7    # "fe":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 303
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v11, "loadLib"

    invoke-static {v11, v5}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 306
    invoke-static {v8}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 307
    invoke-static {v0}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 308
    invoke-static {v10}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 304
    const/4 v11, 0x0

    goto :goto_2

    .line 300
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_6
    invoke-virtual {v9, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 302
    :catch_2
    move-exception v5

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 305
    :catchall_0
    move-exception v11

    .line 306
    :goto_4
    invoke-static {v8}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 307
    invoke-static {v0}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 308
    invoke-static {v10}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 309
    throw v11

    .line 305
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v11

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 302
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v5

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method private static copyCompressedLib(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "destName"    # Ljava/lang/String;

    .prologue
    .line 316
    const/16 v13, 0x400

    new-array v3, v13, [B

    .line 317
    .local v3, "buffer":[B
    const/4 v11, 0x0

    .line 318
    .local v11, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 319
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    .line 320
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 324
    .local v5, "destPath":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lio/vov/vitamio/Vitamio;->getLibraryPath()Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "destDir":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 326
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_0

    .line 328
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 329
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 330
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 331
    :cond_1
    new-instance v7, Ljava/io/File;

    .end local v7    # "f":Ljava/io/File;
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .restart local v7    # "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v13

    if-nez v13, :cond_2

    .line 333
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 334
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    .line 335
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local v4    # "destDir":Ljava/lang/String;
    .end local v7    # "f":Ljava/io/File;
    :cond_3
    :goto_0
    :try_start_1
    new-instance v12, Ljava/io/FileInputStream;

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    .end local v11    # "is":Ljava/io/InputStream;
    .local v12, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 344
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_3
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 345
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    .line 352
    invoke-static {v10}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 353
    invoke-static {v2}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 354
    invoke-static {v12}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    move-object v13, v5

    .line 357
    :goto_2
    return-object v13

    .line 336
    :catch_0
    move-exception v8

    .line 337
    .local v8, "fe":Ljava/lang/Exception;
    :try_start_5
    const-string v13, "loadLib"

    invoke-static {v13, v8}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 348
    .end local v8    # "fe":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 349
    .local v6, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v13, "loadLib"

    invoke-static {v13, v6}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 352
    invoke-static {v9}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 353
    invoke-static {v1}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 354
    invoke-static {v11}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 350
    const/4 v13, 0x0

    goto :goto_2

    .line 346
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :cond_4
    :try_start_7
    invoke-virtual {v10, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    .line 348
    :catch_2
    move-exception v6

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 351
    :catchall_0
    move-exception v13

    .line 352
    :goto_4
    invoke-static {v9}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 353
    invoke-static {v1}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 354
    invoke-static {v11}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 355
    throw v13

    .line 351
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto :goto_4

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v13

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto :goto_4

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catchall_3
    move-exception v13

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 348
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v6

    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto :goto_3

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v6

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method private static extractLibs(Landroid/content/Context;I)Z
    .locals 17
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "rawID"    # I

    .prologue
    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 212
    .local v2, "begin":J
    invoke-static/range {p0 .. p0}, Lio/vov/vitamio/utils/ContextUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v10

    .line 213
    .local v10, "version":I
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "loadLibs start "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    new-instance v9, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Lio/vov/vitamio/Vitamio;->getLibraryPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".lock"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v9, "lock":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 216
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 217
    :cond_0
    const-string v11, "libarm.so"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v11}, Lio/vov/vitamio/Vitamio;->copyCompressedLib(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 218
    .local v8, "libPath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "copyCompressedLib time: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v2

    long-to-double v12, v12

    .line 219
    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 218
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-static {}, Lio/vov/vitamio/Vitamio;->getLibraryPath()Ljava/lang/String;

    move-result-object v11

    .line 221
    invoke-static {}, Lio/vov/vitamio/Vitamio;->getVitamioType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 220
    invoke-static {v8, v11, v12}, Lio/vov/vitamio/Vitamio;->native_initializeLibs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 222
    .local v7, "inited":Z
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 223
    const/4 v5, 0x0

    .line 225
    .local v5, "fw":Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 226
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "initializeNativeLibs: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "loadLibs time: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v2

    long-to-double v12, v12

    .line 234
    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 233
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-static {v6}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 228
    const/4 v11, 0x1

    move-object v5, v6

    .line 237
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :goto_0
    return v11

    .line 229
    :catch_0
    move-exception v4

    .line 230
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v11, "Error creating lock file"

    invoke-static {v11, v4}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "initializeNativeLibs: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "loadLibs time: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v2

    long-to-double v12, v12

    .line 234
    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 233
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-static {v5}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 237
    const/4 v11, 0x0

    goto :goto_0

    .line 231
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 232
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "initializeNativeLibs: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "loadLibs time: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v2

    long-to-double v13, v13

    .line 234
    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 233
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-static {v5}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 236
    throw v11

    .line 231
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .line 229
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method private static extractLibs(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 17
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 242
    .local v2, "begin":J
    invoke-static/range {p0 .. p0}, Lio/vov/vitamio/utils/ContextUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v10

    .line 244
    .local v10, "version":I
    new-instance v9, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Lio/vov/vitamio/Vitamio;->getLibraryPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".lock"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v9, "lock":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 246
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 247
    :cond_0
    const-string v11, "libarm.so"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lio/vov/vitamio/Vitamio;->copyCompressedLib(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, "libPath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "copyCompressedLib time: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v2

    long-to-double v12, v12

    .line 249
    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 248
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-static {}, Lio/vov/vitamio/Vitamio;->getLibraryPath()Ljava/lang/String;

    move-result-object v11

    .line 251
    invoke-static {}, Lio/vov/vitamio/Vitamio;->getVitamioType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 250
    invoke-static {v8, v11, v12}, Lio/vov/vitamio/Vitamio;->native_initializeLibs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 252
    .local v7, "inited":Z
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 253
    const/4 v5, 0x0

    .line 255
    .local v5, "fw":Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 256
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "initializeNativeLibs: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "loadLibs time: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v2

    long-to-double v12, v12

    .line 264
    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 263
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-static {v6}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 258
    const/4 v11, 0x1

    move-object v5, v6

    .line 267
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :goto_0
    return v11

    .line 259
    :catch_0
    move-exception v4

    .line 260
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v11, "Error creating lock file"

    invoke-static {v11, v4}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "initializeNativeLibs: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "loadLibs time: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v2

    long-to-double v12, v12

    .line 264
    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 263
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-static {v5}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 267
    const/4 v11, 0x0

    goto :goto_0

    .line 261
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 262
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "initializeNativeLibs: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "loadLibs time: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v2

    long-to-double v13, v13

    .line 264
    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 263
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-static {v5}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 266
    throw v11

    .line 261
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .line 259
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method public static final getLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lio/vov/vitamio/Vitamio;->vitamioLibraryPath:Ljava/lang/String;

    return-object v0
.end method

.method private static final getRequiredLibs()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v2, "libs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 181
    .local v3, "vitamioLibs":[[Ljava/lang/String;
    sget v4, Lio/vov/vitamio/Vitamio;->vitamioType:I

    sparse-switch v4, :sswitch_data_0

    .line 200
    :goto_0
    if-nez v3, :cond_0

    .line 207
    :goto_1
    return-object v2

    .line 186
    :sswitch_0
    new-array v3, v9, [[Ljava/lang/String;

    .end local v3    # "vitamioLibs":[[Ljava/lang/String;
    sget-object v4, Lio/vov/vitamio/Vitamio;->LIBS_ARM_CODECS:[Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Lio/vov/vitamio/Vitamio;->LIBS_PLAYER:[Ljava/lang/String;

    aput-object v4, v3, v6

    .line 187
    sget-object v4, Lio/vov/vitamio/Vitamio;->LIBS_SCANNER:[Ljava/lang/String;

    aput-object v4, v3, v7

    sget-object v4, Lio/vov/vitamio/Vitamio;->LIBS_AV:[Ljava/lang/String;

    aput-object v4, v3, v8

    .line 188
    .restart local v3    # "vitamioLibs":[[Ljava/lang/String;
    goto :goto_0

    .line 190
    :sswitch_1
    new-array v3, v9, [[Ljava/lang/String;

    .end local v3    # "vitamioLibs":[[Ljava/lang/String;
    sget-object v4, Lio/vov/vitamio/Vitamio;->LIBS_X86_CODECS:[Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Lio/vov/vitamio/Vitamio;->LIBS_PLAYER:[Ljava/lang/String;

    aput-object v4, v3, v6

    .line 191
    sget-object v4, Lio/vov/vitamio/Vitamio;->LIBS_SCANNER:[Ljava/lang/String;

    aput-object v4, v3, v7

    sget-object v4, Lio/vov/vitamio/Vitamio;->LIBS_AV:[Ljava/lang/String;

    aput-object v4, v3, v8

    .line 192
    .restart local v3    # "vitamioLibs":[[Ljava/lang/String;
    goto :goto_0

    .line 194
    :sswitch_2
    new-array v3, v9, [[Ljava/lang/String;

    .end local v3    # "vitamioLibs":[[Ljava/lang/String;
    sget-object v4, Lio/vov/vitamio/Vitamio;->LIBS_MIPS_CODECS:[Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Lio/vov/vitamio/Vitamio;->LIBS_PLAYER:[Ljava/lang/String;

    aput-object v4, v3, v6

    .line 195
    sget-object v4, Lio/vov/vitamio/Vitamio;->LIBS_SCANNER:[Ljava/lang/String;

    aput-object v4, v3, v7

    sget-object v4, Lio/vov/vitamio/Vitamio;->LIBS_AV:[Ljava/lang/String;

    aput-object v4, v3, v8

    .line 196
    .restart local v3    # "vitamioLibs":[[Ljava/lang/String;
    goto :goto_0

    .line 202
    :cond_0
    array-length v7, v3

    move v6, v5

    :goto_2
    if-lt v6, v7, :cond_1

    .line 206
    const-string v4, ".lock"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    :cond_1
    aget-object v1, v3, v6

    .line 203
    .local v1, "libArray":[Ljava/lang/String;
    array-length v8, v1

    move v4, v5

    :goto_3
    if-lt v4, v8, :cond_2

    .line 202
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    .line 203
    :cond_2
    aget-object v0, v1, v4

    .line 204
    .local v0, "lib":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 181
    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_2
        0x32 -> :sswitch_1
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x46 -> :sswitch_0
        0x47 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getVitamioPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lio/vov/vitamio/Vitamio;->vitamioPackage:Ljava/lang/String;

    return-object v0
.end method

.method public static getVitamioType()I
    .locals 1

    .prologue
    .line 171
    sget v0, Lio/vov/vitamio/Vitamio;->vitamioType:I

    return v0
.end method

.method public static initialize(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-static {p0}, Lio/vov/vitamio/Vitamio;->isInitialized(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/vov/vitamio/Vitamio;->LIBS_DIR:Ljava/lang/String;

    invoke-static {p0, v0}, Lio/vov/vitamio/Vitamio;->extractLibs(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "rawId"    # I

    .prologue
    .line 114
    invoke-static {p0}, Lio/vov/vitamio/Vitamio;->isInitialized(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lio/vov/vitamio/Vitamio;->extractLibs(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {p0}, Lio/vov/vitamio/Vitamio;->isInitialized(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lio/vov/vitamio/Vitamio;->extractLibs(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isInitialized(Landroid/content/Context;)Z
    .locals 15
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lio/vov/vitamio/Vitamio;->vitamioPackage:Ljava/lang/String;

    .line 131
    sget-object v11, Lio/vov/vitamio/Vitamio;->LIBS_DIR:Ljava/lang/String;

    new-array v12, v10, [Ljava/lang/Object;

    sget-object v13, Lio/vov/vitamio/Vitamio;->vitamioPackage:Ljava/lang/String;

    aput-object v13, v12, v9

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lio/vov/vitamio/Vitamio;->LIBS_DIR:Ljava/lang/String;

    .line 132
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/vov/vitamio/utils/ContextUtils;->getDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "libs/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lio/vov/vitamio/Vitamio;->vitamioLibraryPath:Ljava/lang/String;

    .line 133
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lio/vov/vitamio/Vitamio;->getLibraryPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 135
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "libs":[Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 137
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 138
    invoke-static {}, Lio/vov/vitamio/Vitamio;->getRequiredLibs()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 144
    new-instance v8, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Lio/vov/vitamio/Vitamio;->getLibraryPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".lock"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v8, "lock":Ljava/io/File;
    const/4 v2, 0x0

    .line 147
    .local v2, "buffer":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v2    # "buffer":Ljava/io/BufferedReader;
    .local v3, "buffer":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {p0}, Lio/vov/vitamio/utils/ContextUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 149
    .local v1, "appVersion":I
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 150
    .local v6, "libVersion":I
    const-string v11, "isNativeLibsInited, APP VERSION: %d, Vitamio Library version: %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 150
    invoke-static {v11, v12}, Lio/vov/vitamio/utils/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    if-ne v6, v1, :cond_3

    .line 159
    invoke-static {v3}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move v9, v10

    .line 163
    .end local v1    # "appVersion":I
    .end local v3    # "buffer":Ljava/io/BufferedReader;
    .end local v6    # "libVersion":I
    .end local v7    # "libs":[Ljava/lang/String;
    .end local v8    # "lock":Ljava/io/File;
    :cond_1
    :goto_0
    return v9

    .line 138
    .restart local v7    # "libs":[Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, "L":Ljava/lang/String;
    invoke-static {v7, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_0

    .line 140
    const-string v11, "Native libs %s not exists!"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v9

    invoke-static {v11, v10}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    .end local v0    # "L":Ljava/lang/String;
    .restart local v2    # "buffer":Ljava/io/BufferedReader;
    .restart local v8    # "lock":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 155
    .local v5, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v10, "isNativeLibsInited"

    invoke-static {v10, v5}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    invoke-static {v2}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 156
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 157
    .local v5, "e":Ljava/lang/NumberFormatException;
    :goto_2
    :try_start_3
    const-string v10, "isNativeLibsInited"

    invoke-static {v10, v5}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    invoke-static {v2}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 158
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v9

    .line 159
    :goto_3
    invoke-static {v2}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 160
    throw v9

    .line 159
    .end local v2    # "buffer":Ljava/io/BufferedReader;
    .restart local v1    # "appVersion":I
    .restart local v3    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "libVersion":I
    :cond_3
    invoke-static {v3}, Lio/vov/vitamio/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 158
    .end local v1    # "appVersion":I
    .end local v6    # "libVersion":I
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "buffer":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":Ljava/io/BufferedReader;
    goto :goto_3

    .line 156
    .end local v2    # "buffer":Ljava/io/BufferedReader;
    .restart local v3    # "buffer":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "buffer":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":Ljava/io/BufferedReader;
    goto :goto_2

    .line 154
    .end local v2    # "buffer":Ljava/io/BufferedReader;
    .restart local v3    # "buffer":Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    move-object v2, v3

    .end local v3    # "buffer":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private static native native_initializeLibs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method
