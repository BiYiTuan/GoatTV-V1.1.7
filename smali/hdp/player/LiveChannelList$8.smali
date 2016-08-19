.class Lhdp/player/LiveChannelList$8;
.super Ljava/lang/Object;
.source "LiveChannelList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LiveChannelList;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LiveChannelList;


# direct methods
.method constructor <init>(Lhdp/player/LiveChannelList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LiveChannelList$8;->this$0:Lhdp/player/LiveChannelList;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lhdp/player/LiveChannelList$8;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LiveChannelList;->access$0(Lhdp/player/LiveChannelList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LiveChannelList$8;->this$0:Lhdp/player/LiveChannelList;

    iget-object v1, v1, Lhdp/player/LiveChannelList;->hide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    iget-object v0, p0, Lhdp/player/LiveChannelList$8;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LiveChannelList;->access$0(Lhdp/player/LiveChannelList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LiveChannelList$8;->this$0:Lhdp/player/LiveChannelList;

    iget-object v1, v1, Lhdp/player/LiveChannelList;->hide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 329
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 321
    return-void
.end method
