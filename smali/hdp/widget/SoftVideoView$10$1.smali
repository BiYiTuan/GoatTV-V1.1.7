.class Lhdp/widget/SoftVideoView$10$1;
.super Ljava/lang/Object;
.source "SoftVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/widget/SoftVideoView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lhdp/widget/SoftVideoView$10;


# direct methods
.method constructor <init>(Lhdp/widget/SoftVideoView$10;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/widget/SoftVideoView$10$1;->this$1:Lhdp/widget/SoftVideoView$10;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 269
    :try_start_0
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10$1;->this$1:Lhdp/widget/SoftVideoView$10;

    # getter for: Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;
    invoke-static {v1}, Lhdp/widget/SoftVideoView$10;->access$0(Lhdp/widget/SoftVideoView$10;)Lhdp/widget/SoftVideoView;

    move-result-object v1

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$10$1;->this$1:Lhdp/widget/SoftVideoView$10;

    # getter for: Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;
    invoke-static {v2}, Lhdp/widget/SoftVideoView$10;->access$0(Lhdp/widget/SoftVideoView$10;)Lhdp/widget/SoftVideoView;

    move-result-object v2

    # getter for: Lhdp/widget/SoftVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$30(Lhdp/widget/SoftVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 270
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10$1;->this$1:Lhdp/widget/SoftVideoView$10;

    # getter for: Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;
    invoke-static {v1}, Lhdp/widget/SoftVideoView$10;->access$0(Lhdp/widget/SoftVideoView$10;)Lhdp/widget/SoftVideoView;

    move-result-object v1

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 271
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10$1;->this$1:Lhdp/widget/SoftVideoView$10;

    # getter for: Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;
    invoke-static {v1}, Lhdp/widget/SoftVideoView$10;->access$0(Lhdp/widget/SoftVideoView$10;)Lhdp/widget/SoftVideoView;

    move-result-object v1

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lio/vov/vitamio/MediaPlayer;->prepareAsync()V

    .line 272
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10$1;->this$1:Lhdp/widget/SoftVideoView$10;

    # getter for: Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;
    invoke-static {v1}, Lhdp/widget/SoftVideoView$10;->access$0(Lhdp/widget/SoftVideoView$10;)Lhdp/widget/SoftVideoView;

    move-result-object v1

    iget-object v1, v1, Lhdp/widget/SoftVideoView;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lhdp/widget/SoftVideoView$10$1;->this$1:Lhdp/widget/SoftVideoView$10;

    # getter for: Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;
    invoke-static {v2}, Lhdp/widget/SoftVideoView$10;->access$0(Lhdp/widget/SoftVideoView$10;)Lhdp/widget/SoftVideoView;

    move-result-object v2

    # getter for: Lhdp/widget/SoftVideoView;->TimeOutError:Ljava/lang/Runnable;
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$8(Lhdp/widget/SoftVideoView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10$1;->this$1:Lhdp/widget/SoftVideoView$10;

    # getter for: Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;
    invoke-static {v1}, Lhdp/widget/SoftVideoView$10;->access$0(Lhdp/widget/SoftVideoView$10;)Lhdp/widget/SoftVideoView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhdp/widget/SoftVideoView;->access$4(Lhdp/widget/SoftVideoView;I)V

    .line 274
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10$1;->this$1:Lhdp/widget/SoftVideoView$10;

    # getter for: Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;
    invoke-static {v1}, Lhdp/widget/SoftVideoView$10;->access$0(Lhdp/widget/SoftVideoView$10;)Lhdp/widget/SoftVideoView;

    move-result-object v1

    # invokes: Lhdp/widget/SoftVideoView;->attachMediaController()V
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$42(Lhdp/widget/SoftVideoView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10$1;->this$1:Lhdp/widget/SoftVideoView$10;

    # getter for: Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;
    invoke-static {v1}, Lhdp/widget/SoftVideoView$10;->access$0(Lhdp/widget/SoftVideoView$10;)Lhdp/widget/SoftVideoView;

    move-result-object v1

    invoke-static {v1, v6}, Lhdp/widget/SoftVideoView;->access$4(Lhdp/widget/SoftVideoView;I)V

    .line 278
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10$1;->this$1:Lhdp/widget/SoftVideoView$10;

    # getter for: Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;
    invoke-static {v1}, Lhdp/widget/SoftVideoView$10;->access$0(Lhdp/widget/SoftVideoView$10;)Lhdp/widget/SoftVideoView;

    move-result-object v1

    invoke-static {v1, v6}, Lhdp/widget/SoftVideoView;->access$22(Lhdp/widget/SoftVideoView;I)V

    .line 279
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10$1;->this$1:Lhdp/widget/SoftVideoView$10;

    # getter for: Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;
    invoke-static {v1}, Lhdp/widget/SoftVideoView$10;->access$0(Lhdp/widget/SoftVideoView$10;)Lhdp/widget/SoftVideoView;

    move-result-object v1

    # getter for: Lhdp/widget/SoftVideoView;->mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$31(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$10$1;->this$1:Lhdp/widget/SoftVideoView$10;

    # getter for: Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;
    invoke-static {v2}, Lhdp/widget/SoftVideoView$10;->access$0(Lhdp/widget/SoftVideoView$10;)Lhdp/widget/SoftVideoView;

    move-result-object v2

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v2

    .line 280
    const/4 v3, 0x0

    .line 279
    invoke-interface {v1, v2, v5, v3}, Lio/vov/vitamio/MediaPlayer$OnErrorListener;->onError(Lio/vov/vitamio/MediaPlayer;II)Z

    goto :goto_0
.end method
