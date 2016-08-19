.class public Lhdp/util/ACache;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/util/ACache$ACacheManager;,
        Lhdp/util/ACache$Utils;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0x7fffffff

.field private static final MAX_SIZE:I = 0x2faf080

.field public static final TIME_DAY:I = 0x15180

.field public static final TIME_HOUR:I = 0xe10

.field private static mInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhdp/util/ACache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Lhdp/util/ACache$ACacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhdp/util/ACache;->mInstanceMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JI)V
    .locals 7
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "max_size"    # J
    .param p4, "max_count"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t make dirs in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    new-instance v0, Lhdp/util/ACache$ACacheManager;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lhdp/util/ACache$ACacheManager;-><init>(Lhdp/util/ACache;Ljava/io/File;JILhdp/util/ACache$ACacheManager;)V

    iput-object v0, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    .line 83
    return-void
.end method

.method public static get(Landroid/content/Context;)Lhdp/util/ACache;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    const-string v0, "ACache"

    invoke-static {p0, v0}, Lhdp/util/ACache;->get(Landroid/content/Context;Ljava/lang/String;)Lhdp/util/ACache;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;JI)Lhdp/util/ACache;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "max_zise"    # J
    .param p3, "max_count"    # I

    .prologue
    .line 60
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ACache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v0, "f":Ljava/io/File;
    invoke-static {v0, p1, p2, p3}, Lhdp/util/ACache;->get(Ljava/io/File;JI)Lhdp/util/ACache;

    move-result-object v1

    return-object v1
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lhdp/util/ACache;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .local v0, "f":Ljava/io/File;
    const-wide/32 v1, 0x2faf080

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Lhdp/util/ACache;->get(Ljava/io/File;JI)Lhdp/util/ACache;

    move-result-object v1

    return-object v1
.end method

.method public static get(Ljava/io/File;)Lhdp/util/ACache;
    .locals 3
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 56
    const-wide/32 v0, 0x2faf080

    const v2, 0x7fffffff

    invoke-static {p0, v0, v1, v2}, Lhdp/util/ACache;->get(Ljava/io/File;JI)Lhdp/util/ACache;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/io/File;JI)Lhdp/util/ACache;
    .locals 4
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "max_zise"    # J
    .param p3, "max_count"    # I

    .prologue
    .line 65
    sget-object v1, Lhdp/util/ACache;->mInstanceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lhdp/util/ACache;->myPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/util/ACache;

    .line 66
    .local v0, "manager":Lhdp/util/ACache;
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lhdp/util/ACache;

    .end local v0    # "manager":Lhdp/util/ACache;
    invoke-direct {v0, p0, p1, p2, p3}, Lhdp/util/ACache;-><init>(Ljava/io/File;JI)V

    .line 68
    .restart local v0    # "manager":Lhdp/util/ACache;
    sget-object v1, Lhdp/util/ACache;->mInstanceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lhdp/util/ACache;->myPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    return-object v0
.end method

.method private static myPid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->clear()V
    invoke-static {v0}, Lhdp/util/ACache$ACacheManager;->access$9(Lhdp/util/ACache$ACacheManager;)V

    .line 546
    return-void
.end method

