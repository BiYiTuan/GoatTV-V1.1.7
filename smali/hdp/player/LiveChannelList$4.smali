.class Lhdp/player/LiveChannelList$4;
.super Ljava/lang/Object;
.source "LiveChannelList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LiveChannelList;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LiveChannelList;


# direct methods
.method constructor <init>(Lhdp/player/LiveChannelList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LiveChannelList$4;->this$0:Lhdp/player/LiveChannelList;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lhdp/player/LiveChannelList$4;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LiveChannelList;->access$0(Lhdp/player/LiveChannelList;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 258
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 259
    iget-object v1, p0, Lhdp/player/LiveChannelList$4;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->liveInfos:Ljava/util/ArrayList;
    invoke-static {v1}, Lhdp/player/LiveChannelList;->access$1(Lhdp/player/LiveChannelList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    iget-object v1, p0, Lhdp/player/LiveChannelList$4;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LiveChannelList;->access$0(Lhdp/player/LiveChannelList;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    iget-object v1, p0, Lhdp/player/LiveChannelList$4;->this$0:Lhdp/player/LiveChannelList;

    invoke-virtual {v1}, Lhdp/player/LiveChannelList;->dismiss()V

    .line 262
    return-void
.end method
