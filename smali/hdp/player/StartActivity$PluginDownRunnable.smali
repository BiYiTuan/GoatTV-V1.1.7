.class Lhdp/player/StartActivity$PluginDownRunnable;
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
    name = "PluginDownRunnable"
.end annotation


# instance fields
.field private plugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/UpdateInfo$Plugin;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lhdp/player/StartActivity;


# direct methods
.method public constructor <init>(Lhdp/player/StartActivity;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/UpdateInfo$Plugin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p2, "plugin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/UpdateInfo$Plugin;>;"
    iput-object p1, p0, Lhdp/player/StartActivity$PluginDownRunnable;->this$0:Lhdp/player/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p2, p0, Lhdp/player/StartActivity$PluginDownRunnable;->plugins:Ljava/util/ArrayList;

    .line 568
    const-string v0, "StartActivity"

    const-string v1, "\u5f00\u59cb\u66f4\u65b0\u63d2\u4ef6..."

    invoke-static {v0, v1}, Lhdp/util/HdpLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 574
    iget-object v7, p0, Lhdp/player/StartActivity$PluginDownRunnable;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 626
    iget-object v7, p0, Lhdp/player/StartActivity$PluginDownRunnable;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 627
    return-void

    .line 574
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhdp/javabean/UpdateInfo$Plugin;

    .line 576
    .local v6, "plugin":Lhdp/javabean/UpdateInfo$Plugin;
    iget-object v8, p0, Lhdp/player/StartActivity$PluginDownRunnable;->this$0:Lhdp/player/StartActivity;

    .line 575
    invoke-static {v8}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v8

    .line 576
    iget-object v9, v6, Lhdp/javabean/UpdateInfo$Plugin;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lhdp/util/LiveDataHelper;->getPlugin(Ljava/lang/String;)Lhdp/javabean/UpdateInfo$Plugin;

    move-result-object v5

    .line 577
    .local v5, "local_Plugin":Lhdp/javabean/UpdateInfo$Plugin;
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lhdp/player/StartActivity$PluginDownRunnable;->this$0:Lhdp/player/StartActivity;

    invoke-virtual {v9}, Lhdp/player/StartActivity;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 578
    iget-object v9, v6, Lhdp/javabean/UpdateInfo$Plugin;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jar"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 577
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, "localPath":Ljava/lang/String;
    iget-object v8, v6, Lhdp/javabean/UpdateInfo$Plugin;->url:Ljava/lang/String;

    const-string v9, ".so"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 580
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lhdp/player/StartActivity$PluginDownRunnable;->this$0:Lhdp/player/StartActivity;

    invoke-virtual {v9}, Lhdp/player/StartActivity;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 581
    iget-object v9, v6, Lhdp/javabean/UpdateInfo$Plugin;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".so"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 580
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 584
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .local v3, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 586
    .local v0, "download":Z
    if-eqz v5, :cond_3

    .line 587
    iget-object v8, v5, Lhdp/javabean/UpdateInfo$Plugin;->time:Ljava/lang/String;

    iget-object v9, v6, Lhdp/javabean/UpdateInfo$Plugin;->time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 588
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 590
    :cond_3
    :try_start_0
    iget-object v8, v6, Lhdp/javabean/UpdateInfo$Plugin;->url:Ljava/lang/String;

    const-string v9, ".so"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 591
    iget-object v8, v6, Lhdp/javabean/UpdateInfo$Plugin;->name:Ljava/lang/String;

    const-string v9, "libcde"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 592
    iget-object v8, v6, Lhdp/javabean/UpdateInfo$Plugin;->time:Ljava/lang/String;

    const-string v9, "20150801"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 593
    iget-object v8, p0, Lhdp/player/StartActivity$PluginDownRunnable;->this$0:Lhdp/player/StartActivity;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lhdp/player/StartActivity;->isSoDownloading:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 618
    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    .line 619
    iget-object v8, p0, Lhdp/player/StartActivity$PluginDownRunnable;->this$0:Lhdp/player/StartActivity;

    invoke-static {v8}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v8

    .line 620
    invoke-virtual {v8, v6}, Lhdp/util/LiveDataHelper;->insertPlugin(Lhdp/javabean/UpdateInfo$Plugin;)V

    .line 621
    const-string v8, "StartActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v6, Lhdp/javabean/UpdateInfo$Plugin;->name:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\u6210\u529f\u66f4\u65b0\u63d2\u4ef6..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lhdp/javabean/UpdateInfo$Plugin;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhdp/util/HdpLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    :cond_5
    :try_start_1
    iget-object v8, p0, Lhdp/player/StartActivity$PluginDownRunnable;->this$0:Lhdp/player/StartActivity;

    iget-object v9, v6, Lhdp/javabean/UpdateInfo$Plugin;->url:Ljava/lang/String;

    invoke-virtual {v8, v4, v9}, Lhdp/player/StartActivity;->downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 597
    const/4 v0, 0x1

    goto :goto_1

    .line 600
    :catch_0
    move-exception v1

    .line 603
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v8, "StartActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "IO\u5f02\u5e38--\u91cd\u8bd5\u4e0b\u8f7d\u3002\u3002\u3002"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lhdp/javabean/UpdateInfo$Plugin;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 604
    iget-object v10, v6, Lhdp/javabean/UpdateInfo$Plugin;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 603
    invoke-static {v8, v9}, Lhdp/util/HdpLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v8, p0, Lhdp/player/StartActivity$PluginDownRunnable;->this$0:Lhdp/player/StartActivity;

    iget-object v9, v6, Lhdp/javabean/UpdateInfo$Plugin;->url:Ljava/lang/String;

    invoke-virtual {v8, v4, v9}, Lhdp/player/StartActivity;->downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 606
    const/4 v0, 0x1

    goto :goto_1

    .line 607
    :catch_1
    move-exception v2

    .line 608
    .local v2, "e1":Ljava/lang/Exception;
    invoke-static {v2}, Lhdp/util/HdpLog;->printException(Ljava/lang/Exception;)V

    .line 609
    const-string v8, "StartActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v6, Lhdp/javabean/UpdateInfo$Plugin;->name:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\u91cd\u65b0\u5c1d\u8bd5\u5931\u8d25\u3002\u3002\u3002"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 610
    iget-object v10, v6, Lhdp/javabean/UpdateInfo$Plugin;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 609
    invoke-static {v8, v9}, Lhdp/util/HdpLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 612
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 613
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "StartActivity"

    const-string v9, "\u975eIO\u5f02\u5e38--\u653e\u5f03\u4e0b\u8f7d\u3002\u3002\u3002"

    invoke-static {v8, v9}, Lhdp/util/HdpLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 616
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v8, "StartActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v6, Lhdp/javabean/UpdateInfo$Plugin;->name:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\u65e0\u9700\u66f4\u65b0..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhdp/util/HdpLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
