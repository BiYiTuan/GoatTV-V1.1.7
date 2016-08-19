.class public Lhdp/player/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/player/BaseActivity$NumKeyClickListener;
    }
.end annotation


# static fields
.field public static IsHuiBo:Z


# instance fields
.field public IsHttp:Z

.field public IsLeTv:Z

.field public IsP2P:Z

.field private MSG_NUM_END:I

.field private final TAG:Ljava/lang/String;

.field public Utclive:Lhdp/player/GetUtclive;

.field private handler:Landroid/os/Handler;

.field public hdpget:Lcom/hdp/HdpGet;

.field public isRunning:Z

.field private jar_name:Ljava/lang/String;

.field private listener:Lhdp/player/BaseActivity$NumKeyClickListener;

.field private numWaiting:Z

.field sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lhdp/player/BaseActivity;->IsHuiBo:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-string v0, "BaseActivity"

    iput-object v0, p0, Lhdp/player/BaseActivity;->TAG:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lhdp/player/BaseActivity;->isRunning:Z

    .line 57
    iput-object v2, p0, Lhdp/player/BaseActivity;->listener:Lhdp/player/BaseActivity$NumKeyClickListener;

    .line 58
    iput-boolean v1, p0, Lhdp/player/BaseActivity;->numWaiting:Z

    .line 60
    iput-object v2, p0, Lhdp/player/BaseActivity;->hdpget:Lcom/hdp/HdpGet;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lhdp/player/BaseActivity;->jar_name:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lhdp/player/BaseActivity;->IsLeTv:Z

    .line 64
    iput-boolean v1, p0, Lhdp/player/BaseActivity;->IsHttp:Z

    .line 65
    iput-boolean v1, p0, Lhdp/player/BaseActivity;->IsP2P:Z

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    .line 101
    iput v1, p0, Lhdp/player/BaseActivity;->MSG_NUM_END:I

    .line 103
    new-instance v0, Lhdp/player/BaseActivity$1;

    invoke-direct {v0, p0}, Lhdp/player/BaseActivity$1;-><init>(Lhdp/player/BaseActivity;)V

    iput-object v0, p0, Lhdp/player/BaseActivity;->handler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lhdp/player/BaseActivity;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lhdp/player/BaseActivity;->MSG_NUM_END:I

    return v0
.end method

.method static synthetic access$1(Lhdp/player/BaseActivity;)Lhdp/player/BaseActivity$NumKeyClickListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lhdp/player/BaseActivity;->listener:Lhdp/player/BaseActivity$NumKeyClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lhdp/player/BaseActivity;Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lhdp/player/BaseActivity;->numWaiting:Z

    return-void
.end method


