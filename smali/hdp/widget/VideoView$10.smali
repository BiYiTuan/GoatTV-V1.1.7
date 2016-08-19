.class Lhdp/widget/VideoView$10;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/widget/VideoView;->openVideo()V
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
    iput-object p1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lhdp/widget/VideoView$10;)Lhdp/widget/VideoView;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 231
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # invokes: Lhdp/widget/VideoView;->release(Z)V
    invoke-static {v1, v8}, Lhdp/widget/VideoView;->access$24(Lhdp/widget/VideoView;Z)V

    .line 234
    const-string v1, "-"

    invoke-static {v1}, Lhdp/http/MyApp;->setLiveEpg(Ljava/lang/String;)V

    .line 235
    const-string v1, "0"

    invoke-static {v1}, Lhdp/http/MyApp;->setLiveSeek(Ljava/lang/String;)V

    .line 236
    const-string v1, "-"

    invoke-static {v1}, Lhdp/http/MyApp;->setLive_Cookie(Ljava/lang/String;)V

    .line 237
    const-string v1, "-"

    invoke-static {v1}, Lhdp/http/MyApp;->setLiveNextEpg(Ljava/lang/String;)V

    .line 238
    sget-object v1, Lhdp/http/MyApp;->ErrorUrl:Ljava/lang/String;

    invoke-static {v1}, Lhdp/http/MyApp;->setLiveNextUrl(Ljava/lang/String;)V

    .line 240
    :try_start_0
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v1, v2}, Lhdp/widget/VideoView;->access$32(Lhdp/widget/VideoView;Landroid/media/MediaPlayer;)V

    .line 241
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    iget-object v2, v2, Lhdp/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 242
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    iget-object v2, v2, Lhdp/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 244
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v2}, Lhdp/widget/VideoView;->access$33(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 246
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    iget-object v2, v2, Lhdp/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 247
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lhdp/widget/VideoView;->access$34(Lhdp/widget/VideoView;I)V

    .line 248
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Lhdp/widget/VideoView;->access$35(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 249
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Lhdp/widget/VideoView;->access$30(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 250
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v2}, Lhdp/widget/VideoView;->access$36(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 252
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lhdp/widget/VideoView;->access$25(Lhdp/widget/VideoView;I)V

    .line 253
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lhdp/widget/VideoView;->access$37(Lhdp/widget/VideoView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lhdp/widget/VideoView;->access$38(Lhdp/widget/VideoView;)Landroid/net/Uri;

    move-result-object v3

    .line 254
    iget-object v4, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    iget-object v5, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lhdp/widget/VideoView;->access$38(Lhdp/widget/VideoView;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mHeaders:Ljava/util/Map;
    invoke-static {v6}, Lhdp/widget/VideoView;->access$39(Lhdp/widget/VideoView;)Ljava/util/Map;

    move-result-object v6

    # invokes: Lhdp/widget/VideoView;->getPlayer_headers(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    invoke-static {v4, v5, v6}, Lhdp/widget/VideoView;->access$40(Lhdp/widget/VideoView;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 253
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 255
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v2}, Lhdp/widget/VideoView;->access$41(Lhdp/widget/VideoView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    iget-object v1, v1, Lhdp/widget/VideoView;->handler:Landroid/os/Handler;

    new-instance v2, Lhdp/widget/VideoView$10$1;

    invoke-direct {v2, p0}, Lhdp/widget/VideoView$10$1;-><init>(Lhdp/widget/VideoView$10;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    invoke-static {v1, v7}, Lhdp/widget/VideoView;->access$4(Lhdp/widget/VideoView;I)V

    .line 258
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    invoke-static {v1, v7}, Lhdp/widget/VideoView;->access$22(Lhdp/widget/VideoView;I)V

    .line 259
    iget-object v1, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lhdp/widget/VideoView;->access$30(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/VideoView$10;->this$0:Lhdp/widget/VideoView;

    # getter for: Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lhdp/widget/VideoView;->access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 260
    const/4 v3, 0x1

    .line 259
    invoke-interface {v1, v2, v3, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 261
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
