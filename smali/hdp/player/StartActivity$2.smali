.class Lhdp/player/StartActivity$2;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/StartActivity;


# direct methods
.method constructor <init>(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/StartActivity$2;->this$0:Lhdp/player/StartActivity;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 539
    :try_start_0
    sget-object v3, Lhdp/http/MyApp;->BanglistUrl:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lhdp/http/MyApp;->getgimiuid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 540
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 538
    invoke-static {v3, v4, v5}, Lhdp/http/MyApp;->executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "json":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 542
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lhdp/javabean/BangDataInfo;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhdp/javabean/BangDataInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    iget-object v3, p0, Lhdp/player/StartActivity$2;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->delayForAd:Z
    invoke-static {v3}, Lhdp/player/StartActivity;->access$5(Lhdp/player/StartActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 548
    iget-object v3, p0, Lhdp/player/StartActivity$2;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lhdp/player/StartActivity$2;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->delayedTime:J
    invoke-static {v4}, Lhdp/player/StartActivity;->access$6(Lhdp/player/StartActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 553
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "json":Ljava/lang/String;
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    iget-object v3, p0, Lhdp/player/StartActivity$2;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->delayForAd:Z
    invoke-static {v3}, Lhdp/player/StartActivity;->access$5(Lhdp/player/StartActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    iget-object v3, p0, Lhdp/player/StartActivity$2;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lhdp/player/StartActivity$2;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->delayedTime:J
    invoke-static {v4}, Lhdp/player/StartActivity;->access$6(Lhdp/player/StartActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 550
    :cond_0
    iget-object v3, p0, Lhdp/player/StartActivity$2;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 546
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 547
    iget-object v4, p0, Lhdp/player/StartActivity$2;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->delayForAd:Z
    invoke-static {v4}, Lhdp/player/StartActivity;->access$5(Lhdp/player/StartActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 548
    iget-object v4, p0, Lhdp/player/StartActivity$2;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lhdp/player/StartActivity$2;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->delayedTime:J
    invoke-static {v5}, Lhdp/player/StartActivity;->access$6(Lhdp/player/StartActivity;)J

    move-result-wide v5

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 552
    :goto_1
    throw v3

    .line 550
    :cond_1
    iget-object v4, p0, Lhdp/player/StartActivity$2;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .restart local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lhdp/player/StartActivity$2;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
