.class Lhdp/player/LivePlayerS$4$1$1;
.super Ljava/lang/Object;
.source "LivePlayerS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LivePlayerS$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lhdp/player/LivePlayerS$4$1;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayerS$4$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayerS$4$1$1;->this$2:Lhdp/player/LivePlayerS$4$1;

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1037
    iget-object v0, p0, Lhdp/player/LivePlayerS$4$1$1;->this$2:Lhdp/player/LivePlayerS$4$1;

    # getter for: Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;
    invoke-static {v0}, Lhdp/player/LivePlayerS$4$1;->access$0(Lhdp/player/LivePlayerS$4$1;)Lhdp/player/LivePlayerS$4;

    move-result-object v0

    invoke-static {v0}, Lhdp/player/LivePlayerS$4;->access$0(Lhdp/player/LivePlayerS$4;)Lhdp/player/LivePlayerS;

    move-result-object v0

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp/player/LivePlayerS$4$1$1;->this$2:Lhdp/player/LivePlayerS$4$1;

    # getter for: Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;
    invoke-static {v0}, Lhdp/player/LivePlayerS$4$1;->access$0(Lhdp/player/LivePlayerS$4$1;)Lhdp/player/LivePlayerS$4;

    move-result-object v0

    invoke-static {v0}, Lhdp/player/LivePlayerS$4;->access$0(Lhdp/player/LivePlayerS$4;)Lhdp/player/LivePlayerS;

    move-result-object v0

    iget-boolean v0, v0, Lhdp/player/LivePlayerS;->IsP2P:Z

    if-eqz v0, :cond_1

    .line 1038
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayerS$4$1$1;->this$2:Lhdp/player/LivePlayerS$4$1;

    # getter for: Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;
    invoke-static {v0}, Lhdp/player/LivePlayerS$4$1;->access$0(Lhdp/player/LivePlayerS$4$1;)Lhdp/player/LivePlayerS$4;

    move-result-object v0

    invoke-static {v0}, Lhdp/player/LivePlayerS$4;->access$0(Lhdp/player/LivePlayerS$4;)Lhdp/player/LivePlayerS;

    move-result-object v0

    # getter for: Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$0(Lhdp/player/LivePlayerS;)Lhdp/widget/SoftVideoView;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LivePlayerS$4$1$1;->this$2:Lhdp/player/LivePlayerS$4$1;

    # getter for: Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;
    invoke-static {v1}, Lhdp/player/LivePlayerS$4$1;->access$0(Lhdp/player/LivePlayerS$4$1;)Lhdp/player/LivePlayerS$4;

    move-result-object v1

    invoke-static {v1}, Lhdp/player/LivePlayerS$4;->access$0(Lhdp/player/LivePlayerS$4;)Lhdp/player/LivePlayerS;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhdp/widget/SoftVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1044
    :goto_0
    return-void

    .line 1041
    :cond_1
    iget-object v0, p0, Lhdp/player/LivePlayerS$4$1$1;->this$2:Lhdp/player/LivePlayerS$4$1;

    # getter for: Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;
    invoke-static {v0}, Lhdp/player/LivePlayerS$4$1;->access$0(Lhdp/player/LivePlayerS$4$1;)Lhdp/player/LivePlayerS$4;

    move-result-object v0

    invoke-static {v0}, Lhdp/player/LivePlayerS$4;->access$0(Lhdp/player/LivePlayerS$4;)Lhdp/player/LivePlayerS;

    move-result-object v0

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LivePlayerS$4$1$1;->this$2:Lhdp/player/LivePlayerS$4$1;

    # getter for: Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;
    invoke-static {v1}, Lhdp/player/LivePlayerS$4$1;->access$0(Lhdp/player/LivePlayerS$4$1;)Lhdp/player/LivePlayerS$4;

    move-result-object v1

    invoke-static {v1}, Lhdp/player/LivePlayerS$4;->access$0(Lhdp/player/LivePlayerS$4;)Lhdp/player/LivePlayerS;

    move-result-object v1

    iget-object v1, v1, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1042
    iget-object v0, p0, Lhdp/player/LivePlayerS$4$1$1;->this$2:Lhdp/player/LivePlayerS$4$1;

    # getter for: Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;
    invoke-static {v0}, Lhdp/player/LivePlayerS$4$1;->access$0(Lhdp/player/LivePlayerS$4$1;)Lhdp/player/LivePlayerS$4;

    move-result-object v0

    invoke-static {v0}, Lhdp/player/LivePlayerS$4;->access$0(Lhdp/player/LivePlayerS$4;)Lhdp/player/LivePlayerS;

    move-result-object v0

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LivePlayerS$4$1$1;->this$2:Lhdp/player/LivePlayerS$4$1;

    # getter for: Lhdp/player/LivePlayerS$4$1;->this$1:Lhdp/player/LivePlayerS$4;
    invoke-static {v1}, Lhdp/player/LivePlayerS$4$1;->access$0(Lhdp/player/LivePlayerS$4$1;)Lhdp/player/LivePlayerS$4;

    move-result-object v1

    invoke-static {v1}, Lhdp/player/LivePlayerS$4;->access$0(Lhdp/player/LivePlayerS$4;)Lhdp/player/LivePlayerS;

    move-result-object v1

    iget-object v1, v1, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
