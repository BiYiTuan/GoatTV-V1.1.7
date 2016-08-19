.class Lhdp/player/LivePlayerS$2$1;
.super Ljava/lang/Thread;
.source "LivePlayerS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LivePlayerS$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lhdp/player/LivePlayerS$2;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayerS$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    .line 752
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    .line 757
    :try_start_0
    iget-object v1, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    # getter for: Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;
    invoke-static {v1}, Lhdp/player/LivePlayerS$2;->access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    # getter for: Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;
    invoke-static {v2}, Lhdp/player/LivePlayerS$2;->access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;

    move-result-object v2

    iget-object v3, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    # getter for: Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;
    invoke-static {v3}, Lhdp/player/LivePlayerS$2;->access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;

    move-result-object v3

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v3}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhdp/player/LivePlayerS;->budingParseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhdp/player/LivePlayerS;->access$7(Lhdp/player/LivePlayerS;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :goto_0
    iget-object v1, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    # getter for: Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;
    invoke-static {v1}, Lhdp/player/LivePlayerS$2;->access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    # getter for: Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;
    invoke-static {v1}, Lhdp/player/LivePlayerS$2;->access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    # getter for: Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;
    invoke-static {v2}, Lhdp/player/LivePlayerS$2;->access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;

    move-result-object v2

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 767
    iget-object v1, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    # getter for: Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;
    invoke-static {v1}, Lhdp/player/LivePlayerS$2;->access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    # getter for: Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;
    invoke-static {v2}, Lhdp/player/LivePlayerS$2;->access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;

    move-result-object v2

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 771
    :goto_1
    return-void

    .line 758
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    # getter for: Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;
    invoke-static {v1}, Lhdp/player/LivePlayerS$2;->access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    # getter for: Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;
    invoke-static {v2}, Lhdp/player/LivePlayerS$2;->access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;

    move-result-object v2

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 762
    iget-object v1, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    # getter for: Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;
    invoke-static {v1}, Lhdp/player/LivePlayerS$2;->access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    # getter for: Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;
    invoke-static {v2}, Lhdp/player/LivePlayerS$2;->access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;

    move-result-object v2

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 770
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lhdp/player/LivePlayerS$2$1;->this$1:Lhdp/player/LivePlayerS$2;

    # getter for: Lhdp/player/LivePlayerS$2;->this$0:Lhdp/player/LivePlayerS;
    invoke-static {v1}, Lhdp/player/LivePlayerS$2;->access$0(Lhdp/player/LivePlayerS$2;)Lhdp/player/LivePlayerS;

    move-result-object v1

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
