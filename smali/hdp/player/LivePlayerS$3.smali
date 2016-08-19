.class Lhdp/player/LivePlayerS$3;
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
    iput-object p1, p0, Lhdp/player/LivePlayerS$3;->this$0:Lhdp/player/LivePlayerS;

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 786
    iget-object v0, p0, Lhdp/player/LivePlayerS$3;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lhdp/player/LivePlayerS$3;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$8(Lhdp/player/LivePlayerS;)Lhdp/player/LiveControl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhdp/player/LivePlayerS$3;->this$0:Lhdp/player/LivePlayerS;

    const v3, 0x7f060044

    invoke-virtual {v2, v3}, Lhdp/player/LivePlayerS;->getText(I)Ljava/lang/CharSequence;

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

    .line 789
    iget-object v2, p0, Lhdp/player/LivePlayerS$3;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;
    invoke-static {v2}, Lhdp/player/LivePlayerS;->access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 788
    invoke-virtual {v0, v1}, Lhdp/player/LiveControl;->setSource(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lhdp/player/LivePlayerS$3;->this$0:Lhdp/player/LivePlayerS;

    const v1, 0x7f060037

    .line 792
    const/4 v2, 0x1

    .line 791
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 798
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayerS$3;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;
    invoke-static {v0}, Lhdp/player/LivePlayerS;->access$0(Lhdp/player/LivePlayerS;)Lhdp/widget/SoftVideoView;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/LivePlayerS$3;->this$0:Lhdp/player/LivePlayerS;

    # getter for: Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;
    invoke-static {v1}, Lhdp/player/LivePlayerS;->access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhdp/widget/SoftVideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0
.end method
