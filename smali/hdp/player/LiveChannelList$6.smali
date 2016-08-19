.class Lhdp/player/LiveChannelList$6;
.super Ljava/lang/Object;
.source "LiveChannelList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LiveChannelList;


# direct methods
.method constructor <init>(Lhdp/player/LiveChannelList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LiveChannelList$6;->this$0:Lhdp/player/LiveChannelList;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lhdp/player/LiveChannelList$6;->this$0:Lhdp/player/LiveChannelList;

    iget-object v0, p0, Lhdp/player/LiveChannelList$6;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->liveInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lhdp/player/LiveChannelList;->access$1(Lhdp/player/LiveChannelList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/LiveChannelInfo;

    invoke-virtual {v1, v0}, Lhdp/player/LiveChannelList;->favCurrentChannel(Lhdp/javabean/LiveChannelInfo;)V

    .line 288
    iget-object v0, p0, Lhdp/player/LiveChannelList$6;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->adapter:Lhdp/adapter/ChannelListAdapter;
    invoke-static {v0}, Lhdp/player/LiveChannelList;->access$2(Lhdp/player/LiveChannelList;)Lhdp/adapter/ChannelListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lhdp/adapter/ChannelListAdapter;->notifyDataSetChanged()V

    .line 290
    const/4 v0, 0x1

    return v0
.end method
