.class Lhdp/widget/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/widget/VideoView;


# direct methods
.method constructor <init>(Lhdp/widget/VideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    .line 469
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

    .line 472
    iget-object v4, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    invoke-static {v4, p3}, Lhdp/widget/VideoView;->access$27(Lhdp/widget/VideoView;I)V

    .line 473
    iget-object v4, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    invoke-static {v4, p4}, Lhdp/widget/VideoView;->access$28(Lhdp/widget/VideoView;I)V

    .line 474
    iget-object v4, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mTargetState:I
    invoke-static {v4}, Lhdp/widget/VideoView;->access$15(Lhdp/widget/VideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 475
    .local v1, "isValidState":Z
    :goto_0
    iget-object v4, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mVideoWidth:I
    invoke-static {v4}, Lhdp/widget/VideoView;->access$2(Lhdp/widget/VideoView;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mVideoHeight:I
    invoke-static {v4}, Lhdp/widget/VideoView;->access$3(Lhdp/widget/VideoView;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 476
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 477
    iget-object v2, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lhdp/widget/VideoView;->access$12(Lhdp/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    iget-object v2, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    iget-object v3, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Lhdp/widget/VideoView;->access$12(Lhdp/widget/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lhdp/widget/VideoView;->seekTo(I)V

    .line 480
    :cond_0
    iget-object v2, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    invoke-virtual {v2}, Lhdp/widget/VideoView;->start()V

    .line 482
    :cond_1
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_2
    move v1, v3

    .line 474
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_3
    move v0, v3

    .line 475
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 485
    iget-object v0, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    invoke-static {v0, p1}, Lhdp/widget/VideoView;->access$29(Lhdp/widget/VideoView;Landroid/view/SurfaceHolder;)V

    .line 486
    iget-object v0, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    # invokes: Lhdp/widget/VideoView;->openVideo()V
    invoke-static {v0}, Lhdp/widget/VideoView;->access$21(Lhdp/widget/VideoView;)V

    .line 487
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 491
    iget-object v0, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhdp/widget/VideoView;->access$29(Lhdp/widget/VideoView;Landroid/view/SurfaceHolder;)V

    .line 492
    iget-object v0, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$9(Lhdp/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lhdp/widget/VideoView;->access$9(Lhdp/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 494
    :cond_0
    iget-object v0, p0, Lhdp/widget/VideoView$7;->this$0:Lhdp/widget/VideoView;

    const/4 v1, 0x1

    # invokes: Lhdp/widget/VideoView;->release(Z)V
    invoke-static {v0, v1}, Lhdp/widget/VideoView;->access$24(Lhdp/widget/VideoView;Z)V

    .line 495
    return-void
.end method
