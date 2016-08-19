.class public Lhdp/util/SoMain;
.super Ljava/lang/Object;
.source "SoMain.java"


# static fields
.field private static Object:Lhdp/util/SoMain;


# instance fields
.field private lclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lhdp/util/SoMain;->Object:Lhdp/util/SoMain;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v4, p0, Lhdp/util/SoMain;->obj:Ljava/lang/Object;

    .line 19
    iput-object v4, p0, Lhdp/util/SoMain;->lclass:Ljava/lang/Class;

    .line 53
    iget-object v4, p0, Lhdp/util/SoMain;->lclass:Ljava/lang/Class;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lhdp/util/SoMain;->obj:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 54
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 56
    .local v2, "lcl":Ljava/lang/ClassLoader;
    :try_start_0
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 57
    const-string v4, "dex"

    const/4 v5, 0x0

    .line 56
    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 56
    invoke-direct {v3, p2, v4, v5, v2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 58
    .local v3, "loader":Ldalvik/system/DexClassLoader;
    const-string v4, "smartlive.hdpfans.tv.main"

    invoke-virtual {v3, v4}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lhdp/util/SoMain;->lclass:Ljava/lang/Class;

    .line 59
    iget-object v4, p0, Lhdp/util/SoMain;->lclass:Ljava/lang/Class;

    .line 60
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 61
    .local v0, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lhdp/util/SoMain;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "lcl":Ljava/lang/ClassLoader;
    .end local v3    # "loader":Ldalvik/system/DexClassLoader;
    :cond_1
    :goto_0
    return-void

    .line 62
    .restart local v2    # "lcl":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Lhdp/util/SoMain;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lhdp/util/SoMain;->Object:Lhdp/util/SoMain;

    if-nez v0, :cond_0

    .line 26
    new-instance v1, Lhdp/util/SoMain;

    .line 27
    invoke-static {p0}, Lhdp/util/SoMain;->jarOnline(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lhdp/util/SoMain;->jarPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    invoke-direct {v1, p0, v0}, Lhdp/util/SoMain;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lhdp/util/SoMain;->Object:Lhdp/util/SoMain;

    .line 30
    :cond_0
    sget-object v0, Lhdp/util/SoMain;->Object:Lhdp/util/SoMain;

    return-object v0

    .line 28
    :cond_1
    invoke-static {p0}, Lhdp/util/SoMain;->jarOnline(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static jarOnline(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 83
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/hdp.jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "locatpath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "locatpath":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "locatpath":Ljava/lang/String;
    :cond_0
    move-object v1, v2

    .line 88
    goto :goto_0

    .line 91
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "locatpath":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 94
    goto :goto_0
.end method

.method private static jarPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 105
    const-string v2, "hdp.jar"

    .line 106
    .local v2, "dexName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v1, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v1, "dex":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 109
    .local v6, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 111
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 112
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 114
    .local v0, "buffer":[B
    const/4 v7, -0x1

    .line 115
    .local v7, "len":I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 122
    if-eqz v5, :cond_0

    .line 123
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 125
    :cond_0
    if-eqz v6, :cond_1

    .line 126
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 135
    .end local v0    # "buffer":[B
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "len":I
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 116
    .restart local v0    # "buffer":[B
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "len":I
    :cond_2
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v5, v0, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 118
    .end local v0    # "buffer":[B
    .end local v7    # "len":I
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 119
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/lang/Throwable;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    if-eqz v4, :cond_3

    .line 123
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 125
    :cond_3
    if-eqz v6, :cond_1

    .line 126
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 128
    :catch_1
    move-exception v3

    .line 129
    .local v3, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 132
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 120
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v8

    .line 122
    :goto_3
    if-eqz v4, :cond_4

    .line 123
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 125
    :cond_4
    if-eqz v6, :cond_5

    .line 126
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 131
    :cond_5
    :goto_4
    :try_start_9
    throw v8

    .line 128
    :catch_3
    move-exception v3

    .line 129
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 128
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "len":I
    :catch_4
    move-exception v3

    .line 129
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 120
    .end local v0    # "buffer":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "len":I
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 118
    :catch_5
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 176
    :try_start_0
    iget-object v2, p0, Lhdp/util/SoMain;->lclass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhdp/util/SoMain;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lhdp/util/SoMain;->lclass:Ljava/lang/Class;

    const-string v3, "close"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 178
    .local v1, "mc":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lhdp/util/SoMain;->obj:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1    # "mc":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    iget-object v2, p0, Lhdp/util/SoMain;->lclass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhdp/util/SoMain;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lhdp/util/SoMain;->lclass:Ljava/lang/Class;

    const-string v3, "geturl"

    .line 148
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 147
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 149
    .local v1, "mc":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lhdp/util/SoMain;->obj:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1    # "mc":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    move-object v2, p1

    .line 154
    goto :goto_0
.end method

.method public prepareLoad()V
    .locals 5

    .prologue
    .line 35
    :try_start_0
    iget-object v2, p0, Lhdp/util/SoMain;->lclass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhdp/util/SoMain;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 36
    iget-object v2, p0, Lhdp/util/SoMain;->lclass:Ljava/lang/Class;

    const-string v3, "iniLetv"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 37
    .local v1, "mc":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lhdp/util/SoMain;->obj:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v2, "SoMain"

    const-string v3, "--prepareLoad....ok."

    invoke-static {v2, v3}, Lhdp/util/HdpLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "mc":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SoMain"

    const-string v3, "--prepareLoad....fial."

    invoke-static {v2, v3}, Lhdp/util/HdpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 162
    :try_start_0
    iget-object v2, p0, Lhdp/util/SoMain;->lclass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhdp/util/SoMain;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lhdp/util/SoMain;->lclass:Ljava/lang/Class;

    const-string v3, "stop"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 164
    .local v1, "mc":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lhdp/util/SoMain;->obj:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "mc":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
