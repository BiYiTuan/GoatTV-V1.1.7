.class Lhdp/widget/SoftVideoView$10;
.super Ljava/lang/Object;
.source "SoftVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/widget/SoftVideoView;->openVideo()V
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
    iput-object p1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lhdp/widget/SoftVideoView$10;)Lhdp/widget/SoftVideoView;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 230
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # invokes: Lhdp/widget/SoftVideoView;->release(Z)V
    invoke-static {v1, v8}, Lhdp/widget/SoftVideoView;->access$24(Lhdp/widget/SoftVideoView;Z)V

    .line 233
    const-string v1, "-"

    invoke-static {v1}, Lhdp/http/MyApp;->setLiveEpg(Ljava/lang/String;)V

    .line 234
    const-string v1, "0"

    invoke-static {v1}, Lhdp/http/MyApp;->setLiveSeek(Ljava/lang/String;)V

    .line 235
    const-string v1, "-"

    invoke-static {v1}, Lhdp/http/MyApp;->setLive_Cookie(Ljava/lang/String;)V

    .line 236
    const-string v1, "-"

    invoke-static {v1}, Lhdp/http/MyApp;->setLiveNextEpg(Ljava/lang/String;)V

    .line 237
    sget-object v1, Lhdp/http/MyApp;->ErrorUrl:Ljava/lang/String;

    invoke-static {v1}, Lhdp/http/MyApp;->setLiveNextUrl(Ljava/lang/String;)V

    .line 240
    :try_start_0
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    new-instance v2, Lio/vov/vitamio/MediaPlayer;

    iget-object v3, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lhdp/widget/SoftVideoView;->access$33(Lhdp/widget/SoftVideoView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/vov/vitamio/MediaPlayer;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lhdp/widget/SoftVideoView;->access$34(Lhdp/widget/SoftVideoView;Lio/vov/vitamio/MediaPlayer;)V

    .line 241
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    iget-object v2, v2, Lhdp/widget/SoftVideoView;->mPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setOnPreparedListener(Lio/vov/vitamio/MediaPlayer$OnPreparedListener;)V

    .line 242
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    iget-object v2, v2, Lhdp/widget/SoftVideoView;->mSizeChangedListener:Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setOnVideoSizeChangedListener(Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 244
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$35(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setOnSeekCompleteListener(Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;)V

    .line 246
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    iget-object v2, v2, Lhdp/widget/SoftVideoView;->mInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setOnInfoListener(Lio/vov/vitamio/MediaPlayer$OnInfoListener;)V

    .line 247
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lhdp/widget/SoftVideoView;->access$36(Lhdp/widget/SoftVideoView;I)V

    .line 248
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$37(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setOnCompletionListener(Lio/vov/vitamio/MediaPlayer$OnCompletionListener;)V

    .line 249
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$31(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setOnErrorListener(Lio/vov/vitamio/MediaPlayer$OnErrorListener;)V

    .line 250
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$38(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/vov/vitamio/MediaPlayer;->setOnBufferingUpdateListener(Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;)V

    .line 252
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lhdp/widget/SoftVideoView;->access$25(Lhdp/widget/SoftVideoView;I)V

    .line 253
    const-string v1, "video-"

    iget-object v2, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$39(Lhdp/widget/SoftVideoView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$33(Lhdp/widget/SoftVideoView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lhdp/widget/SoftVideoView;->access$39(Lhdp/widget/SoftVideoView;)Landroid/net/Uri;

    move-result-object v3

    .line 255
    iget-object v4, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    iget-object v5, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lhdp/widget/SoftVideoView;->access$39(Lhdp/widget/SoftVideoView;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mHeaders:Ljava/util/Map;
    invoke-static {v6}, Lhdp/widget/SoftVideoView;->access$40(Lhdp/widget/SoftVideoView;)Ljava/util/Map;

    move-result-object v6

    # invokes: Lhdp/widget/SoftVideoView;->getPlayer_headers(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    invoke-static {v4, v5, v6}, Lhdp/widget/SoftVideoView;->access$41(Lhdp/widget/SoftVideoView;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 254
    invoke-virtual {v1, v2, v3, v4}, Lio/vov/vitamio/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    iget-object v1, v1, Lhdp/widget/SoftVideoView;->handler:Landroid/os/Handler;

    new-instance v2, Lhdp/widget/SoftVideoView$10$1;

    invoke-direct {v2, p0}, Lhdp/widget/SoftVideoView$10$1;-><init>(Lhdp/widget/SoftVideoView$10;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    invoke-static {v1, v7}, Lhdp/widget/SoftVideoView;->access$4(Lhdp/widget/SoftVideoView;I)V

    .line 260
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    invoke-static {v1, v7}, Lhdp/widget/SoftVideoView;->access$22(Lhdp/widget/SoftVideoView;I)V

    .line 261
    iget-object v1, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lhdp/widget/SoftVideoView;->access$31(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lhdp/widget/SoftVideoView$10;->this$0:Lhdp/widget/SoftVideoView;

    # getter for: Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;
    invoke-static {v2}, Lhdp/widget/SoftVideoView;->access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;

    move-result-object v2

    .line 262
    const/4 v3, 0x1

    .line 261
    invoke-interface {v1, v2, v3, v8}, Lio/vov/vitamio/MediaPlayer$OnErrorListener;->onError(Lio/vov/vitamio/MediaPlayer;II)Z

    goto :goto_0
.end method
