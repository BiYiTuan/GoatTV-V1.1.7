.class Lhdp/widget/SoftVideoView$8;
.super Ljava/lang/Object;
.source "SoftVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/widget/SoftVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/widget/SoftVideoView;


# direct methods
.method constructor <init>(Lhdp/widget/SoftVideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/widget/SoftVideoView$8;->this$0:Lhdp/widget/SoftVideoView;

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 739
    const-string v0, "SoftVideoView"

    const-string v1, "open video time out "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lhdp/widget/SoftVideoView$8;->this$0:Lhdp/widget/SoftVideoView;

    invoke-static {v0, v2}, Lhdp/widget/SoftVideoView;->access$4(Lhdp/widget/SoftVideoView;I)V

    .line 741
    iget-object v0, p0, Lhdp/widget/SoftVideoView$8;->this$0:Lhdp/widget/SoftVideoView;

    invoke-static {v0, v2}, Lhdp/widget/SoftVideoView;->access$22(Lhdp/widget/SoftVideoView;I)V

    .line 742
    iget-object v0, p0, Lhdp/widget/SoftVideoView$8;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$31(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lhdp/widget/SoftVideoView$8;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    .line 743
    const/4 v2, 0x1

    const/16 v3, -0x64

    .line 742
    invoke-interface {v0, v1, v2, v3}, Lio/vov/vitamio/MediaPlayer$OnErrorListener;->onError(Lio/vov/vitamio/MediaPlayer;II)Z

    .line 744
    iget-object v0, p0, Lhdp/widget/SoftVideoView$8;->this$0:Lhdp/widget/SoftVideoView;

    const/4 v1, 0x0

    # invokes: Lhdp/widget/SoftVideoView;->release(Z)V
    invoke-static {v0, v1}, Lhdp/widget/SoftVideoView;->access$24(Lhdp/widget/SoftVideoView;Z)V

    .line 745
    return-void
.end method
