.class Lhdp/player/LivePlayer$3;
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
    iput-object p1, p0, Lhdp/player/LivePlayer$3;->this$0:Lhdp/player/LivePlayer;

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 808
    iget-object v0, p0, Lhdp/player/LivePlayer$3;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lhdp/player/LivePlayer$3;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$9(Lhdp/player/LivePlayer;)Lhdp/player/LiveControl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhdp/player/LivePlayer$3;->this$0:Lhdp/player/LivePlayer;

    const v3, 0x7f060044

    invoke-virtual {v2, v3}, Lhdp/player/LivePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 811
    iget-object v2, p0, Lhdp/player/LivePlayer$3;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayer;->access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 810
    invoke-virtual {v0, v1}, Lhdp/player/LiveControl;->setSource(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lhdp/player/LivePlayer$3;->this$0:Lhdp/player/LivePlayer;

    const v1, 0x7f060037

    .line 814
    const/4 v2, 0x1

    .line 813
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 814
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 820
    :goto_0
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayer$3;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;
    invoke-static {v0}, Lhdp/player/LivePlayer;->access$0(Lhdp/player/LivePlayer;)Lhdp/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LivePlayer$3;->this$0:Lhdp/player/LivePlayer;

    # getter for: Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/LivePlayer;->access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhdp/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0
.end method
