.class Lhdp/player/LivePlayerS$4;
.super Landroid/os/Handler;
.source "LivePlayerS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/LivePlayerS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LivePlayerS;


# direct methods
.method constructor <init>(Lhdp/player/LivePlayerS;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    .line 801
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

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 805
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 808
    :sswitch_0
    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lhdp/javabean/LiveChannelInfo;

    invoke-static {v2, v1}, Lhdp/player/LivePlayerS;->access$9(Lhdp/player/LivePlayerS;Lhdp/javabean/LiveChannelInfo;)V

    .line 810
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iget-object v2, v2, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v2, v2, v4

    iget-object v3, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v3}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v3

    iget v3, v3, Lhdp/javabean/LiveChannelInfo;->vid:I

    # invokes: Lhdp/player/LivePlayerS;->updateData(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lhdp/player/LivePlayerS;->access$10(Lhdp/player/LivePlayerS;Ljava/lang/String;I)V

    .line 813
    sget-object v1, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->num:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    sget-object v1, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_1

    .line 817
    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    sget-object v1, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    .line 818
    sget-object v3, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 817
    invoke-static {v2, v1}, Lhdp/player/LivePlayerS;->access$11(Lhdp/player/LivePlayerS;I)V

    .line 820
    sget-object v1, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v8, :cond_1

    .line 821
    sget-object v1, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 825
    :cond_1
    sget-boolean v1, Lhdp/player/LivePlayerS;->IsHuiBo:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->num:I

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->tvback_num:I
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$12(Lhdp/player/LivePlayerS;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 826
    :cond_2
    sput-boolean v5, Lhdp/http/MyApp;->AUTO_CHANGE_ENCODE_MODEL:Z

    .line 827
    const-string v1, "AUTO"

    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 828
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 829
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vid"

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->vid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 830
    const-string v1, "tid"

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iget-object v2, v2, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    const-string v1, "backNum"

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->num:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    const-class v2, Lhdp/player/LivePlayer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 833
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    invoke-virtual {v1, v0}, Lhdp/player/LivePlayerS;->startActivity(Landroid/content/Intent;)V

    .line 834
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    invoke-virtual {v1}, Lhdp/player/LivePlayerS;->finish()V

    goto/16 :goto_0

    .line 836
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 844
    :sswitch_1
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    invoke-virtual {v1}, Lhdp/player/LivePlayerS;->StopGetinJar()V

    .line 846
    sget-boolean v1, Lhdp/player/LivePlayerS;->IsHuiBo:Z

    if-eqz v1, :cond_4

    .line 847
    sput-boolean v4, Lhdp/player/LivePlayerS;->IsHuiBo:Z

    .line 848
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$13(Lhdp/player/LivePlayerS;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 849
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$14(Lhdp/player/LivePlayerS;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$13(Lhdp/player/LivePlayerS;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 853
    :cond_4
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->vid:I

    const/16 v2, 0x1194

    if-le v1, v2, :cond_6

    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->vid:I

    const/16 v2, 0x11f8

    if-ge v1, v2, :cond_6

    .line 854
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->video_tv:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$15(Lhdp/player/LivePlayerS;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u60a8\u6b63\u5728\u6536\u542c\u7684\u662f\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v3}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v3

    iget-object v3, v3, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->video_tv:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$15(Lhdp/player/LivePlayerS;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 856
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->video_img:Landroid/widget/ImageView;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$16(Lhdp/player/LivePlayerS;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 862
    :goto_1
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    invoke-static {v1, v2}, Lhdp/player/LivePlayerS;->access$17(Lhdp/player/LivePlayerS;I)V

    .line 867
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channel_souces_id:I
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$18(Lhdp/player/LivePlayerS;)I

    move-result v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 868
    sget-object v1, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhdp/util/LiveDataHelper;->updateLastSoure_Num(Lhdp/javabean/LiveChannelInfo;)V

    .line 869
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    iput v4, v1, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 870
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    invoke-static {v1, v4}, Lhdp/player/LivePlayerS;->access$17(Lhdp/player/LivePlayerS;I)V

    .line 873
    :cond_5
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iget-object v3, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channel_souces_id:I
    invoke-static {v3}, Lhdp/player/LivePlayerS;->access$18(Lhdp/player/LivePlayerS;)I

    move-result v3

    invoke-virtual {v2, v3}, Lhdp/javabean/LiveChannelInfo;->getSourceUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhdp/player/LivePlayerS;->access$7(Lhdp/player/LivePlayerS;Ljava/lang/String;)V

    .line 877
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 879
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$8(Lhdp/player/LivePlayerS;)Lhdp/player/LiveControl;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhdp/player/LiveControl;->SetchannelInfo(Lhdp/javabean/LiveChannelInfo;)V

    .line 880
    const-string v1, "connor"

    const-string v2, "update channel info and show control"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$8(Lhdp/player/LivePlayerS;)Lhdp/player/LiveControl;

    move-result-object v1

    invoke-virtual {v1}, Lhdp/player/LiveControl;->show()V

    .line 882
    const-string v1, "connor"

    .line 883
    const-string v2, "update channel info and show control finished"

    .line 882
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    invoke-virtual {v1}, Lhdp/player/LivePlayerS;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ChannelNum"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_7

    .line 886
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->IsOtherOk:Z
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$19(Lhdp/player/LivePlayerS;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 888
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    invoke-virtual {v2}, Lhdp/player/LivePlayerS;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ChannelNum"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lhdp/player/LivePlayerS;->multeKeyDown(I)V

    .line 889
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    invoke-static {v1, v5}, Lhdp/player/LivePlayerS;->access$20(Lhdp/player/LivePlayerS;Z)V

    .line 890
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->welText:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$21(Lhdp/player/LivePlayerS;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 858
    :cond_6
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->video_tv:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$15(Lhdp/player/LivePlayerS;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 859
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->video_img:Landroid/widget/ImageView;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$16(Lhdp/player/LivePlayerS;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 894
    :cond_7
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 895
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 897
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$0(Lhdp/player/LivePlayerS;)Lhdp/widget/SoftVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lhdp/widget/SoftVideoView;->stopPlayback()V

    .line 899
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 901
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    .line 902
    iget-object v3, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-boolean v3, v3, Lhdp/player/LivePlayerS;->IsP2P:Z

    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 901
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 905
    :cond_8
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 906
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 908
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    .line 909
    iget-object v3, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-boolean v3, v3, Lhdp/player/LivePlayerS;->IsP2P:Z

    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 908
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 916
    :sswitch_2
    sget-boolean v1, Lhdp/player/LivePlayerS;->IsHuiBo:Z

    if-eqz v1, :cond_9

    .line 918
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    iget v2, v1, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 919
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 922
    :cond_9
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$0(Lhdp/player/LivePlayerS;)Lhdp/widget/SoftVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lhdp/widget/SoftVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$0(Lhdp/player/LivePlayerS;)Lhdp/widget/SoftVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lhdp/widget/SoftVideoView;->stopPlayback()V

    goto/16 :goto_0

    .line 929
    :sswitch_3
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$13(Lhdp/player/LivePlayerS;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 930
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$14(Lhdp/player/LivePlayerS;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$13(Lhdp/player/LivePlayerS;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 937
    :sswitch_4
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->welText:Landroid/widget/TextView;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$21(Lhdp/player/LivePlayerS;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 942
    :sswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_b

    .line 944
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->loading:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$22(Lhdp/player/LivePlayerS;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 945
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$14(Lhdp/player/LivePlayerS;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->loading:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$22(Lhdp/player/LivePlayerS;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 948
    :cond_a
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 950
    :cond_b
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_d

    .line 952
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->loading:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$22(Lhdp/player/LivePlayerS;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_c

    .line 953
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$14(Lhdp/player/LivePlayerS;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->loading:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$22(Lhdp/player/LivePlayerS;)Landroid/widget/ProgressBar;

    move-result-object v2

    iget-object v3, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lhdp/player/LivePlayerS;->access$23(Lhdp/player/LivePlayerS;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 956
    :cond_c
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 958
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    .line 959
    iget-object v3, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-boolean v3, v3, Lhdp/player/LivePlayerS;->IsP2P:Z

    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 958
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 961
    :cond_d
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v8, :cond_0

    .line 963
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->loading:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$22(Lhdp/player/LivePlayerS;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 964
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$14(Lhdp/player/LivePlayerS;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->loading:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$22(Lhdp/player/LivePlayerS;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 971
    :sswitch_6
    sget-boolean v1, Lhdp/player/LivePlayerS;->IsHuiBo:Z

    if-nez v1, :cond_0

    .line 976
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v1

    if-le v1, v5, :cond_f

    .line 977
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    .line 978
    invoke-virtual {v2}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v2

    .line 977
    if-ne v1, v2, :cond_e

    .line 979
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    const v2, 0x7f060040

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 980
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 981
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # invokes: Lhdp/player/LivePlayerS;->ChangeChannel(I)V
    invoke-static {v1, v5}, Lhdp/player/LivePlayerS;->access$24(Lhdp/player/LivePlayerS;I)V

    goto/16 :goto_0

    .line 983
    :cond_e
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    const v2, 0x7f06003f

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 984
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 985
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # invokes: Lhdp/player/LivePlayerS;->ChangeSource(I)V
    invoke-static {v1, v5}, Lhdp/player/LivePlayerS;->access$25(Lhdp/player/LivePlayerS;I)V

    goto/16 :goto_0

    .line 988
    :cond_f
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    const v2, 0x7f060040

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 989
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 990
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # invokes: Lhdp/player/LivePlayerS;->ChangeChannel(I)V
    invoke-static {v1, v5}, Lhdp/player/LivePlayerS;->access$24(Lhdp/player/LivePlayerS;I)V

    goto/16 :goto_0

    .line 997
    :sswitch_7
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    invoke-virtual {v1}, Lhdp/player/LivePlayerS;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 999
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$8(Lhdp/player/LivePlayerS;)Lhdp/player/LiveControl;

    move-result-object v1

    invoke-virtual {v1, v4}, Lhdp/player/LiveControl;->setState(I)V

    .line 1000
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$8(Lhdp/player/LivePlayerS;)Lhdp/player/LiveControl;

    move-result-object v1

    invoke-virtual {v1}, Lhdp/player/LiveControl;->show()V

    .line 1003
    :cond_10
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$8(Lhdp/player/LivePlayerS;)Lhdp/player/LiveControl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    const v4, 0x7f060044

    invoke-virtual {v3, v4}, Lhdp/player/LivePlayerS;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1004
    iget-object v3, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v3}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v3

    iget v3, v3, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1005
    iget-object v3, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v3}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v3

    invoke-virtual {v3}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1003
    invoke-virtual {v1, v2}, Lhdp/player/LiveControl;->setSource(Ljava/lang/String;)V

    .line 1007
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iget-object v3, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v3}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v3

    iget v3, v3, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    invoke-virtual {v2, v3}, Lhdp/javabean/LiveChannelInfo;->getSourceUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhdp/player/LivePlayerS;->access$7(Lhdp/player/LivePlayerS;Ljava/lang/String;)V

    .line 1009
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnable_huibo:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1015
    :sswitch_8
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v3, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v3}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhdp/player/LivePlayerS;->getVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhdp/player/LivePlayerS;->access$7(Lhdp/player/LivePlayerS;Ljava/lang/String;)V

    .line 1017
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-boolean v1, v1, Lhdp/player/LivePlayerS;->IsP2P:Z

    if-eqz v1, :cond_12

    .line 1019
    :cond_11
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$0(Lhdp/player/LivePlayerS;)Lhdp/widget/SoftVideoView;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhdp/widget/SoftVideoView;->setVideoPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1022
    :cond_12
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1023
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    iget-object v2, v2, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1028
    :sswitch_9
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->exit_download_pb:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$26(Lhdp/player/LivePlayerS;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 1031
    :sswitch_a
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->exit_download_pb:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$26(Lhdp/player/LivePlayerS;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 1034
    :sswitch_b
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->exit_download_pb:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$26(Lhdp/player/LivePlayerS;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 1037
    :sswitch_c
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1038
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1039
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    invoke-virtual {v1}, Lhdp/player/LivePlayerS;->delExitAPK()V

    goto/16 :goto_0

    .line 1042
    :sswitch_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1043
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1044
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    new-instance v1, Ljava/io/File;

    .line 1046
    sget-object v2, Lhdp/http/MyApp;->app_save_adress:Ljava/lang/String;

    sget-object v3, Lhdp/http/MyApp;->appname:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1047
    const-string v2, "application/vnd.android.package-archive"

    .line 1045
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    iget-object v1, p0, Lhdp/player/LivePlayerS$4;->this$0:Lhdp/player/LivePlayerS;

    invoke-virtual {v1, v0}, Lhdp/player/LivePlayerS;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 805
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
