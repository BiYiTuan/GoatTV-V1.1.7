.class Lhdp/player/LivePlayerS$1;
.super Ljava/lang/Object;
.source "LivePlayerS.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lhdp/player/LivePlayerS$1;->this$0:Lhdp/player/LivePlayerS;

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-object v0, p0, Lhdp/player/LivePlayerS$1;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$0(Lhdp/player/LivePlayerS;)Lhdp/widget/SoftVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lhdp/widget/SoftVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    sget-boolean v0, Lhdp/http/MyApp;->AUTO_CHANGE_ENCODE_MODEL:Z

    if-eqz v0, :cond_1

    .line 638
    invoke-static {}, Lhdp/http/MyApp;->getJiemaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lhdp/player/LivePlayerS$1;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$0(Lhdp/player/LivePlayerS;)Lhdp/widget/SoftVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lhdp/widget/SoftVideoView;->stopPlayback()V

    .line 641
    iget-object v0, p0, Lhdp/player/LivePlayerS$1;->this$0:Lhdp/player/LivePlayerS;

    # invokes: Lhdp/player/LivePlayerS;->ClearView()V
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$1(Lhdp/player/LivePlayerS;)V

    .line 642
    sput-boolean v2, Lhdp/http/MyApp;->AUTO_CHANGE_ENCODE_MODEL:Z

    .line 643
    iget-object v0, p0, Lhdp/player/LivePlayerS$1;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$2(Lhdp/player/LivePlayerS;)Lhdp/player/PlayerMenuContrl;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LivePlayerS$1;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhdp/player/PlayerMenuContrl;->SetState(Lhdp/javabean/LiveChannelInfo;)V

    .line 644
    iget-object v0, p0, Lhdp/player/LivePlayerS$1;->this$0:Lhdp/player/LivePlayerS;

    const v1, 0x7f0600a9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 646
    iget-object v0, p0, Lhdp/player/LivePlayerS$1;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$2(Lhdp/player/LivePlayerS;)Lhdp/player/PlayerMenuContrl;

    move-result-object v0

    const-string v1, "AUTO"

    invoke-virtual {v0, v1}, Lhdp/player/PlayerMenuContrl;->ChangeJiemaModel(Ljava/lang/String;)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lhdp/http/MyApp;->AUTO_CHANGE_ENCODE_MODEL:Z

    .line 650
    iget-object v0, p0, Lhdp/player/LivePlayerS$1;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
