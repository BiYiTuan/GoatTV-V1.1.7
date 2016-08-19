.class Lhdp/player/LiveChannelList$7;
.super Ljava/lang/Object;
.source "LiveChannelList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lhdp/player/LiveChannelList$7;->this$0:Lhdp/player/LiveChannelList;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 299
    const/16 v0, 0x14

    if-ne p2, v0, :cond_1

    .line 300
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lhdp/player/LiveChannelList$7;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;
    invoke-static {v0}, Lhdp/player/LiveChannelList;->access$3(Lhdp/player/LiveChannelList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    iget-object v2, p0, Lhdp/player/LiveChannelList$7;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->liveInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lhdp/player/LiveChannelList;->access$1(Lhdp/player/LiveChannelList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lhdp/player/LiveChannelList$7;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;
    invoke-static {v0}, Lhdp/player/LiveChannelList;->access$3(Lhdp/player/LiveChannelList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 311
    :cond_0
    :goto_0
    return v4

    .line 305
    :cond_1
    const/16 v0, 0x13

    if-ne p2, v0, :cond_0

    .line 306
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lhdp/player/LiveChannelList$7;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;
    invoke-static {v0}, Lhdp/player/LiveChannelList;->access$3(Lhdp/player/LiveChannelList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lhdp/player/LiveChannelList$7;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->channellist:Landroid/widget/ListView;
    invoke-static {v0}, Lhdp/player/LiveChannelList;->access$3(Lhdp/player/LiveChannelList;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LiveChannelList$7;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->liveInfos:Ljava/util/ArrayList;
    invoke-static {v1}, Lhdp/player/LiveChannelList;->access$1(Lhdp/player/LiveChannelList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
