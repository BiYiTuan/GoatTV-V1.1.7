.class public Lhdp/util/UsbReciver;
.super Landroid/content/BroadcastReceiver;
.source "UsbReciver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 25
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_0

    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    .line 27
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 26
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 29
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/mytv.txt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 31
    .local v6, "modifiedTime":J
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {}, Lhdp/http/MyApp;->getMytvtime()J

    move-result-wide v11

    cmp-long v11, v6, v11

    if-nez v11, :cond_2

    .line 62
    :cond_1
    :goto_0
    return-void

    .line 34
    :cond_2
    invoke-static {v1}, Lhdp/http/MyApp;->parseTxt(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    .line 35
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v2, v11, :cond_4

    .line 56
    invoke-static/range {p1 .. p1}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v11

    .line 57
    const-string v12, "custom01"

    .line 56
    invoke-virtual {v11, v12}, Lhdp/util/LiveDataHelper;->deleteChannels(Ljava/lang/String;)V

    .line 58
    invoke-static/range {p1 .. p1}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v11

    invoke-virtual {v11, v0}, Lhdp/util/LiveDataHelper;->insertChannels(Ljava/util/ArrayList;)V

    .line 60
    .end local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .end local v2    # "i":I
    :cond_3
    const/4 v3, 0x0

    .line 61
    invoke-static {v6, v7}, Lhdp/http/MyApp;->setMytvtime(J)V

    goto :goto_0

    .line 38
    .restart local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .restart local v2    # "i":I
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v9, v11, v12

    .line 39
    .local v9, "url_1":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const-string v12, ";"

    const-string v13, "#"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 40
    .local v10, "url_2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_6

    .line 47
    new-instance v4, Lhdp/javabean/LiveChannelInfo;

    invoke-direct {v4}, Lhdp/javabean/LiveChannelInfo;-><init>()V

    .line 48
    .local v4, "live":Lhdp/javabean/LiveChannelInfo;
    add-int/lit16 v11, v2, 0x4e21

    iput v11, v4, Lhdp/javabean/LiveChannelInfo;->num:I

    .line 49
    iget v11, v4, Lhdp/javabean/LiveChannelInfo;->num:I

    iput v11, v4, Lhdp/javabean/LiveChannelInfo;->vid:I

    .line 50
    iput-object v9, v4, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    .line 51
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iput-object v11, v4, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    .line 52
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "custom01"

    aput-object v13, v11, v12

    iput-object v11, v4, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    .line 53
    const-string v11, "custom01"

    iput-object v11, v4, Lhdp/javabean/LiveChannelInfo;->epgid:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v4    # "live":Lhdp/javabean/LiveChannelInfo;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 40
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhdp/javabean/LiveChannelInfo;

    .line 41
    .local v5, "liveChannelInfo":Lhdp/javabean/LiveChannelInfo;
    iget-object v12, v5, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 42
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v5, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 43
    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 42
    iput-object v11, v5, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    goto :goto_2
.end method
