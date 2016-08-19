.class Lhdp/widget/SoftVideoView$2;
.super Ljava/lang/Object;
.source "SoftVideoView.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lio/vov/vitamio/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 319
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lhdp/widget/SoftVideoView;->access$4(Lhdp/widget/SoftVideoView;I)V

    .line 320
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    iget-object v2, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    iget-object v3, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    invoke-static {v3, v4}, Lhdp/widget/SoftVideoView;->access$5(Lhdp/widget/SoftVideoView;Z)V

    invoke-static {v2, v4}, Lhdp/widget/SoftVideoView;->access$6(Lhdp/widget/SoftVideoView;Z)V

    invoke-static {v1, v4}, Lhdp/widget/SoftVideoView;->access$7(Lhdp/widget/SoftVideoView;Z)V

    .line 321
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    iget-object v1, v1, Lhdp/widget/SoftVideoView;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->TimeOutError:Ljava/lang/Runnable;
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$8(Lhdp/widget/SoftVideoView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$9(Lhdp/widget/SoftVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$9(Lhdp/widget/SoftVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 325
    :cond_0
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    invoke-virtual {p1}, Lio/vov/vitamio/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lhdp/widget/SoftVideoView;->access$0(Lhdp/widget/SoftVideoView;I)V

    .line 326
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    invoke-virtual {p1}, Lio/vov/vitamio/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lhdp/widget/SoftVideoView;->access$1(Lhdp/widget/SoftVideoView;I)V

    .line 327
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$10(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$10(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/vov/vitamio/MediaPlayer$OnPreparedListener;->onPrepared(Lio/vov/vitamio/MediaPlayer;)V

    .line 330
    :cond_1
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$12(Lhdp/widget/SoftVideoView;)I

    move-result v0

    .line 332
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_2

    .line 333
    const-string v1, "SoftVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "seekToPosition ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    invoke-virtual {v1, v0}, Lhdp/widget/SoftVideoView;->seekTo(I)V

    .line 337
    :cond_2
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mVideoWidth:I
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$2(Lhdp/widget/SoftVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mVideoHeight:I
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$3(Lhdp/widget/SoftVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 338
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    invoke-virtual {v1}, Lhdp/widget/SoftVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mVideoWidth:I
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$2(Lhdp/widget/SoftVideoView;)I

    move-result v2

    iget-object v3, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mVideoHeight:I
    invoke-static {v3}, Lhdp/widget/SoftVideoView;->access$3(Lhdp/widget/SoftVideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 339
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mSurfaceWidth:I
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$13(Lhdp/widget/SoftVideoView;)I

    move-result v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mVideoWidth:I
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$2(Lhdp/widget/SoftVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 340
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mSurfaceHeight:I
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$14(Lhdp/widget/SoftVideoView;)I

    move-result v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mVideoHeight:I
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$3(Lhdp/widget/SoftVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 341
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mTargetState:I
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$15(Lhdp/widget/SoftVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 342
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    invoke-virtual {v1}, Lhdp/widget/SoftVideoView;->start()V

    .line 343
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$9(Lhdp/widget/SoftVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 344
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$9(Lhdp/widget/SoftVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 358
    :cond_3
    :goto_0
    return-void

    .line 346
    :cond_4
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    invoke-virtual {v1}, Lhdp/widget/SoftVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 347
    if-nez v0, :cond_5

    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    invoke-virtual {v1}, Lhdp/widget/SoftVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 348
    :cond_5
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$9(Lhdp/widget/SoftVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 349
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$9(Lhdp/widget/SoftVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 354
    :cond_6
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mTargetState:I
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$15(Lhdp/widget/SoftVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 355
    iget-object v1, p0, Lhdp/widget/SoftVideoView$2;->this$0:Lhdp/widget/SoftVideoView;

    invoke-virtual {v1}, Lhdp/widget/SoftVideoView;->start()V

    goto :goto_0
.end method
