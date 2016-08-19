.class Lhdp/player/ManChannel$8;
.super Ljava/lang/Object;
.source "ManChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/ManChannel;->ShowChannels(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/ManChannel;


# direct methods
.method constructor <init>(Lhdp/player/ManChannel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/ManChannel$8;->this$0:Lhdp/player/ManChannel;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lhdp/player/ManChannel$8;->this$0:Lhdp/player/ManChannel;

    iget-object v2, v2, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 287
    return-void

    .line 279
    :cond_0
    iget-object v2, p0, Lhdp/player/ManChannel$8;->this$0:Lhdp/player/ManChannel;

    iget-object v2, v2, Lhdp/player/ManChannel;->liveInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdp/javabean/LiveChannelInfo;

    .line 280
    .local v1, "live":Lhdp/javabean/LiveChannelInfo;
    iget-boolean v2, v1, Lhdp/javabean/LiveChannelInfo;->hide:Z

    if-eqz v2, :cond_1

    .line 281
    sget-object v2, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    iget-object v3, v1, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v3, v3, v5

    .line 282
    iget-object v4, v1, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    .line 281
    invoke-virtual {v2, v3, v4, v5}, Lhdp/util/LiveDataHelper;->updateChannelHide(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 283
    iput-boolean v5, v1, Lhdp/javabean/LiveChannelInfo;->hide:Z

    .line 284
    iget-object v2, p0, Lhdp/player/ManChannel$8;->this$0:Lhdp/player/ManChannel;

    iget-object v2, v2, Lhdp/player/ManChannel;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 277
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
