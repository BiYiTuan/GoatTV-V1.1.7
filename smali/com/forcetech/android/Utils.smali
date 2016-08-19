.class public Lcom/forcetech/android/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static p2pCmdUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "http://127.0.0.1:54521/cmd.xml?cmd="

    sput-object v0, Lcom/forcetech/android/Utils;->p2pCmdUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "arrayOfString":[Ljava/lang/String;
    const-string v1, ""

    .line 20
    .local v1, "channelID":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 21
    const/4 v2, 0x3

    aget-object v2, v0, v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 24
    :cond_0
    return-object v1
.end method

.method public static p2pToPlayAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    .line 34
    move-object v7, p0

    .line 35
    .local v7, "str5":Ljava/lang/String;
    const-string v6, "ts"

    .line 36
    .local v6, "str3":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v0

    if-lt v3, v8, :cond_1

    .line 44
    array-length v8, v0

    if-lt v8, v11, :cond_2

    .line 45
    const/4 v8, 0x2

    aget-object v5, v0, v8

    .line 46
    .local v5, "serverInfo":Ljava/lang/String;
    const/4 v8, 0x3

    aget-object v8, v0, v8

    const-string v9, "\\."

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v1, v8, v9

    .line 47
    .local v1, "channelID":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://127.0.0.1:54521/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 48
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 47
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "requestUrl":Ljava/lang/String;
    const-string v2, ""

    .line 50
    .local v2, "hotlink":Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x5

    if-lt v8, v9, :cond_0

    .line 51
    aget-object v2, v0, v11

    .line 55
    :cond_0
    const-string v8, "switch_chan"

    invoke-static {v1, v5, v8, v2}, Lcom/forcetech/android/Utils;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 59
    .end local v1    # "channelID":Ljava/lang/String;
    .end local v2    # "hotlink":Ljava/lang/String;
    .end local v4    # "requestUrl":Ljava/lang/String;
    .end local v5    # "serverInfo":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 40
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "=="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "arrayofString:["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 40
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method private static sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "channelID"    # Ljava/lang/String;
    .param p1, "serverInfo"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "hotlink"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "http://127.0.0.1:54521/cmd.xml?cmd="

    .line 76
    .local v0, "requestAddr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&link="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_0
    invoke-static {v0}, Lcom/forcetech/android/Utils;->sendP2pCmd(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static sendP2pCmd(Ljava/lang/String;)Z
    .locals 13
    .param p0, "requestAddr"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 87
    const/4 v6, 0x0

    .line 89
    .local v6, "url":Ljava/net/URL;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "url":Ljava/net/URL;
    .local v7, "url":Ljava/net/URL;
    move-object v6, v7

    .line 95
    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    :goto_0
    if-nez v6, :cond_0

    move v9, v10

    .line 133
    :goto_1
    return v9

    .line 90
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/net/MalformedURLException;
    const-string v9, "error"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_0
    const/4 v8, 0x0

    .line 101
    .local v8, "urlConn":Ljava/net/HttpURLConnection;
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :goto_2
    if-nez v8, :cond_1

    move v9, v10

    .line 108
    goto :goto_1

    .line 102
    :catch_1
    move-exception v2

    .line 104
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "error"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 110
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v8, v10}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 113
    :try_start_2
    new-instance v3, Ljava/io/InputStreamReader;

    .line 114
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 113
    invoke-direct {v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 115
    .local v3, "in":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 116
    .local v1, "br":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 117
    .local v5, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .line 119
    .local v4, "readerLine":Ljava/lang/String;
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 123
    const-string v9, "P2P Utils"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "P2P response: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 125
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    const/4 v9, 0x1

    goto :goto_1

    .line 120
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    goto :goto_3

    .line 127
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v4    # "readerLine":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "error"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 130
    goto :goto_1
.end method

.method public static stopChannel(Ljava/lang/String;)Z
    .locals 3
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/forcetech/android/Utils;->p2pCmdUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "stop_all_chan"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "p2pStopCmdUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/forcetech/android/Utils;->sendP2pCmd(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
