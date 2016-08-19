.class Lio/vov/vitamio/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lio/vov/vitamio/MediaPlayer;)V
    .locals 9
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    .line 94
    const-string v2, "onPrepared"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lio/vov/vitamio/widget/VideoView;->access$7(Lio/vov/vitamio/widget/VideoView;I)V

    .line 96
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-static {v2, v5}, Lio/vov/vitamio/widget/VideoView;->access$8(Lio/vov/vitamio/widget/VideoView;I)V

    .line 101
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$9(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$9(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v3, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v3}, Lio/vov/vitamio/widget/VideoView;->access$10(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/vov/vitamio/MediaPlayer$OnPreparedListener;->onPrepared(Lio/vov/vitamio/MediaPlayer;)V

    .line 103
    :cond_0
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 104
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/vov/vitamio/widget/MediaController;->setEnabled(Z)V

    .line 105
    :cond_1
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {p1}, Lio/vov/vitamio/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-static {v2, v3}, Lio/vov/vitamio/widget/VideoView;->access$0(Lio/vov/vitamio/widget/VideoView;I)V

    .line 106
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {p1}, Lio/vov/vitamio/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-static {v2, v3}, Lio/vov/vitamio/widget/VideoView;->access$1(Lio/vov/vitamio/widget/VideoView;I)V

    .line 107
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {p1}, Lio/vov/vitamio/MediaPlayer;->getVideoAspectRatio()F

    move-result v3

    invoke-static {v2, v3}, Lio/vov/vitamio/widget/VideoView;->access$2(Lio/vov/vitamio/widget/VideoView;F)V

    .line 109
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mSeekWhenPrepared:J
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$12(Lio/vov/vitamio/widget/VideoView;)J

    move-result-wide v0

    .line 111
    .local v0, "seekToPosition":J
    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v2, v0, v1}, Lio/vov/vitamio/widget/VideoView;->seekTo(J)V

    .line 113
    :cond_2
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mVideoWidth:I
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$3(Lio/vov/vitamio/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mVideoHeight:I
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$4(Lio/vov/vitamio/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 114
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    iget-object v3, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mVideoLayout:I
    invoke-static {v3}, Lio/vov/vitamio/widget/VideoView;->access$5(Lio/vov/vitamio/widget/VideoView;)I

    move-result v3

    iget-object v4, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mAspectRatio:F
    invoke-static {v4}, Lio/vov/vitamio/widget/VideoView;->access$6(Lio/vov/vitamio/widget/VideoView;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lio/vov/vitamio/widget/VideoView;->setVideoLayout(IF)V

    .line 115
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mSurfaceWidth:I
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$13(Lio/vov/vitamio/widget/VideoView;)I

    move-result v2

    iget-object v3, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mVideoWidth:I
    invoke-static {v3}, Lio/vov/vitamio/widget/VideoView;->access$3(Lio/vov/vitamio/widget/VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mSurfaceHeight:I
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$14(Lio/vov/vitamio/widget/VideoView;)I

    move-result v2

    iget-object v3, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mVideoHeight:I
    invoke-static {v3}, Lio/vov/vitamio/widget/VideoView;->access$4(Lio/vov/vitamio/widget/VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 116
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mTargetState:I
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$15(Lio/vov/vitamio/widget/VideoView;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 117
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/VideoView;->start()V

    .line 118
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lio/vov/vitamio/widget/MediaController;->show()V

    .line 128
    :cond_3
    :goto_0
    return-void

    .line 120
    :cond_4
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_3

    cmp-long v2, v0, v6

    if-nez v2, :cond_5

    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/VideoView;->getCurrentPosition()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    .line 121
    :cond_5
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 122
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v8}, Lio/vov/vitamio/widget/MediaController;->show(I)V

    goto :goto_0

    .line 125
    :cond_6
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    # getter for: Lio/vov/vitamio/widget/VideoView;->mTargetState:I
    invoke-static {v2}, Lio/vov/vitamio/widget/VideoView;->access$15(Lio/vov/vitamio/widget/VideoView;)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 126
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView$2;->this$0:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/VideoView;->start()V

    goto :goto_0
.end method
