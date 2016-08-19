.class Lhdp/player/LiveChannelList$5;
.super Ljava/lang/Object;
.source "LiveChannelList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LiveChannelList;


# direct methods
.method constructor <init>(Lhdp/player/LiveChannelList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LiveChannelList$5;->this$0:Lhdp/player/LiveChannelList;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 270
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lhdp/player/LiveChannelList$5;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LiveChannelList;->access$0(Lhdp/player/LiveChannelList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LiveChannelList$5;->this$0:Lhdp/player/LiveChannelList;

    iget-object v1, v1, Lhdp/player/LiveChannelList;->hide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    iget-object v0, p0, Lhdp/player/LiveChannelList$5;->this$0:Lhdp/player/LiveChannelList;

    # getter for: Lhdp/player/LiveChannelList;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LiveChannelList;->access$0(Lhdp/player/LiveChannelList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LiveChannelList$5;->this$0:Lhdp/player/LiveChannelList;

    iget-object v1, v1, Lhdp/player/LiveChannelList;->hide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
