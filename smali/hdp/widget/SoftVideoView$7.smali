.class Lhdp/widget/SoftVideoView$7;
.super Ljava/lang/Object;
.source "SoftVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    iput-object p1, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 469
    iget-object v4, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    invoke-static {v4, p3}, Lhdp/widget/SoftVideoView;->access$27(Lhdp/widget/SoftVideoView;I)V

    .line 470
    iget-object v4, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    invoke-static {v4, p4}, Lhdp/widget/SoftVideoView;->access$28(Lhdp/widget/SoftVideoView;I)V

    .line 471
    iget-object v4, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mTargetState:I
    invoke-static {v4}, Lhdp/widget/SoftVideoView;->access$15(Lhdp/widget/SoftVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 472
    .local v1, "isValidState":Z
    :goto_0
    iget-object v4, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mVideoWidth:I
    invoke-static {v4}, Lhdp/widget/SoftVideoView;->access$2(Lhdp/widget/SoftVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mVideoHeight:I
    invoke-static {v4}, Lhdp/widget/SoftVideoView;->access$3(Lhdp/widget/SoftVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 473
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 474
    iget-object v2, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$12(Lhdp/widget/SoftVideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    iget-object v2, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    iget-object v3, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Lhdp/widget/SoftVideoView;->access$12(Lhdp/widget/SoftVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lhdp/widget/SoftVideoView;->seekTo(I)V

    .line 477
    :cond_0
    iget-object v2, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    invoke-virtual {v2}, Lhdp/widget/SoftVideoView;->start()V

    .line 479
    :cond_1
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_2
    move v1, v3

    .line 471
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_3
    move v0, v3

    .line 472
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 482
    iget-object v0, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    invoke-static {v0, p1}, Lhdp/widget/SoftVideoView;->access$29(Lhdp/widget/SoftVideoView;Landroid/view/SurfaceHolder;)V

    .line 483
    iget-object v0, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$30(Lhdp/widget/SoftVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 484
    iget-object v0, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    # invokes: Lhdp/widget/SoftVideoView;->openVideo()V
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$21(Lhdp/widget/SoftVideoView;)V

    .line 485
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 489
    iget-object v0, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhdp/widget/SoftVideoView;->access$29(Lhdp/widget/SoftVideoView;Landroid/view/SurfaceHolder;)V

    .line 490
    iget-object v0, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$9(Lhdp/widget/SoftVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lhdp/widget/SoftVideoView;->access$9(Lhdp/widget/SoftVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 492
    :cond_0
    iget-object v0, p0, Lhdp/widget/SoftVideoView$7;->this$0:Lhdp/widget/SoftVideoView;

    const/4 v1, 0x1

    # invokes: Lhdp/widget/SoftVideoView;->release(Z)V
    invoke-static {v0, v1}, Lhdp/widget/SoftVideoView;->access$24(Lhdp/widget/SoftVideoView;Z)V

    .line 493
    return-void
.end method
