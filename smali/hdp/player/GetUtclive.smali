.class public Lhdp/player/GetUtclive;
.super Ljava/lang/Object;
.source "GetUtclive.java"


# static fields
.field public static final leip:Ljava/lang/String; = "http://api.letv.com/time"


# instance fields
.field private path:Ljava/lang/String;

.field private stop:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhdp/player/GetUtclive;->stop:Z

    .line 25
    iput-object p1, p0, Lhdp/player/GetUtclive;->path:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private getLocalIPAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 70
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 85
    const-string v5, "null"

    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    return-object v5

    .line 71
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 73
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 75
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 76
    instance-of v5, v3, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    .line 77
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0

    .line 81
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v5, "null"

    goto :goto_0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 30
    iput-boolean v7, p0, Lhdp/player/GetUtclive;->stop:Z

    .line 32
    const-string v4, ""

    .line 36
    .local v4, "outr":Ljava/lang/String;
    :try_start_0
    const-string v7, "http://api.letv.com/time"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lhdp/http/MyApp;->executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "json":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .local v3, "object":Lorg/json/JSONObject;
    const-string v7, "stime"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 48
    .local v5, "time":J
    invoke-static {}, Lhdp/http/DecodeKey;->GetKey()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "key":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lhdp/player/GetUtclive;->path:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 57
    iget-boolean v7, p0, Lhdp/player/GetUtclive;->stop:Z

    if-eqz v7, :cond_0

    .line 58
    const-string v4, ""

    .line 61
    :cond_0
    const-string v7, "outr"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v4

    .line 63
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v5    # "time":J
    :goto_0
    return-object v7

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/player/GetUtclive;->stop:Z

    .line 90
    return-void
.end method
