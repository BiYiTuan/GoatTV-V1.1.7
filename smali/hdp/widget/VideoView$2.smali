.class Lhdp/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 322
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lhdp/widget/VideoView;->access$4(Lhdp/widget/VideoView;I)V

    .line 323
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    iget-object v2, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    iget-object v3, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    invoke-static {v3, v4}, Lhdp/widget/VideoView;->access$5(Lhdp/widget/VideoView;Z)V

    invoke-static {v2, v4}, Lhdp/widget/VideoView;->access$6(Lhdp/widget/VideoView;Z)V

    invoke-static {v1, v4}, Lhdp/widget/VideoView;->access$7(Lhdp/widget/VideoView;Z)V

    .line 324
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    iget-object v1, v1, Lhdp/widget/VideoView;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->TimeOutError:Ljava/lang/Runnable;
    invoke-static {v2}, Lhdp/widget/VideoView;->access$8(Lhdp/widget/VideoView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 325
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$9(Lhdp/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$9(Lhdp/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 328
    :cond_0
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lhdp/widget/VideoView;->access$0(Lhdp/widget/VideoView;I)V

    .line 329
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lhdp/widget/VideoView;->access$1(Lhdp/widget/VideoView;I)V

    .line 330
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$10(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$10(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 333
    :cond_1
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lhdp/widget/VideoView;->access$12(Lhdp/widget/VideoView;)I

    move-result v0

    .line 335
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_2

    .line 336
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    invoke-virtual {v1, v0}, Lhdp/widget/VideoView;->seekTo(I)V

    .line 339
    :cond_2
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mVideoWidth:I
    invoke-static {v1}, Lhdp/widget/VideoView;->access$2(Lhdp/widget/VideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mVideoHeight:I
    invoke-static {v1}, Lhdp/widget/VideoView;->access$3(Lhdp/widget/VideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 340
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    invoke-virtual {v1}, Lhdp/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mVideoWidth:I
    invoke-static {v2}, Lhdp/widget/VideoView;->access$2(Lhdp/widget/VideoView;)I

    move-result v2

    iget-object v3, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mVideoHeight:I
    invoke-static {v3}, Lhdp/widget/VideoView;->access$3(Lhdp/widget/VideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 341
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mSurfaceWidth:I
    invoke-static {v1}, Lhdp/widget/VideoView;->access$13(Lhdp/widget/VideoView;)I

    move-result v1

    iget-object v2, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mVideoWidth:I
    invoke-static {v2}, Lhdp/widget/VideoView;->access$2(Lhdp/widget/VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 342
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mSurfaceHeight:I
    invoke-static {v1}, Lhdp/widget/VideoView;->access$14(Lhdp/widget/VideoView;)I

    move-result v1

    iget-object v2, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mVideoHeight:I
    invoke-static {v2}, Lhdp/widget/VideoView;->access$3(Lhdp/widget/VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 343
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mTargetState:I
    invoke-static {v1}, Lhdp/widget/VideoView;->access$15(Lhdp/widget/VideoView;)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 344
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    invoke-virtual {v1}, Lhdp/widget/VideoView;->start()V

    .line 345
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$9(Lhdp/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 346
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$9(Lhdp/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 360
    :cond_3
    :goto_0
    return-void

    .line 348
    :cond_4
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    invoke-virtual {v1}, Lhdp/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 349
    if-nez v0, :cond_5

    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    invoke-virtual {v1}, Lhdp/widget/VideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 350
    :cond_5
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$9(Lhdp/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 351
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$9(Lhdp/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 356
    :cond_6
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mTargetState:I
    invoke-static {v1}, Lhdp/widget/VideoView;->access$15(Lhdp/widget/VideoView;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 357
    iget-object v1, p0, Lhdp/widget/VideoView$2;->this$0:Lhdp/widget/VideoView;

    invoke-virtual {v1}, Lhdp/widget/VideoView;->start()V

    goto :goto_0
.end method
