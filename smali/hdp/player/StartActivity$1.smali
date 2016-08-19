.class Lhdp/player/StartActivity$1;
.super Landroid/os/Handler;
.source "StartActivity.java"


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
    iput-object p1, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    .line 375
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0xe

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 379
    .local v0, "begin":J
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 522
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 523
    .local v2, "end":J
    const-string v9, "connor"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "StartActivity handler: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 524
    sub-long v11, v2, v0

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 523
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v2    # "end":J
    :cond_0
    return-void

    .line 382
    :pswitch_0
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    iget-object v9, v9, Lhdp/player/StartActivity;->start_load_tv:Landroid/widget/TextView;

    const-string v10, "\u6b63\u5728\u542f\u52a8\u00b7\u00b7\u00b7"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    iget-object v9, v9, Lhdp/player/StartActivity;->start_load_tv:Landroid/widget/TextView;

    const-string v10, "\u6b63\u5728\u68c0\u67e5\u6570\u636e\u66f4\u65b0\u00b7\u00b7\u00b7"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 390
    :pswitch_2
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    iget-object v9, v9, Lhdp/player/StartActivity;->start_load_tv:Landroid/widget/TextView;

    const-string v10, "\u6b63\u5728\u5bfc\u5165\u81ea\u5b9a\u4e49\u8282\u76ee\u5217\u8868\u00b7\u00b7\u00b7"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 394
    :pswitch_3
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    iget-object v9, v9, Lhdp/player/StartActivity;->start_load_tv:Landroid/widget/TextView;

    const-string v10, "\u6b63\u5728\u83b7\u53d6\u9891\u9053\u66f4\u65b0\u00b7\u00b7\u00b7"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 398
    :pswitch_4
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    iget-object v9, v9, Lhdp/player/StartActivity;->start_load_tv:Landroid/widget/TextView;

    iget-object v10, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-virtual {v10}, Lhdp/player/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 399
    const v11, 0x7f08000f

    .line 398
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 400
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    iget-object v9, v9, Lhdp/player/StartActivity;->start_load_tv:Landroid/widget/TextView;

    const-string v10, "\u521d\u59cb\u5316\u5931\u8d25,\u8bf7\u68c0\u67e5\u7f51\u7edc!"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 404
    :pswitch_5
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    iget-object v9, v9, Lhdp/player/StartActivity;->start_load_tv:Landroid/widget/TextView;

    const-string v10, "\u542f\u52a8\u5b8c\u6210\uff01\u5373\u5c06\u64ad\u653e\uff01"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 408
    :pswitch_6
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 410
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->quit:Z
    invoke-static {v9}, Lhdp/player/StartActivity;->access$1(Lhdp/player/StartActivity;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 414
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-static {v9, v11}, Lhdp/player/StartActivity;->access$2(Lhdp/player/StartActivity;Z)V

    .line 415
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 416
    .local v4, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-virtual {v9}, Lhdp/player/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "ChannelUrl"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 417
    .local v8, "url":Ljava/lang/String;
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-virtual {v9}, Lhdp/player/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "ChannelNum"

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 419
    .local v6, "num":I
    if-eqz v8, :cond_1

    .line 420
    sget-object v9, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v9, v8}, Lhdp/util/LiveDataHelper;->LookOther(Ljava/lang/String;)V

    .line 421
    const-string v9, "vid"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    const-string v9, "tid"

    const-string v10, "other"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    :goto_1
    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SOFT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 433
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    const-class v10, Lhdp/player/LivePlayerS;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 434
    invoke-static {}, Lhdp/http/MyApp;->getVitamioStatic()Z

    move-result v9

    if-nez v9, :cond_2

    .line 435
    new-instance v7, Lhdp/player/PlayerMenuContrl;

    .line 436
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    .line 435
    invoke-direct {v7, v9}, Lhdp/player/PlayerMenuContrl;-><init>(Landroid/content/Context;)V

    .line 438
    .local v7, "playerMenuContrl":Lhdp/player/PlayerMenuContrl;
    invoke-virtual {v7}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaModel()V

    goto/16 :goto_0

    .line 424
    .end local v7    # "playerMenuContrl":Lhdp/player/PlayerMenuContrl;
    :cond_1
    const-string v9, "ChannelNum"

    invoke-virtual {v4, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    const-string v9, "vid"

    invoke-static {}, Lhdp/http/MyApp;->getMychannelInfovid()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    const-string v9, "tid"

    invoke-static {}, Lhdp/http/MyApp;->getMychannelInfotid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 440
    :cond_2
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-virtual {v9, v4}, Lhdp/player/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 441
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-virtual {v9}, Lhdp/player/StartActivity;->finish()V

    goto/16 :goto_0

    .line 444
    :cond_3
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    const-class v10, Lhdp/player/LivePlayer;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 445
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-virtual {v9, v4}, Lhdp/player/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 446
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-virtual {v9}, Lhdp/player/StartActivity;->finish()V

    goto/16 :goto_0

    .line 450
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "num":I
    .end local v8    # "url":Ljava/lang/String;
    :pswitch_7
    invoke-static {}, Lhdp/http/MyApp;->getIsfirst()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 452
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 453
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-static {v9}, Lhdp/http/MyApp;->getWifiMacAddress(Landroid/content/Context;)V

    .line 454
    const-string v9, "StartActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "macadress--"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lhdp/http/MyApp;->getmacAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-virtual {v9}, Lhdp/player/StartActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "uuid"

    .line 455
    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lhdp/http/MyApp;->SetUUID(Ljava/lang/String;)V

    .line 457
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-static {v9, v12}, Lhdp/player/StartActivity;->access$3(Lhdp/player/StartActivity;Z)V

    .line 458
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # invokes: Lhdp/player/StartActivity;->BackUpCustomlist()V
    invoke-static {v9}, Lhdp/player/StartActivity;->access$4(Lhdp/player/StartActivity;)V

    .line 459
    new-instance v9, Ljava/lang/Thread;

    iget-object v10, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    iget-object v10, v10, Lhdp/player/StartActivity;->runnable:Ljava/lang/Runnable;

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 468
    :cond_4
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 469
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-static {v9, v12}, Lhdp/player/StartActivity;->access$3(Lhdp/player/StartActivity;Z)V

    .line 470
    new-instance v9, Ljava/lang/Thread;

    iget-object v10, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    iget-object v10, v10, Lhdp/player/StartActivity;->runnable:Ljava/lang/Runnable;

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 479
    :pswitch_8
    invoke-static {}, Lhdp/http/MyApp;->getgimiuid()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 480
    invoke-static {}, Lhdp/http/MyApp;->GetUUID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x8

    if-le v9, v10, :cond_5

    .line 481
    new-instance v9, Ljava/lang/Thread;

    iget-object v10, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    iget-object v10, v10, Lhdp/player/StartActivity;->runnable_get:Ljava/lang/Runnable;

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 483
    :cond_5
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->delayForAd:Z
    invoke-static {v9}, Lhdp/player/StartActivity;->access$5(Lhdp/player/StartActivity;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 484
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v9

    .line 485
    iget-object v10, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->delayedTime:J
    invoke-static {v10}, Lhdp/player/StartActivity;->access$6(Lhdp/player/StartActivity;)J

    move-result-wide v10

    .line 484
    invoke-virtual {v9, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 487
    :cond_6
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 492
    :pswitch_9
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 495
    :pswitch_a
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # invokes: Lhdp/player/StartActivity;->ShowDia()V
    invoke-static {v9}, Lhdp/player/StartActivity;->access$7(Lhdp/player/StartActivity;)V

    goto/16 :goto_0

    .line 498
    :pswitch_b
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    iget-object v10, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->progress:I
    invoke-static {v10}, Lhdp/player/StartActivity;->access$8(Lhdp/player/StartActivity;)I

    move-result v10

    # invokes: Lhdp/player/StartActivity;->downloadProgressChanged(I)V
    invoke-static {v9, v10}, Lhdp/player/StartActivity;->access$9(Lhdp/player/StartActivity;I)V

    goto/16 :goto_0

    .line 501
    :pswitch_c
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lhdp/player/StartActivity;->downloadCompleted(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V
    invoke-static {v9, v10, v11}, Lhdp/player/StartActivity;->access$10(Lhdp/player/StartActivity;Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 504
    :pswitch_d
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # invokes: Lhdp/player/StartActivity;->downloadCompleted()V
    invoke-static {v9}, Lhdp/player/StartActivity;->access$11(Lhdp/player/StartActivity;)V

    goto/16 :goto_0

    .line 507
    :pswitch_e
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, ""

    # invokes: Lhdp/player/StartActivity;->downloadCompleted(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V
    invoke-static {v9, v10, v11}, Lhdp/player/StartActivity;->access$10(Lhdp/player/StartActivity;Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 510
    :pswitch_f
    const-string v9, "StartActivity"

    const-string v10, "handler handle recommend app"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lhdp/javabean/AppInfo$NetApp;

    .line 512
    .local v5, "netApp":Lhdp/javabean/AppInfo$NetApp;
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # invokes: Lhdp/player/StartActivity;->Dialog_DownApp(Lhdp/javabean/AppInfo$NetApp;)V
    invoke-static {v9, v5}, Lhdp/player/StartActivity;->access$12(Lhdp/player/StartActivity;Lhdp/javabean/AppInfo$NetApp;)V

    goto/16 :goto_0

    .line 515
    .end local v5    # "netApp":Lhdp/javabean/AppInfo$NetApp;
    :pswitch_10
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    invoke-static {v9, v11}, Lhdp/player/StartActivity;->access$13(Lhdp/player/StartActivity;Z)V

    goto/16 :goto_0

    .line 518
    :pswitch_11
    iget-object v9, p0, Lhdp/player/StartActivity$1;->this$0:Lhdp/player/StartActivity;

    # invokes: Lhdp/player/StartActivity;->initErrorDiaShow()V
    invoke-static {v9}, Lhdp/player/StartActivity;->access$14(Lhdp/player/StartActivity;)V

    goto/16 :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_11
    .end packed-switch
.end method
