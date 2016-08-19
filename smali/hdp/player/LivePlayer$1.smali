.class Lhdp/player/LivePlayer$1;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lhdp/player/LivePlayer$1;->this$0:Lhdp/player/LivePlayer;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 632
    iget-object v0, p0, Lhdp/player/LivePlayer$1;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$0(Lhdp/player/LivePlayer;)Lhdp/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lhdp/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    sget-boolean v0, Lhdp/http/MyApp;->AUTO_CHANGE_ENCODE_MODEL:Z

    if-eqz v0, :cond_0

    .line 635
    const-string v0, "AUTO"

    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lhdp/player/LivePlayer$1;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$0(Lhdp/player/LivePlayer;)Lhdp/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lhdp/widget/VideoView;->stopPlayback()V

    .line 638
    iget-object v0, p0, Lhdp/player/LivePlayer$1;->this$0:Lhdp/player/LivePlayer;

    # invokes: Lhdp/player/LivePlayer;->ClearView()V
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$1(Lhdp/player/LivePlayer;)V

    .line 639
    sput-boolean v2, Lhdp/http/MyApp;->AUTO_CHANGE_ENCODE_MODEL:Z

    .line 640
    iget-object v0, p0, Lhdp/player/LivePlayer$1;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->menuContrl:Lhdp/player/PlayerMenuContrl;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$2(Lhdp/player/LivePlayer;)Lhdp/player/PlayerMenuContrl;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LivePlayer$1;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhdp/player/PlayerMenuContrl;->SetState(Lhdp/javabean/LiveChannelInfo;)V

    .line 641
    iget-object v0, p0, Lhdp/player/LivePlayer$1;->this$0:Lhdp/player/LivePlayer;

    const v1, 0x7f0600a8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 642
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 643
    iget-object v0, p0, Lhdp/player/LivePlayer$1;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->menuContrl:Lhdp/player/PlayerMenuContrl;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$2(Lhdp/player/LivePlayer;)Lhdp/player/PlayerMenuContrl;

    move-result-object v0

    const-string v1, "SOFT"

    invoke-virtual {v0, v1}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaModel(Ljava/lang/String;)V

    .line 657
    :goto_0
    return-void

    .line 647
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lhdp/http/MyApp;->AUTO_CHANGE_ENCODE_MODEL:Z

    .line 648
    iget-object v0, p0, Lhdp/player/LivePlayer$1;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Lhdp/player/LivePlayer$1;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$5(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No need to run next source"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
