.class Lhdp/player/LivePlayer$4;
.super Landroid/os/Handler;
.source "LivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/LivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LivePlayer;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    .line 823
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 827
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 831
    :sswitch_0
    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lhdp/javabean/LiveChannelInfo;

    invoke-static {v2, v1}, Lhdp/player/LivePlayer;->access$10(Lhdp/player/LivePlayer;Lhdp/javabean/LiveChannelInfo;)V

    .line 833
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iget-object v2, v2, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget-object v3, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v3}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v3

    iget v3, v3, Lhdp/javabean/LiveChannelInfo;->vid:I

    # invokes: Lhdp/player/LivePlayer;->updateData(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lhdp/player/LivePlayer;->access$11(Lhdp/player/LivePlayer;Ljava/lang/String;I)V

    .line 836
    sget-object v1, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->num:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    sget-object v1, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 840
    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    sget-object v1, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    .line 841
    sget-object v3, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 840
    invoke-static {v2, v1}, Lhdp/player/LivePlayer;->access$12(Lhdp/player/LivePlayer;I)V

    .line 843
    sget-object v1, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v8, :cond_1

    .line 844
    sget-object v1, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 848
    :cond_1
    sget-boolean v1, Lhdp/player/LivePlayer;->IsHuiBo:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->num:I

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->tvback_num:I
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$13(Lhdp/player/LivePlayer;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 849
    :cond_2
    sput-boolean v4, Lhdp/http/MyApp;->AUTO_CHANGE_ENCODE_MODEL:Z

    .line 850
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 856
    :sswitch_1
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    invoke-virtual {v1}, Lhdp/player/LivePlayer;->StopGetinJar()V

    .line 858
    sget-boolean v1, Lhdp/player/LivePlayer;->IsHuiBo:Z

    if-eqz v1, :cond_3

    .line 860
    sput-boolean v5, Lhdp/player/LivePlayer;->IsHuiBo:Z

    .line 862
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$14(Lhdp/player/LivePlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 864
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$15(Lhdp/player/LivePlayer;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$14(Lhdp/player/LivePlayer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 870
    :cond_3
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->vid:I

    const/16 v2, 0x1194

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->vid:I

    const/16 v2, 0x11f8

    if-ge v1, v2, :cond_5

    .line 871
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$5(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->video_tv:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$16(Lhdp/player/LivePlayer;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u60a8\u6b63\u5728\u6536\u542c\u7684\u662f\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v3}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v3

    iget-object v3, v3, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->video_tv:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$16(Lhdp/player/LivePlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 874
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->video_img:Landroid/widget/ImageView;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$17(Lhdp/player/LivePlayer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 880
    :goto_1
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    invoke-static {v1, v2}, Lhdp/player/LivePlayer;->access$18(Lhdp/player/LivePlayer;I)V

    .line 883
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channel_souces_id:I
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$19(Lhdp/player/LivePlayer;)I

    move-result v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 884
    sget-object v1, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhdp/util/LiveDataHelper;->updateLastSoure_Num(Lhdp/javabean/LiveChannelInfo;)V

    .line 885
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    iput v5, v1, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 886
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    invoke-static {v1, v5}, Lhdp/player/LivePlayer;->access$18(Lhdp/player/LivePlayer;I)V

    .line 889
    :cond_4
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iget-object v3, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channel_souces_id:I
    invoke-static {v3}, Lhdp/player/LivePlayer;->access$19(Lhdp/player/LivePlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Lhdp/javabean/LiveChannelInfo;->getSourceUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhdp/player/LivePlayer;->access$8(Lhdp/player/LivePlayer;Ljava/lang/String;)V

    .line 892
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 894
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$9(Lhdp/player/LivePlayer;)Lhdp/player/LiveControl;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhdp/player/LiveControl;->SetchannelInfo(Lhdp/javabean/LiveChannelInfo;)V

    .line 895
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$9(Lhdp/player/LivePlayer;)Lhdp/player/LiveControl;

    move-result-object v1

    invoke-virtual {v1}, Lhdp/player/LiveControl;->show()V

    .line 897
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    invoke-virtual {v1}, Lhdp/player/LivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ChannelNum"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_6

    .line 898
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->IsOtherOk:Z
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$20(Lhdp/player/LivePlayer;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 900
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    invoke-virtual {v2}, Lhdp/player/LivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ChannelNum"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lhdp/player/LivePlayer;->multeKeyDown(I)V

    .line 901
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    invoke-static {v1, v4}, Lhdp/player/LivePlayer;->access$21(Lhdp/player/LivePlayer;Z)V

    .line 902
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->welText:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$22(Lhdp/player/LivePlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 876
    :cond_5
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$5(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->video_tv:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$16(Lhdp/player/LivePlayer;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 878
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->video_img:Landroid/widget/ImageView;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$17(Lhdp/player/LivePlayer;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 905
    :cond_6
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 906
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 907
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$0(Lhdp/player/LivePlayer;)Lhdp/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lhdp/widget/VideoView;->stopPlayback()V

    .line 908
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 909
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    .line 910
    iget-object v3, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-boolean v3, v3, Lhdp/player/LivePlayer;->IsP2P:Z

    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 909
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 914
    :cond_7
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 915
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 916
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    .line 917
    iget-object v3, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-boolean v3, v3, Lhdp/player/LivePlayer;->IsP2P:Z

    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 916
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 924
    :sswitch_2
    sget-boolean v1, Lhdp/player/LivePlayer;->IsHuiBo:Z

    if-eqz v1, :cond_8

    .line 926
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    iget v2, v1, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 927
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 930
    :cond_8
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$0(Lhdp/player/LivePlayer;)Lhdp/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lhdp/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$0(Lhdp/player/LivePlayer;)Lhdp/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lhdp/widget/VideoView;->stopPlayback()V

    goto/16 :goto_0

    .line 937
    :sswitch_3
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$14(Lhdp/player/LivePlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 938
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$15(Lhdp/player/LivePlayer;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$14(Lhdp/player/LivePlayer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 945
    :sswitch_4
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->welText:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$22(Lhdp/player/LivePlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 950
    :sswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_a

    .line 952
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->loading:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$23(Lhdp/player/LivePlayer;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 953
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$15(Lhdp/player/LivePlayer;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->loading:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$23(Lhdp/player/LivePlayer;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 956
    :cond_9
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 958
    :cond_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_c

    .line 960
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->loading:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$23(Lhdp/player/LivePlayer;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_b

    .line 961
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$15(Lhdp/player/LivePlayer;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->loading:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$23(Lhdp/player/LivePlayer;)Landroid/widget/ProgressBar;

    move-result-object v2

    iget-object v3, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lhdp/player/LivePlayer;->access$24(Lhdp/player/LivePlayer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 964
    :cond_b
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 966
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    .line 967
    iget-object v3, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-boolean v3, v3, Lhdp/player/LivePlayer;->IsP2P:Z

    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 966
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 969
    :cond_c
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v8, :cond_0

    .line 971
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->loading:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$23(Lhdp/player/LivePlayer;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$15(Lhdp/player/LivePlayer;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->loading:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$23(Lhdp/player/LivePlayer;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 978
    :sswitch_6
    sget-boolean v1, Lhdp/player/LivePlayer;->IsHuiBo:Z

    if-nez v1, :cond_0

    .line 983
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v1

    if-le v1, v4, :cond_e

    .line 984
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    .line 985
    invoke-virtual {v2}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v2

    .line 984
    if-ne v1, v2, :cond_d

    .line 986
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    const v2, 0x7f060040

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 987
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 988
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # invokes: Lhdp/player/LivePlayer;->ChangeChannel(I)V
    invoke-static {v1, v4}, Lhdp/player/LivePlayer;->access$25(Lhdp/player/LivePlayer;I)V

    goto/16 :goto_0

    .line 990
    :cond_d
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    const v2, 0x7f06003f

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 991
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 992
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # invokes: Lhdp/player/LivePlayer;->ChangeSource(I)V
    invoke-static {v1, v4}, Lhdp/player/LivePlayer;->access$26(Lhdp/player/LivePlayer;I)V

    goto/16 :goto_0

    .line 996
    :cond_e
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    const v2, 0x7f060040

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 997
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 998
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # invokes: Lhdp/player/LivePlayer;->ChangeChannel(I)V
    invoke-static {v1, v4}, Lhdp/player/LivePlayer;->access$25(Lhdp/player/LivePlayer;I)V

    goto/16 :goto_0

    .line 1004
    :sswitch_7
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    invoke-virtual {v1}, Lhdp/player/LivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1006
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$9(Lhdp/player/LivePlayer;)Lhdp/player/LiveControl;

    move-result-object v1

    invoke-virtual {v1, v5}, Lhdp/player/LiveControl;->setState(I)V

    .line 1007
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$9(Lhdp/player/LivePlayer;)Lhdp/player/LiveControl;

    move-result-object v1

    invoke-virtual {v1}, Lhdp/player/LiveControl;->show()V

    .line 1010
    :cond_f
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$9(Lhdp/player/LivePlayer;)Lhdp/player/LiveControl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    const v4, 0x7f060044

    invoke-virtual {v3, v4}, Lhdp/player/LivePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1011
    iget-object v3, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v3}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v3

    iget v3, v3, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1012
    iget-object v3, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v3}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v3

    invoke-virtual {v3}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1010
    invoke-virtual {v1, v2}, Lhdp/player/LiveControl;->setSource(Ljava/lang/String;)V

    .line 1014
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iget-object v3, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v3}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v3

    iget v3, v3, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    invoke-virtual {v2, v3}, Lhdp/javabean/LiveChannelInfo;->getSourceUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhdp/player/LivePlayer;->access$8(Lhdp/player/LivePlayer;Ljava/lang/String;)V

    .line 1016
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnable_huibo:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1022
    :sswitch_8
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v3, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v3}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhdp/player/LivePlayer;->getVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhdp/player/LivePlayer;->access$8(Lhdp/player/LivePlayer;Ljava/lang/String;)V

    .line 1023
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "live url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v3}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-boolean v1, v1, Lhdp/player/LivePlayer;->IsP2P:Z

    if-eqz v1, :cond_11

    .line 1025
    :cond_10
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$0(Lhdp/player/LivePlayer;)Lhdp/widget/VideoView;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhdp/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1028
    :cond_11
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1029
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    iget-object v2, v2, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1034
    :sswitch_9
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->exit_download_pb:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$27(Lhdp/player/LivePlayer;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 1037
    :sswitch_a
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->exit_download_pb:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$27(Lhdp/player/LivePlayer;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 1040
    :sswitch_b
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->exit_download_pb:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$27(Lhdp/player/LivePlayer;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 1043
    :sswitch_c
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1044
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1045
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    invoke-virtual {v1}, Lhdp/player/LivePlayer;->delExitAPK()V

    goto/16 :goto_0

    .line 1048
    :sswitch_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1049
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1050
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    new-instance v1, Ljava/io/File;

    .line 1052
    sget-object v2, Lhdp/http/MyApp;->app_save_adress:Ljava/lang/String;

    sget-object v3, Lhdp/http/MyApp;->appname:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1053
    const-string v2, "application/vnd.android.package-archive"

    .line 1051
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    iget-object v1, p0, Lhdp/player/LivePlayer$4;->this$0:Lhdp/player/LivePlayer;

    invoke-virtual {v1, v0}, Lhdp/player/LivePlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 827
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_8
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_3
        0xb -> :sswitch_5
        0xd -> :sswitch_7
        0x14 -> :sswitch_4
        0x1e -> :sswitch_9
        0x1f -> :sswitch_a
        0x20 -> :sswitch_b
        0x21 -> :sswitch_c
        0x22 -> :sswitch_d
    .end sparse-switch
.end method
