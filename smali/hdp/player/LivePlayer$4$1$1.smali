.class Lhdp/player/LivePlayer$4$1$1;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LivePlayer$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lhdp/player/LivePlayer$4$1;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayer$4$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayer$4$1$1;->this$2:Lhdp/player/LivePlayer$4$1;

    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1058
    iget-object v0, p0, Lhdp/player/LivePlayer$4$1$1;->this$2:Lhdp/player/LivePlayer$4$1;

    # getter for: Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;
    invoke-static {v0}, Lhdp/player/LivePlayer$4$1;->access$0(Lhdp/player/LivePlayer$4$1;)Lhdp/player/LivePlayer$4;

    move-result-object v0

    invoke-static {v0}, Lhdp/player/LivePlayer$4;->access$0(Lhdp/player/LivePlayer$4;)Lhdp/player/LivePlayer;

    move-result-object v0

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp/player/LivePlayer$4$1$1;->this$2:Lhdp/player/LivePlayer$4$1;

    # getter for: Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;
    invoke-static {v0}, Lhdp/player/LivePlayer$4$1;->access$0(Lhdp/player/LivePlayer$4$1;)Lhdp/player/LivePlayer$4;

    move-result-object v0

    invoke-static {v0}, Lhdp/player/LivePlayer$4;->access$0(Lhdp/player/LivePlayer$4;)Lhdp/player/LivePlayer;

    move-result-object v0

    iget-boolean v0, v0, Lhdp/player/LivePlayer;->IsP2P:Z

    if-eqz v0, :cond_1

    .line 1059
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayer$4$1$1;->this$2:Lhdp/player/LivePlayer$4$1;

    # getter for: Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;
    invoke-static {v0}, Lhdp/player/LivePlayer$4$1;->access$0(Lhdp/player/LivePlayer$4$1;)Lhdp/player/LivePlayer$4;

    move-result-object v0

    invoke-static {v0}, Lhdp/player/LivePlayer$4;->access$0(Lhdp/player/LivePlayer$4;)Lhdp/player/LivePlayer;

    move-result-object v0

    # getter for: Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$0(Lhdp/player/LivePlayer;)Lhdp/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LivePlayer$4$1$1;->this$2:Lhdp/player/LivePlayer$4$1;

    # getter for: Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;
    invoke-static {v1}, Lhdp/player/LivePlayer$4$1;->access$0(Lhdp/player/LivePlayer$4$1;)Lhdp/player/LivePlayer$4;

    move-result-object v1

    invoke-static {v1}, Lhdp/player/LivePlayer$4;->access$0(Lhdp/player/LivePlayer$4;)Lhdp/player/LivePlayer;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhdp/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1065
    :goto_0
    return-void

    .line 1062
    :cond_1
    iget-object v0, p0, Lhdp/player/LivePlayer$4$1$1;->this$2:Lhdp/player/LivePlayer$4$1;

    # getter for: Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;
    invoke-static {v0}, Lhdp/player/LivePlayer$4$1;->access$0(Lhdp/player/LivePlayer$4$1;)Lhdp/player/LivePlayer$4;

    move-result-object v0

    invoke-static {v0}, Lhdp/player/LivePlayer$4;->access$0(Lhdp/player/LivePlayer$4;)Lhdp/player/LivePlayer;

    move-result-object v0

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LivePlayer$4$1$1;->this$2:Lhdp/player/LivePlayer$4$1;

    # getter for: Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;
    invoke-static {v1}, Lhdp/player/LivePlayer$4$1;->access$0(Lhdp/player/LivePlayer$4$1;)Lhdp/player/LivePlayer$4;

    move-result-object v1

    invoke-static {v1}, Lhdp/player/LivePlayer$4;->access$0(Lhdp/player/LivePlayer$4;)Lhdp/player/LivePlayer;

    move-result-object v1

    iget-object v1, v1, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1063
    iget-object v0, p0, Lhdp/player/LivePlayer$4$1$1;->this$2:Lhdp/player/LivePlayer$4$1;

    # getter for: Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;
    invoke-static {v0}, Lhdp/player/LivePlayer$4$1;->access$0(Lhdp/player/LivePlayer$4$1;)Lhdp/player/LivePlayer$4;

    move-result-object v0

    invoke-static {v0}, Lhdp/player/LivePlayer$4;->access$0(Lhdp/player/LivePlayer$4;)Lhdp/player/LivePlayer;

    move-result-object v0

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LivePlayer$4$1$1;->this$2:Lhdp/player/LivePlayer$4$1;

    # getter for: Lhdp/player/LivePlayer$4$1;->this$1:Lhdp/player/LivePlayer$4;
    invoke-static {v1}, Lhdp/player/LivePlayer$4$1;->access$0(Lhdp/player/LivePlayer$4$1;)Lhdp/player/LivePlayer$4;

    move-result-object v1

    invoke-static {v1}, Lhdp/player/LivePlayer$4;->access$0(Lhdp/player/LivePlayer$4;)Lhdp/player/LivePlayer;

    move-result-object v1

    iget-object v1, v1, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