# virtual methods
.method public Getdexurl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "soname"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v8, ""

    .line 304
    .local v8, "res":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 305
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".jar"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 304
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, "localpath":Ljava/lang/String;
    const-string v11, "BaseActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "load the local url parse jar: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 315
    const-string v11, ""

    .line 403
    :goto_0
    return-object v11

    .line 320
    :cond_0
    :try_start_0
    iget-object v11, p0, Lhdp/player/BaseActivity;->hdpget:Lcom/hdp/HdpGet;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lhdp/player/BaseActivity;->jar_name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 322
    :cond_1
    new-instance v1, Ldalvik/system/DexClassLoader;

    .line 323
    const-string v11, "dex"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    .line 322
    invoke-direct {v1, v7, v11, v12, v13}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 326
    .local v1, "cl":Ldalvik/system/DexClassLoader;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "com.hdp.Http"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    const-string v12, "p"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 326
    invoke-virtual {v1, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 329
    .local v6, "libProviderClazz":Ljava/lang/Class;
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/hdp/HdpGet;

    iput-object v11, p0, Lhdp/player/BaseActivity;->hdpget:Lcom/hdp/HdpGet;

    .line 331
    move-object/from16 v0, p2

    iput-object v0, p0, Lhdp/player/BaseActivity;->jar_name:Ljava/lang/String;

    .line 372
    .end local v1    # "cl":Ldalvik/system/DexClassLoader;
    .end local v6    # "libProviderClazz":Ljava/lang/Class;
    :cond_2
    invoke-static {}, Lhdp/http/DecodeKey;->GetKey()Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, "key":Ljava/lang/String;
    iget-object v11, p0, Lhdp/player/BaseActivity;->hdpget:Lcom/hdp/HdpGet;

    move-object/from16 v0, p3

    invoke-interface {v11, p1, v0, v5}, Lcom/hdp/HdpGet;->GetliveSources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 382
    .end local v5    # "key":Ljava/lang/String;
    :goto_1
    const-string v11, "BaseActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getdexurl: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v11, "lb_error"

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    .line 386
    invoke-static {v8}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "http"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 388
    :try_start_1
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 389
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 390
    .local v2, "connection":Ljava/net/HttpURLConnection;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 391
    .local v9, "state":Ljava/lang/String;
    const-string v11, "4"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "5"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 392
    :cond_3
    const-string v8, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 403
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "state":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    :cond_4
    :goto_2
    invoke-static {v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 377
    :catch_0
    move-exception v3

    .line 378
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "jar_ca"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v8, ""

    .line 380
    const-string v11, "error"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 394
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 396
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v8, ""

    .line 397
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 401
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v8, ""

    goto :goto_2
.end method

.method public StopGetinJar()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lhdp/player/BaseActivity;->hdpget:Lcom/hdp/HdpGet;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lhdp/player/BaseActivity;->hdpget:Lcom/hdp/HdpGet;

    invoke-interface {v0}, Lcom/hdp/HdpGet;->StopGet()V

    .line 411
    :cond_0
    iget-object v0, p0, Lhdp/player/BaseActivity;->Utclive:Lhdp/player/GetUtclive;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lhdp/player/BaseActivity;->Utclive:Lhdp/player/GetUtclive;

    invoke-virtual {v0}, Lhdp/player/GetUtclive;->stop()V

    .line 415
    :cond_1
    return-void
.end method

.method public budingParseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "live"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 211
    const-string v3, ""

    .line 212
    .local v3, "result":Ljava/lang/String;
    sget-object v5, Lhdp/http/MyApp;->budingUrl:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "android"

    aput-object v7, v6, v8

    const-string v7, "hdp"

    aput-object v7, v6, v9

    const/4 v7, 0x2

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "url":Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v4, v5, v6}, Lhdp/http/MyApp;->executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 215
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 216
    .local v2, "gon":Lcom/google/gson/Gson;
    const-class v5, Lhdp/javabean/BuDingData;

    invoke-virtual {v2, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/BuDingData;

    .line 217
    .local v0, "buDingData":Lhdp/javabean/BuDingData;
    iget-object v3, v0, Lhdp/javabean/BuDingData;->video_url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0    # "buDingData":Lhdp/javabean/BuDingData;
    .end local v2    # "gon":Lcom/google/gson/Gson;
    :goto_0
    return-object v3

    .line 218
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteTxt()V
    .locals 1

    .prologue
    .line 418
    const-string v0, "forcetv_iptv.txt"

    invoke-static {v0}, Lhdp/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 419
    const-string v0, "letv.txt"

    invoke-static {v0}, Lhdp/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 420
    return-void
.end method

.method protected favCurrentChannel(Landroid/content/Context;Lhdp/javabean/LiveChannelInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelInfo"    # Lhdp/javabean/LiveChannelInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    iget-object v0, p2, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p2, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "last"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p2, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "favorite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p2, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    const v0, 0x7f060057

    invoke-virtual {p0, v0}, Lhdp/player/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 252
    :goto_0
    return-void

    .line 239
    :cond_1
    sget-object v0, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v0, p2}, Lhdp/util/LiveDataHelper;->updateChannelFav(Lhdp/javabean/LiveChannelInfo;)V

    .line 241
    iget-boolean v0, p2, Lhdp/javabean/LiveChannelInfo;->favorite:Z

    if-eqz v0, :cond_2

    .line 243
    iput-boolean v2, p2, Lhdp/javabean/LiveChannelInfo;->favorite:Z

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p2, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f060042

    invoke-virtual {p0, v1}, Lhdp/player/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 248
    :cond_2
    iput-boolean v3, p2, Lhdp/javabean/LiveChannelInfo;->favorite:Z

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p2, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f060041

    invoke-virtual {p0, v1}, Lhdp/player/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public getVideoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 423
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2p path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v1, "p2p:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    :try_start_0
    invoke-static {p1}, Lcom/forcetech/android/Utils;->p2pToPlayAddr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 432
    :cond_0
    :goto_0
    invoke-static {p1}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    const-string p1, ""

    .line 437
    .end local p1    # "path":Ljava/lang/String;
    :cond_1
    return-object p1

    .line 427
    .restart local p1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public gettimeLive(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "live"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v0, Lhdp/player/GetUtclive;

    invoke-direct {v0, p1}, Lhdp/player/GetUtclive;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhdp/player/BaseActivity;->Utclive:Lhdp/player/GetUtclive;

    .line 207
    iget-object v0, p0, Lhdp/player/BaseActivity;->Utclive:Lhdp/player/GetUtclive;

    invoke-virtual {v0}, Lhdp/player/GetUtclive;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isRunning()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lhdp/player/BaseActivity;->isRunning:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/player/BaseActivity;->isRunning:Z

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhdp/player/BaseActivity;->isRunning:Z

    .line 87
    sget-object v0, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v0}, Lhdp/util/LiveDataHelper;->CloseDB()V

    .line 89
    sget-boolean v0, Lhdp/http/MyApp;->hasStartp2p:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/forcetech/android/ForceTV;->stop()I

    .line 93
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 122
    if-eq p1, v7, :cond_3

    .line 123
    const/16 v4, 0x8

    if-eq p1, v4, :cond_3

    .line 124
    const/16 v4, 0x9

    if-eq p1, v4, :cond_3

    .line 125
    const/16 v4, 0xa

    if-eq p1, v4, :cond_3

    .line 126
    const/16 v4, 0xb

    if-eq p1, v4, :cond_3

    .line 127
    const/16 v4, 0xc

    if-eq p1, v4, :cond_3

    .line 128
    const/16 v4, 0xd

    if-eq p1, v4, :cond_3

    .line 129
    const/16 v4, 0xe

    if-eq p1, v4, :cond_3

    .line 130
    const/16 v4, 0xf

    if-eq p1, v4, :cond_3

    .line 131
    const/16 v4, 0x10

    if-eq p1, v4, :cond_3

    move v0, v2

    .line 132
    .local v0, "b":Z
    :goto_0
    iget-object v4, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    if-eqz v0, :cond_4

    iget-object v4, p0, Lhdp/player/BaseActivity;->listener:Lhdp/player/BaseActivity$NumKeyClickListener;

    if-eqz v4, :cond_4

    .line 136
    iput-boolean v3, p0, Lhdp/player/BaseActivity;->numWaiting:Z

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 169
    :goto_1
    iget-object v2, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    iget-object v2, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 171
    .local v1, "num":I
    iget-object v2, p0, Lhdp/player/BaseActivity;->listener:Lhdp/player/BaseActivity$NumKeyClickListener;

    invoke-interface {v2, v1}, Lhdp/player/BaseActivity$NumKeyClickListener;->singleKeyDown(I)V

    .line 173
    .end local v1    # "num":I
    :cond_1
    iget-boolean v2, p0, Lhdp/player/BaseActivity;->numWaiting:Z

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p0, Lhdp/player/BaseActivity;->handler:Landroid/os/Handler;

    iget v4, p0, Lhdp/player/BaseActivity;->MSG_NUM_END:I

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    iget-object v2, p0, Lhdp/player/BaseActivity;->handler:Landroid/os/Handler;

    iget v4, p0, Lhdp/player/BaseActivity;->MSG_NUM_END:I

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    :cond_2
    :goto_2
    return v3

    .end local v0    # "b":Z
    :cond_3
    move v0, v3

    .line 122
    goto :goto_0

    .line 139
    .restart local v0    # "b":Z
    :pswitch_0
    iget-object v4, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
    :pswitch_1
    iget-object v2, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 145
    :pswitch_2
    iget-object v2, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 148
    :pswitch_3
    iget-object v2, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 151
    :pswitch_4
    iget-object v2, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 154
    :pswitch_5
    iget-object v2, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 157
    :pswitch_6
    iget-object v2, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 160
    :pswitch_7
    iget-object v2, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 163
    :pswitch_8
    iget-object v2, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 166
    :pswitch_9
    iget-object v2, p0, Lhdp/player/BaseActivity;->sb:Ljava/lang/StringBuilder;

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 178
    :cond_4
    const/16 v2, 0x17

    if-ne p1, v2, :cond_5

    .line 179
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    .line 180
    :cond_5
    const/16 v2, 0x14

    if-ne p1, v2, :cond_6

    .line 181
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    .line 182
    :cond_6
    const/16 v2, 0x15

    if-ne p1, v2, :cond_7

    .line 183
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    .line 184
    :cond_7
    const/16 v2, 0x16

    if-ne p1, v2, :cond_8

    .line 185
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    .line 186
    :cond_8
    const/16 v2, 0x13

    if-ne p1, v2, :cond_9

    .line 187
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    .line 188
    :cond_9
    if-ne p1, v5, :cond_a

    .line 189
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    .line 191
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    .line 137
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    return-void
.end method

.method public setOnNumKeyClickListener(Lhdp/player/BaseActivity$NumKeyClickListener;)V
    .locals 0
    .param p1, "listener"    # Lhdp/player/BaseActivity$NumKeyClickListener;

    .prologue
    .line 195
    iput-object p1, p0, Lhdp/player/BaseActivity;->listener:Lhdp/player/BaseActivity$NumKeyClickListener;

    .line 196
    return-void
.end method
