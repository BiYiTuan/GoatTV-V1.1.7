.class Lhdp/player/LivePlayer$2$1;
.super Ljava/lang/Thread;
.source "LivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LivePlayer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lhdp/player/LivePlayer$2;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayer$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    .line 774
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    .line 778
    :try_start_0
    iget-object v1, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    # getter for: Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;
    invoke-static {v1}, Lhdp/player/LivePlayer$2;->access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    # getter for: Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;
    invoke-static {v2}, Lhdp/player/LivePlayer$2;->access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;

    move-result-object v2

    iget-object v3, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    # getter for: Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;
    invoke-static {v3}, Lhdp/player/LivePlayer$2;->access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;

    move-result-object v3

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v3}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhdp/player/LivePlayer;->budingParseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhdp/player/LivePlayer;->access$8(Lhdp/player/LivePlayer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :goto_0
    iget-object v1, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    # getter for: Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;
    invoke-static {v1}, Lhdp/player/LivePlayer$2;->access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    iget-object v1, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    # getter for: Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;
    invoke-static {v1}, Lhdp/player/LivePlayer$2;->access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    # getter for: Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;
    invoke-static {v2}, Lhdp/player/LivePlayer$2;->access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;

    move-result-object v2

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 788
    iget-object v1, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    # getter for: Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;
    invoke-static {v1}, Lhdp/player/LivePlayer$2;->access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    # getter for: Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;
    invoke-static {v2}, Lhdp/player/LivePlayer$2;->access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;

    move-result-object v2

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 793
    :goto_1
    return-void

    .line 779
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    # getter for: Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;
    invoke-static {v1}, Lhdp/player/LivePlayer$2;->access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    # getter for: Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;
    invoke-static {v2}, Lhdp/player/LivePlayer$2;->access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;

    move-result-object v2

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 783
    iget-object v1, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    # getter for: Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;
    invoke-static {v1}, Lhdp/player/LivePlayer$2;->access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    # getter for: Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;
    invoke-static {v2}, Lhdp/player/LivePlayer$2;->access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;

    move-result-object v2

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 792
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lhdp/player/LivePlayer$2$1;->this$1:Lhdp/player/LivePlayer$2;

    # getter for: Lhdp/player/LivePlayer$2;->this$0:Lhdp/player/LivePlayer;
    invoke-static {v1}, Lhdp/player/LivePlayer$2;->access$0(Lhdp/player/LivePlayer$2;)Lhdp/player/LivePlayer;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
