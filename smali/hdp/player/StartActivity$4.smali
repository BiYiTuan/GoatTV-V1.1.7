.class Lhdp/player/StartActivity$4;
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
    iput-object p1, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 585
    :try_start_0
    invoke-static {}, Lhdp/http/MyApp;->getIsfirst()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 586
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->sinaProvinceUrl:Ljava/lang/String;
    invoke-static {v10}, Lhdp/player/StartActivity;->access$15(Lhdp/player/StartActivity;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    .line 587
    const/4 v12, 0x0

    .line 586
    invoke-static {v10, v11, v12}, Lhdp/http/MyApp;->executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    .line 588
    .local v8, "json":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 589
    .local v9, "object":Lorg/json/JSONObject;
    const-string v10, "province"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lhdp/http/MyApp;->setLiveArea(Ljava/lang/String;)V

    .line 594
    .end local v8    # "json":Ljava/lang/String;
    .end local v9    # "object":Lorg/json/JSONObject;
    :goto_0
    const/4 v0, 0x0

    .line 595
    .local v0, "b":Z
    const-string v10, "connor"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "channelInfoUrl:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->channelInfoUrl:Ljava/lang/String;
    invoke-static {v12}, Lhdp/player/StartActivity;->access$16(Lhdp/player/StartActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->channelInfoUrl:Ljava/lang/String;
    invoke-static {v10}, Lhdp/player/StartActivity;->access$16(Lhdp/player/StartActivity;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lhdp/http/MyApp;->saveDpplayTvFile(Ljava/lang/String;Z)V

    .line 597
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lhdp/http/MyApp;->mContext:Landroid/content/Context;

    .line 598
    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 599
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 600
    const-string v12, "dpplay_tv.txt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 597
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lhdp/http/MyApp;->readJson(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "data":Ljava/lang/String;
    const-string v10, "{"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "}"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 603
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 604
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v5, 0x0

    .line 605
    .local v5, "id_count":I
    const-class v10, Lhdp/javabean/LiveDataInfo;

    invoke-virtual {v3, v1, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhdp/javabean/LiveDataInfo;

    .line 606
    .local v6, "info":Lhdp/javabean/LiveDataInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v10, v6, Lhdp/javabean/LiveDataInfo;->live:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v4, v10, :cond_3

    .line 611
    iget-object v10, v6, Lhdp/javabean/LiveDataInfo;->live:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v5, v10, :cond_0

    .line 612
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    iget-object v10, v6, Lhdp/javabean/LiveDataInfo;->live:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v7, v10, :cond_5

    .line 617
    .end local v7    # "j":I
    :cond_0
    invoke-static {}, Lhdp/http/MyApp;->getIsfirst()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 618
    iget-object v10, v6, Lhdp/javabean/LiveDataInfo;->live:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lhdp/javabean/LiveDataInfo$ChannelInfo;

    iget-object v11, v10, Lhdp/javabean/LiveDataInfo$ChannelInfo;->itemid:Ljava/lang/String;

    .line 619
    iget-object v10, v6, Lhdp/javabean/LiveDataInfo;->live:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lhdp/javabean/LiveDataInfo$ChannelInfo;

    iget v10, v10, Lhdp/javabean/LiveDataInfo$ChannelInfo;->id:I

    .line 618
    invoke-static {v11, v10}, Lhdp/http/MyApp;->setMychannelInfo(Ljava/lang/String;I)V

    .line 621
    :cond_1
    sget-object v10, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v10, v6}, Lhdp/util/LiveDataHelper;->initLiveDB(Lhdp/javabean/LiveDataInfo;)Z

    move-result v0

    .line 644
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "i":I
    .end local v5    # "id_count":I
    .end local v6    # "info":Lhdp/javabean/LiveDataInfo;
    :goto_3
    const-string v10, "StartActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "channel info get "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    if-eqz v0, :cond_7

    .line 648
    const/4 v10, 0x0

    invoke-static {v10}, Lhdp/http/MyApp;->setIsfirst(Z)V

    .line 650
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v10}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 679
    .end local v0    # "b":Z
    .end local v1    # "data":Ljava/lang/String;
    :goto_4
    return-void

    .line 591
    :cond_2
    invoke-static {}, Lhdp/http/MyApp;->getLiveArea()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lhdp/http/MyApp;->LiveArea:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 665
    :catch_0
    move-exception v2

    .line 666
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lhdp/http/MyApp;->getIsfirst()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 667
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v10}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 668
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v10}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 677
    :goto_5
    const-string v10, "StartActivity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 607
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "b":Z
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    .restart local v4    # "i":I
    .restart local v5    # "id_count":I
    .restart local v6    # "info":Lhdp/javabean/LiveDataInfo;
    :cond_3
    :try_start_1
    iget-object v10, v6, Lhdp/javabean/LiveDataInfo;->live:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lhdp/javabean/LiveDataInfo$ChannelInfo;

    iget v10, v10, Lhdp/javabean/LiveDataInfo$ChannelInfo;->id:I

    if-nez v10, :cond_4

    .line 608
    add-int/lit8 v5, v5, 0x1

    .line 606
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 613
    .restart local v7    # "j":I
    :cond_5
    iget-object v10, v6, Lhdp/javabean/LiveDataInfo;->live:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lhdp/javabean/LiveDataInfo$ChannelInfo;

    iput v7, v10, Lhdp/javabean/LiveDataInfo$ChannelInfo;->id:I

    .line 612
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 623
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "i":I
    .end local v5    # "id_count":I
    .end local v6    # "info":Lhdp/javabean/LiveDataInfo;
    .end local v7    # "j":I
    :cond_6
    const-string v10, "StartActivity"

    const-string v11, ".txt file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # invokes: Lhdp/player/StartActivity;->insertDpPlayTypes()Z
    invoke-static {v10}, Lhdp/player/StartActivity;->access$17(Lhdp/player/StartActivity;)Z

    move-result v0

    .line 625
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # invokes: Lhdp/player/StartActivity;->insertDpplayChannelInfo()V
    invoke-static {v10}, Lhdp/player/StartActivity;->access$18(Lhdp/player/StartActivity;)V

    goto/16 :goto_3

    .line 653
    :cond_7
    invoke-static {}, Lhdp/http/MyApp;->getIsfirst()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 654
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v10}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 655
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v10}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 657
    :cond_8
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->delayForAd:Z
    invoke-static {v10}, Lhdp/player/StartActivity;->access$5(Lhdp/player/StartActivity;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 658
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v10}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    .line 659
    iget-object v12, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->delayedTime:J
    invoke-static {v12}, Lhdp/player/StartActivity;->access$6(Lhdp/player/StartActivity;)J

    move-result-wide v12

    .line 658
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 661
    :cond_9
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v10}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 670
    .end local v0    # "b":Z
    .end local v1    # "data":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_a
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->delayForAd:Z
    invoke-static {v10}, Lhdp/player/StartActivity;->access$5(Lhdp/player/StartActivity;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 671
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v10}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    .line 672
    iget-object v12, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->delayedTime:J
    invoke-static {v12}, Lhdp/player/StartActivity;->access$6(Lhdp/player/StartActivity;)J

    move-result-wide v12

    .line 671
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 674
    :cond_b
    iget-object v10, p0, Lhdp/player/StartActivity$4;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v10}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5
.end method
