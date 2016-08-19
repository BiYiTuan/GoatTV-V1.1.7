.class public Lhdp/util/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# static fields
.field private static Object:Lhdp/util/ViewHelper;


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
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lhdp/util/ViewHelper;->Object:Lhdp/util/ViewHelper;

    .line 16
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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v4, p0, Lhdp/util/ViewHelper;->obj:Ljava/lang/Object;

    .line 20
    iput-object v4, p0, Lhdp/util/ViewHelper;->lclass:Ljava/lang/Class;

    .line 42
    iget-object v4, p0, Lhdp/util/ViewHelper;->lclass:Ljava/lang/Class;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lhdp/util/ViewHelper;->obj:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 43
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 45
    .local v2, "lcl":Ljava/lang/ClassLoader;
    :try_start_0
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 46
    const-string v4, "dex"

    const/4 v5, 0x0

    .line 45
    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 45
    invoke-direct {v3, p2, v4, v5, v2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 47
    .local v3, "loader":Ldalvik/system/DexClassLoader;
    const-string v4, "com.activity.boot.ViewStack"

    invoke-virtual {v3, v4}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lhdp/util/ViewHelper;->lclass:Ljava/lang/Class;

    .line 48
    iget-object v4, p0, Lhdp/util/ViewHelper;->lclass:Ljava/lang/Class;

    .line 49
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 50
    .local v0, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lhdp/util/ViewHelper;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "lcl":Ljava/lang/ClassLoader;
    .end local v3    # "loader":Ldalvik/system/DexClassLoader;
    :cond_1
    :goto_0
    return-void

    .line 51
    .restart local v2    # "lcl":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Lhdp/util/ViewHelper;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lhdp/util/ViewHelper;->Object:Lhdp/util/ViewHelper;

    if-nez v0, :cond_0

    .line 27
    new-instance v1, Lhdp/util/ViewHelper;

    .line 28
    invoke-static {p0}, Lhdp/util/ViewHelper;->jarOnline(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lhdp/util/ViewHelper;->jarPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_0
    invoke-direct {v1, p0, v0}, Lhdp/util/ViewHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lhdp/util/ViewHelper;->Object:Lhdp/util/ViewHelper;

    .line 31
    :cond_0
    sget-object v0, Lhdp/util/ViewHelper;->Object:Lhdp/util/ViewHelper;

    return-object v0

    .line 29
    :cond_1
    invoke-static {p0}, Lhdp/util/ViewHelper;->jarOnline(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static jarOnline(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 74
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v4, "/view.jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "locatpath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
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

    .line 86
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "locatpath":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "locatpath":Ljava/lang/String;
    :cond_0
    move-object v1, v2

    .line 80
    goto :goto_0

    .line 83
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "locatpath":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 86
    goto :goto_0
.end method

.method private static jarPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 97
    const-string v2, "view.jar"

    .line 98
    .local v2, "dexName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v1, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
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

    .line 101
    .local v6, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 103
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 104
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 106
    .local v0, "buffer":[B
    const/4 v7, -0x1

    .line 107
    .local v7, "len":I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 114
    if-eqz v5, :cond_0

    .line 115
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 117
    :cond_0
    if-eqz v6, :cond_1

    .line 118
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 127
    .end local v0    # "buffer":[B
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "len":I
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 108
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

    .line 110
    .end local v0    # "buffer":[B
    .end local v7    # "len":I
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 111
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/lang/Throwable;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 114
    if-eqz v4, :cond_3

    .line 115
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 117
    :cond_3
    if-eqz v6, :cond_1

    .line 118
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 120
    :catch_1
    move-exception v3

    .line 121
    .local v3, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 124
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .line 125
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 112
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v8

    .line 114
    :goto_3
    if-eqz v4, :cond_4

    .line 115
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 117
    :cond_4
    if-eqz v6, :cond_5

    .line 118
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 123
    :cond_5
    :goto_4
    :try_start_9
    throw v8

    .line 120
    :catch_3
    move-exception v3

    .line 121
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 120
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "len":I
    :catch_4
    move-exception v3

    .line 121
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 112
    .end local v0    # "buffer":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "len":I
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 110
    :catch_5
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public addView(Landroid/view/View;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 61
    :try_start_0
    iget-object v2, p0, Lhdp/util/ViewHelper;->lclass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhdp/util/ViewHelper;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lhdp/util/ViewHelper;->lclass:Ljava/lang/Class;

    const-string v3, "addViewStack"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 63
    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 62
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64
    .local v1, "mc":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lhdp/util/ViewHelper;->obj:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "mc":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