.method public file(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v1, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, p1}, Lhdp/util/ACache$ACacheManager;->access$5(Lhdp/util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 526
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    .end local v0    # "f":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "f":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsBinary(Ljava/lang/String;)[B
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "RAFile":Ljava/io/RandomAccessFile;
    const/4 v5, 0x0

    .line 320
    .local v5, "removeFile":Z
    :try_start_0
    iget-object v7, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v7, p1}, Lhdp/util/ACache$ACacheManager;->access$7(Lhdp/util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 321
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 336
    if-eqz v0, :cond_0

    .line 338
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 343
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 344
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->remove(Ljava/lang/String;)Z

    .line 334
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v6

    .line 339
    .restart local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 340
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v1, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .local v1, "RAFile":Ljava/io/RandomAccessFile;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v2, v7, [B

    .line 325
    .local v2, "byteArray":[B
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 326
    # invokes: Lhdp/util/ACache$Utils;->isDue([B)Z
    invoke-static {v2}, Lhdp/util/ACache$Utils;->access$4([B)Z

    move-result v7

    if-nez v7, :cond_5

    .line 327
    # invokes: Lhdp/util/ACache$Utils;->clearDateInfo([B)[B
    invoke-static {v2}, Lhdp/util/ACache$Utils;->access$5([B)[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 336
    if-eqz v1, :cond_3

    .line 338
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 343
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 344
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->remove(Ljava/lang/String;)Z

    :cond_4
    move-object v0, v1

    .line 327
    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 339
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v3

    .line 340
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 329
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v5, 0x1

    .line 336
    if-eqz v1, :cond_6

    .line 338
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 343
    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    .line 344
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->remove(Ljava/lang/String;)Z

    :cond_7
    move-object v0, v1

    .line 330
    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 339
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v3

    .line 340
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 332
    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .end local v2    # "byteArray":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    .line 333
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    const-string v7, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 336
    if-eqz v0, :cond_8

    .line 338
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 343
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_5
    if-eqz v5, :cond_1

    .line 344
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->remove(Ljava/lang/String;)Z

    goto :goto_1

    .line 339
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 340
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 335
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 336
    :goto_6
    if-eqz v0, :cond_9

    .line 338
    :try_start_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 343
    :cond_9
    :goto_7
    if-eqz v5, :cond_a

    .line 344
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->remove(Ljava/lang/String;)Z

    .line 345
    :cond_a
    throw v6

    .line 339
    :catch_5
    move-exception v3

    .line 340
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 335
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 332
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_4
.end method

.method public getAsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 471
    const/4 v0, 0x0

    .line 473
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    # invokes: Lhdp/util/ACache$Utils;->Bytes2Bimap([B)Landroid/graphics/Bitmap;
    invoke-static {v0}, Lhdp/util/ACache$Utils;->access$7([B)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getAsDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 513
    const/4 v0, 0x0

    .line 515
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    # invokes: Lhdp/util/ACache$Utils;->Bytes2Bimap([B)Landroid/graphics/Bitmap;
    invoke-static {v0}, Lhdp/util/ACache$Utils;->access$7([B)Landroid/graphics/Bitmap;

    move-result-object v0

    # invokes: Lhdp/util/ACache$Utils;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lhdp/util/ACache$Utils;->access$9(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getAsJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "JSONString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-object v2

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "JSONString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-object v2

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 403
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v2

    .line 404
    .local v2, "data":[B
    if-eqz v2, :cond_1

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 408
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 410
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .local v5, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 417
    .local v6, "reObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 418
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 423
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 424
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 430
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v6    # "reObject":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v6

    .line 419
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "reObject":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 420
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 426
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 412
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v6    # "reObject":Ljava/lang/Object;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v3

    .line 413
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v7, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 417
    if-eqz v0, :cond_2

    .line 418
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 423
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    if-eqz v4, :cond_1

    .line 424
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 425
    :catch_3
    move-exception v3

    .line 426
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 419
    .local v3, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 420
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 415
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 417
    :goto_4
    if-eqz v0, :cond_3

    .line 418
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 423
    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    .line 424
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 428
    :cond_4
    :goto_6
    throw v7

    .line 419
    :catch_5
    move-exception v3

    .line 420
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 425
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 426
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 415
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 412
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 138
    iget-object v8, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v8, p1}, Lhdp/util/ACache$ACacheManager;->access$7(Lhdp/util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 139
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-object v7

    .line 141
    :cond_1
    const/4 v6, 0x0

    .line 142
    .local v6, "removeFile":Z
    const/4 v3, 0x0

    .line 144
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1
    const-string v5, ""

    .line 147
    .local v5, "readString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentLine":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 150
    # invokes: Lhdp/util/ACache$Utils;->isDue(Ljava/lang/String;)Z
    invoke-static {v5}, Lhdp/util/ACache$Utils;->access$1(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 151
    # invokes: Lhdp/util/ACache$Utils;->clearDateInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lhdp/util/ACache$Utils;->access$2(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 160
    if-eqz v4, :cond_2

    .line 162
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 167
    :cond_2
    :goto_2
    if-eqz v6, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 148
    :cond_3
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    goto :goto_1

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 153
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v6, 0x1

    .line 160
    if-eqz v4, :cond_5

    .line 162
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 167
    :cond_5
    :goto_3
    if-eqz v6, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 163
    :catch_1
    move-exception v1

    .line 164
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 156
    .end local v0    # "currentLine":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "readString":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 157
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v8, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    if-eqz v3, :cond_6

    .line 162
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 167
    :cond_6
    :goto_5
    if-eqz v6, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 163
    :catch_3
    move-exception v1

    .line 164
    const-string v8, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 159
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 160
    :goto_6
    if-eqz v3, :cond_7

    .line 162
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 167
    :cond_7
    :goto_7
    if-eqz v6, :cond_8

    .line 168
    invoke-virtual {p0, p1}, Lhdp/util/ACache;->remove(Ljava/lang/String;)Z

    .line 169
    :cond_8
    throw v7

    .line 163
    :catch_4
    move-exception v1

    .line 164
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 159
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_6

    .line 156
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 446
    # invokes: Lhdp/util/ACache$Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    invoke-static {p2}, Lhdp/util/ACache$Utils;->access$6(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lhdp/util/ACache;->put(Ljava/lang/String;[B)V

    .line 447
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .param p3, "saveTime"    # I

    .prologue
    .line 460
    # invokes: Lhdp/util/ACache$Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    invoke-static {p2}, Lhdp/util/ACache$Utils;->access$6(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lhdp/util/ACache;->put(Ljava/lang/String;[BI)V

    .line 461
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 488
    # invokes: Lhdp/util/ACache$Utils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    invoke-static {p2}, Lhdp/util/ACache$Utils;->access$8(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lhdp/util/ACache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 489
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;
    .param p3, "saveTime"    # I

    .prologue
    .line 502
    # invokes: Lhdp/util/ACache$Utils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    invoke-static {p2}, Lhdp/util/ACache$Utils;->access$8(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lhdp/util/ACache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 503
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 360
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lhdp/util/ACache;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 361
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;
    .param p3, "saveTime"    # I

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 377
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 380
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 381
    .local v2, "data":[B
    const/4 v6, -0x1

    if-eq p3, v6, :cond_0

    .line 382
    invoke-virtual {p0, p1, v2, p3}, Lhdp/util/ACache;->put(Ljava/lang/String;[BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 390
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 394
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-void

    .line 384
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :cond_0
    :try_start_4
    invoke-virtual {p0, p1, v2}, Lhdp/util/ACache;->put(Ljava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 386
    .end local v2    # "data":[B
    :catch_0
    move-exception v3

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 387
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v6, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 390
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 391
    :catch_1
    move-exception v6

    goto :goto_1

    .line 388
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 390
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 393
    :goto_4
    throw v6

    .line 391
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v2    # "data":[B
    :catch_3
    move-exception v7

    goto :goto_4

    .line 388
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 386
    :catch_4
    move-exception v3

    goto :goto_2

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v4, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v4, p1}, Lhdp/util/ACache$ACacheManager;->access$5(Lhdp/util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 98
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 100
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    if-eqz v3, :cond_0

    .line 107
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 108
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 113
    :cond_0
    :goto_0
    iget-object v4, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->put(Ljava/io/File;)V
    invoke-static {v4, v1}, Lhdp/util/ACache$ACacheManager;->access$6(Lhdp/util/ACache$ACacheManager;Ljava/io/File;)V

    move-object v2, v3

    .line 115
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    if-eqz v2, :cond_1

    .line 107
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 108
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 113
    :cond_1
    :goto_3
    iget-object v4, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->put(Ljava/io/File;)V
    invoke-static {v4, v1}, Lhdp/util/ACache$ACacheManager;->access$6(Lhdp/util/ACache$ACacheManager;Ljava/io/File;)V

    goto :goto_1

    .line 109
    :catch_1
    move-exception v0

    .line 110
    const-string v4, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 105
    :goto_4
    if-eqz v2, :cond_2

    .line 107
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 108
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 113
    :cond_2
    :goto_5
    iget-object v5, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->put(Ljava/io/File;)V
    invoke-static {v5, v1}, Lhdp/util/ACache$ACacheManager;->access$6(Lhdp/util/ACache$ACacheManager;Ljava/io/File;)V

    .line 114
    throw v4

    .line 109
    :catch_2
    move-exception v0

    .line 110
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v0

    .line 110
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 102
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "saveTime"    # I

    .prologue
    .line 128
    # invokes: Lhdp/util/ACache$Utils;->newStringWithDateInfo(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {p3, p2}, Lhdp/util/ACache$Utils;->access$0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lhdp/util/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;

    .prologue
    .line 230
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lhdp/util/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;
    .param p3, "saveTime"    # I

    .prologue
    .line 244
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lhdp/util/ACache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 184
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lhdp/util/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;
    .param p3, "saveTime"    # I

    .prologue
    .line 198
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lhdp/util/ACache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 199
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 276
    iget-object v4, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v4, p1}, Lhdp/util/ACache$ACacheManager;->access$5(Lhdp/util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 277
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 279
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 284
    if-eqz v3, :cond_0

    .line 286
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 287
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 292
    :cond_0
    :goto_0
    iget-object v4, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->put(Ljava/io/File;)V
    invoke-static {v4, v1}, Lhdp/util/ACache$ACacheManager;->access$6(Lhdp/util/ACache$ACacheManager;Ljava/io/File;)V

    move-object v2, v3

    .line 294
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v4, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    if-eqz v2, :cond_1

    .line 286
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 287
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    iget-object v4, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->put(Ljava/io/File;)V
    invoke-static {v4, v1}, Lhdp/util/ACache$ACacheManager;->access$6(Lhdp/util/ACache$ACacheManager;Ljava/io/File;)V

    goto :goto_1

    .line 288
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 283
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 284
    :goto_4
    if-eqz v2, :cond_2

    .line 286
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 287
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 292
    :cond_2
    :goto_5
    iget-object v5, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->put(Ljava/io/File;)V
    invoke-static {v5, v1}, Lhdp/util/ACache$ACacheManager;->access$6(Lhdp/util/ACache$ACacheManager;Ljava/io/File;)V

    .line 293
    throw v4

    .line 288
    :catch_2
    move-exception v0

    .line 289
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 288
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 289
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 281
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "saveTime"    # I

    .prologue
    .line 307
    # invokes: Lhdp/util/ACache$Utils;->newByteArrayWithDateInfo(I[B)[B
    invoke-static {p3, p2}, Lhdp/util/ACache$Utils;->access$3(I[B)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lhdp/util/ACache;->put(Ljava/lang/String;[B)V

    .line 308
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 538
    iget-object v0, p0, Lhdp/util/ACache;->mCache:Lhdp/util/ACache$ACacheManager;

    # invokes: Lhdp/util/ACache$ACacheManager;->remove(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lhdp/util/ACache$ACacheManager;->access$8(Lhdp/util/ACache$ACacheManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
