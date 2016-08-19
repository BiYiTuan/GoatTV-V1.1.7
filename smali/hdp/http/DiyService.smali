.class public Lhdp/http/DiyService;
.super Landroid/app/Service;
.source "DiyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/http/DiyService$MyServiceImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private MyTv(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "tname"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 46
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lhdp/http/MyApp;->parseTxt(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    .line 48
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 50
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 70
    new-instance v1, Lhdp/util/LiveDataHelper;

    invoke-direct {v1, p0}, Lhdp/util/LiveDataHelper;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, "dataHelper":Lhdp/util/LiveDataHelper;
    invoke-virtual {v1, p2}, Lhdp/util/LiveDataHelper;->updateTypeinfo(Ljava/lang/String;)V

    .line 72
    const-string v8, "custom03"

    invoke-virtual {v1, v8}, Lhdp/util/LiveDataHelper;->deleteChannels(Ljava/lang/String;)V

    .line 73
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lhdp/http/DiyService$1;

    invoke-direct {v9, p0, v1, v0}, Lhdp/http/DiyService$1;-><init>(Lhdp/http/DiyService;Lhdp/util/LiveDataHelper;Ljava/util/ArrayList;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 81
    .end local v1    # "dataHelper":Lhdp/util/LiveDataHelper;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    return v8

    .line 51
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    aget-object v6, v8, v11

    .line 52
    .local v6, "url_1":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    aget-object v8, v8, v12

    const-string v9, ";"

    const-string v10, "#"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "url_2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 60
    new-instance v4, Lhdp/javabean/LiveChannelInfo;

    invoke-direct {v4}, Lhdp/javabean/LiveChannelInfo;-><init>()V

    .line 61
    .local v4, "live":Lhdp/javabean/LiveChannelInfo;
    const v8, 0x9c41

    add-int/2addr v8, v2

    iput v8, v4, Lhdp/javabean/LiveChannelInfo;->num:I

    .line 62
    iget v8, v4, Lhdp/javabean/LiveChannelInfo;->num:I

    iput v8, v4, Lhdp/javabean/LiveChannelInfo;->vid:I

    .line 63
    iput-object v6, v4, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    .line 64
    new-array v8, v12, [Ljava/lang/String;

    aput-object v7, v8, v11

    iput-object v8, v4, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    .line 65
    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "custom03"

    aput-object v9, v8, v11

    iput-object v8, v4, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    .line 66
    const-string v8, "custom03"

    iput-object v8, v4, Lhdp/javabean/LiveChannelInfo;->epgid:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v4    # "live":Lhdp/javabean/LiveChannelInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhdp/javabean/LiveChannelInfo;

    .line 54
    .local v5, "liveChannelInfo":Lhdp/javabean/LiveChannelInfo;
    iget-object v9, v5, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 55
    new-array v8, v12, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v5, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 55
    iput-object v8, v5, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$0(Lhdp/http/DiyService;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lhdp/http/DiyService;->MyTv(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 42
    new-instance v0, Lhdp/http/DiyService$MyServiceImpl;

    invoke-direct {v0, p0}, Lhdp/http/DiyService$MyServiceImpl;-><init>(Lhdp/http/DiyService;)V

    return-object v0
.end method
