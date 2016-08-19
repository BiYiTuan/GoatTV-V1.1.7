.class Lio/vov/vitamio/widget/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vov/vitamio/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vov/vitamio/widget/VideoView;


# direct methods
.method constructor <init>(Lio/vov/vitamio/widget/VideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    .line 130
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

    .line 132
    iget-object v4, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-static {v4, p3}, Lio/vov/vitamio/widget/VideoView;->access$16(Lio/vov/vitamio/widget/VideoView;I)V

    .line 133
    iget-object v4, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-static {v4, p4}, Lio/vov/vitamio/widget/VideoView;->access$17(Lio/vov/vitamio/widget/VideoView;I)V

    .line 134
    iget-object v4, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mTargetState:I
    invoke-static {v4}, Lio/vov/vitamio/widget/VideoView;->access$15(Lio/vov/vitamio/widget/VideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 135
    .local v1, "isValidState":Z
    :goto_0
    iget-object v4, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mVideoWidth:I
    invoke-static {v4}, Lio/vov/vitamio/widget/VideoView;->access$3(Lio/vov/vitamio/widget/VideoView;)I

    move-result v4

    if-ne v4, p3, :cond_4

    iget-object v4, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mVideoHeight:I
    invoke-static {v4}, Lio/vov/vitamio/widget/VideoView;->access$4(Lio/vov/vitamio/widget/VideoView;)I

    move-result v4

    if-ne v4, p4, :cond_4

    move v0, v2

    .line 136
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$10(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 137
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mSeekWhenPrepared:J
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$12(Lio/vov/vitamio/widget/VideoView;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    iget-object v3, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mSeekWhenPrepared:J
    invoke-static {v3}, Lio/vov/vitamio/widget/VideoView;->access$12(Lio/vov/vitamio/widget/VideoView;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lio/vov/vitamio/widget/VideoView;->seekTo(J)V

    .line 139
    :cond_0
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/VideoView;->start()V

    .line 140
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 141
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lio/vov/vitamio/widget/MediaController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lio/vov/vitamio/widget/MediaController;->hide()V

    .line 143
    :cond_1
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lio/vov/vitamio/widget/MediaController;->show()V

    .line 146
    :cond_2
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_3
    move v1, v3

    .line 134
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_4
    move v0, v3

    .line 135
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 149
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-static {v0, p1}, Lio/vov/vitamio/widget/VideoView;->access$18(Lio/vov/vitamio/widget/VideoView;Landroid/view/SurfaceHolder;)V

    .line 151
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$19(Lio/vov/vitamio/widget/VideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 152
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$10(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mCurrentState:I
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$20(Lio/vov/vitamio/widget/VideoView;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mTargetState:I
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$15(Lio/vov/vitamio/widget/VideoView;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$10(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lio/vov/vitamio/widget/VideoView;->access$19(Lio/vov/vitamio/widget/VideoView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/vov/vitamio/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 154
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0}, Lio/vov/vitamio/widget/VideoView;->resume()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # invokes: Lio/vov/vitamio/widget/VideoView;->openVideo()V
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$21(Lio/vov/vitamio/widget/VideoView;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 161
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/vov/vitamio/widget/VideoView;->access$18(Lio/vov/vitamio/widget/VideoView;Landroid/view/SurfaceHolder;)V

    .line 162
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lio/vov/vitamio/widget/MediaController;->hide()V

    .line 164
    :cond_0
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mCurrentState:I
    invoke-static {v0}, Lio/vov/vitamio/widget/VideoView;->access$20(Lio/vov/vitamio/widget/VideoView;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 165
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView$3;->this$0:Lio/vov/vitamio/widget/VideoView;

    const/4 v1, 0x1

    # invokes: Lio/vov/vitamio/widget/VideoView;->release(Z)V
    invoke-static {v0, v1}, Lio/vov/vitamio/widget/VideoView;->access$22(Lio/vov/vitamio/widget/VideoView;Z)V

    .line 166
    :cond_1
    return-void
.end method
