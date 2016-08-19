.class public Lhdp/widget/SoftVideoView;
.super Landroid/view/SurfaceView;
.source "SoftVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/widget/SoftVideoView$OnChangScaleListener;
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoftVideoView"

.field private static final TIMEOUTDEFAULT:J = 0x7530L


# instance fields
.field private TimeOutError:Ljava/lang/Runnable;

.field private defaultScale:I

.field handler:Landroid/os/Handler;

.field private index:I

.field private isList:Z

.field isResultSeek:Z

.field private mBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mDurations:[I

.field private mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

.field private mHandler:Landroid/os/Handler;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

.field private mOnChangScaleListener:Lhdp/widget/SoftVideoView$OnChangScaleListener;

.field private mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

.field private mPath:Ljava/lang/String;

.field mPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mUris:[Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 49
    iput v2, p0, Lhdp/widget/SoftVideoView;->mCurrentState:I

    .line 50
    iput v2, p0, Lhdp/widget/SoftVideoView;->mTargetState:I

    .line 52
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 53
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 60
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    .line 61
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    .line 62
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    .line 63
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    .line 64
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    .line 162
    iput-boolean v2, p0, Lhdp/widget/SoftVideoView;->isList:Z

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->handler:Landroid/os/Handler;

    .line 307
    new-instance v0, Lhdp/widget/SoftVideoView$1;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$1;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mSizeChangedListener:Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

    .line 317
    new-instance v0, Lhdp/widget/SoftVideoView$2;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$2;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    .line 361
    new-instance v0, Lhdp/widget/SoftVideoView$3;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$3;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    .line 382
    new-instance v0, Lhdp/widget/SoftVideoView$4;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$4;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    .line 402
    new-instance v0, Lhdp/widget/SoftVideoView$5;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$5;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    .line 408
    new-instance v0, Lhdp/widget/SoftVideoView$6;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$6;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    .line 466
    new-instance v0, Lhdp/widget/SoftVideoView$7;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$7;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 580
    iput v2, p0, Lhdp/widget/SoftVideoView;->defaultScale:I

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/widget/SoftVideoView;->isResultSeek:Z

    .line 735
    new-instance v0, Lhdp/widget/SoftVideoView$8;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$8;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->TimeOutError:Ljava/lang/Runnable;

    .line 748
    new-instance v0, Lhdp/widget/SoftVideoView$9;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$9;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    .line 77
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lhdp/widget/SoftVideoView;->initVideoView()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 49
    iput v2, p0, Lhdp/widget/SoftVideoView;->mCurrentState:I

    .line 50
    iput v2, p0, Lhdp/widget/SoftVideoView;->mTargetState:I

    .line 52
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 53
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 60
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    .line 61
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    .line 62
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    .line 63
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    .line 64
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    .line 162
    iput-boolean v2, p0, Lhdp/widget/SoftVideoView;->isList:Z

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->handler:Landroid/os/Handler;

    .line 307
    new-instance v0, Lhdp/widget/SoftVideoView$1;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$1;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mSizeChangedListener:Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

    .line 317
    new-instance v0, Lhdp/widget/SoftVideoView$2;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$2;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    .line 361
    new-instance v0, Lhdp/widget/SoftVideoView$3;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$3;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    .line 382
    new-instance v0, Lhdp/widget/SoftVideoView$4;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$4;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    .line 402
    new-instance v0, Lhdp/widget/SoftVideoView$5;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$5;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    .line 408
    new-instance v0, Lhdp/widget/SoftVideoView$6;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$6;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    .line 466
    new-instance v0, Lhdp/widget/SoftVideoView$7;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$7;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 580
    iput v2, p0, Lhdp/widget/SoftVideoView;->defaultScale:I

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/widget/SoftVideoView;->isResultSeek:Z

    .line 735
    new-instance v0, Lhdp/widget/SoftVideoView$8;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$8;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->TimeOutError:Ljava/lang/Runnable;

    .line 748
    new-instance v0, Lhdp/widget/SoftVideoView$9;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$9;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    .line 84
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lhdp/widget/SoftVideoView;->mHandler:Landroid/os/Handler;

    .line 86
    invoke-direct {p0}, Lhdp/widget/SoftVideoView;->initVideoView()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lhdp/widget/SoftVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput v2, p0, Lhdp/widget/SoftVideoView;->mCurrentState:I

    .line 50
    iput v2, p0, Lhdp/widget/SoftVideoView;->mTargetState:I

    .line 52
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 53
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 60
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    .line 61
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    .line 62
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    .line 63
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    .line 64
    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    .line 162
    iput-boolean v2, p0, Lhdp/widget/SoftVideoView;->isList:Z

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->handler:Landroid/os/Handler;

    .line 307
    new-instance v0, Lhdp/widget/SoftVideoView$1;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$1;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mSizeChangedListener:Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

    .line 317
    new-instance v0, Lhdp/widget/SoftVideoView$2;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$2;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    .line 361
    new-instance v0, Lhdp/widget/SoftVideoView$3;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$3;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    .line 382
    new-instance v0, Lhdp/widget/SoftVideoView$4;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$4;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    .line 402
    new-instance v0, Lhdp/widget/SoftVideoView$5;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$5;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    .line 408
    new-instance v0, Lhdp/widget/SoftVideoView$6;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$6;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    .line 466
    new-instance v0, Lhdp/widget/SoftVideoView$7;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$7;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 580
    iput v2, p0, Lhdp/widget/SoftVideoView;->defaultScale:I

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/widget/SoftVideoView;->isResultSeek:Z

    .line 735
    new-instance v0, Lhdp/widget/SoftVideoView$8;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$8;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->TimeOutError:Ljava/lang/Runnable;

    .line 748
    new-instance v0, Lhdp/widget/SoftVideoView$9;

    invoke-direct {v0, p0}, Lhdp/widget/SoftVideoView$9;-><init>(Lhdp/widget/SoftVideoView;)V

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    .line 95
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mContext:Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Lhdp/widget/SoftVideoView;->initVideoView()V

    .line 98
    return-void
.end method

.method static synthetic access$0(Lhdp/widget/SoftVideoView;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lhdp/widget/SoftVideoView;->mVideoWidth:I

    return-void
.end method

.method static synthetic access$1(Lhdp/widget/SoftVideoView;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lhdp/widget/SoftVideoView;->mVideoHeight:I

    return-void
.end method

.method static synthetic access$10(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$11(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$12(Lhdp/widget/SoftVideoView;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lhdp/widget/SoftVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$13(Lhdp/widget/SoftVideoView;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lhdp/widget/SoftVideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$14(Lhdp/widget/SoftVideoView;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lhdp/widget/SoftVideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$15(Lhdp/widget/SoftVideoView;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lhdp/widget/SoftVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$16(Lhdp/widget/SoftVideoView;)Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lhdp/widget/SoftVideoView;->isList:Z

    return v0
.end method

.method static synthetic access$17(Lhdp/widget/SoftVideoView;)I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lhdp/widget/SoftVideoView;->index:I

    return v0
.end method

.method static synthetic access$18(Lhdp/widget/SoftVideoView;)[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$19(Lhdp/widget/SoftVideoView;I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lhdp/widget/SoftVideoView;->index:I

    return-void
.end method

.method static synthetic access$2(Lhdp/widget/SoftVideoView;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lhdp/widget/SoftVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$20(Lhdp/widget/SoftVideoView;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$21(Lhdp/widget/SoftVideoView;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lhdp/widget/SoftVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$22(Lhdp/widget/SoftVideoView;I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lhdp/widget/SoftVideoView;->mTargetState:I

    return-void
.end method

.method static synthetic access$23(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$24(Lhdp/widget/SoftVideoView;Z)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lhdp/widget/SoftVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$25(Lhdp/widget/SoftVideoView;I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lhdp/widget/SoftVideoView;->mCurrentBufferPercentage:I

    return-void
.end method

.method static synthetic access$26(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$27(Lhdp/widget/SoftVideoView;I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lhdp/widget/SoftVideoView;->mSurfaceWidth:I

    return-void
.end method

.method static synthetic access$28(Lhdp/widget/SoftVideoView;I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lhdp/widget/SoftVideoView;->mSurfaceHeight:I

    return-void
.end method

.method static synthetic access$29(Lhdp/widget/SoftVideoView;Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static synthetic access$3(Lhdp/widget/SoftVideoView;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lhdp/widget/SoftVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$30(Lhdp/widget/SoftVideoView;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$31(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$32(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$33(Lhdp/widget/SoftVideoView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$34(Lhdp/widget/SoftVideoView;Lio/vov/vitamio/MediaPlayer;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    return-void
.end method

.method static synthetic access$35(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$36(Lhdp/widget/SoftVideoView;I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lhdp/widget/SoftVideoView;->mDuration:I

    return-void
.end method

.method static synthetic access$37(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$38(Lhdp/widget/SoftVideoView;)Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$39(Lhdp/widget/SoftVideoView;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4(Lhdp/widget/SoftVideoView;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lhdp/widget/SoftVideoView;->mCurrentState:I

    return-void
.end method

.method static synthetic access$40(Lhdp/widget/SoftVideoView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$41(Lhdp/widget/SoftVideoView;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 852
    invoke-direct {p0, p1, p2}, Lhdp/widget/SoftVideoView;->getPlayer_headers(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$42(Lhdp/widget/SoftVideoView;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Lhdp/widget/SoftVideoView;->attachMediaController()V

    return-void
.end method

.method static synthetic access$5(Lhdp/widget/SoftVideoView;Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lhdp/widget/SoftVideoView;->mCanSeekForward:Z

    return-void
.end method

.method static synthetic access$6(Lhdp/widget/SoftVideoView;Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lhdp/widget/SoftVideoView;->mCanSeekBack:Z

    return-void
.end method

.method static synthetic access$7(Lhdp/widget/SoftVideoView;Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lhdp/widget/SoftVideoView;->mCanPause:Z

    return-void
.end method

.method static synthetic access$8(Lhdp/widget/SoftVideoView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->TimeOutError:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9(Lhdp/widget/SoftVideoView;)Landroid/widget/MediaController;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 300
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 302
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 303
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 305
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 301
    goto :goto_0
.end method

.method private getPlayer_headers(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .param p1, "PlayLiveUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "PHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 854
    if-eqz p2, :cond_0

    .line 899
    .end local p2    # "PHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object p2

    .line 856
    .restart local p2    # "PHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 857
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "User-Mac"

    sget-object v8, Lhdp/http/MyApp;->User_Mac:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    const-string v7, "User-Key"

    invoke-static {}, Lhdp/http/MyApp;->get_livekey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    const-string v7, "User-Ver"

    sget-object v8, Lhdp/http/MyApp;->User_Ver:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    sget-object v7, Lhdp/http/MyApp;->Live_Referer:Ljava/lang/String;

    const-string v8, "|"

    invoke-static {v7, v8}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 864
    sget-object v7, Lhdp/http/MyApp;->Live_Referer:Ljava/lang/String;

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, "Array_Live_Referer":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v1

    if-lt v6, v7, :cond_4

    .line 884
    .end local v1    # "Array_Live_Referer":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_1
    :goto_2
    sget-object v7, Lhdp/http/MyApp;->LiveCookie:Ljava/lang/String;

    if-eqz v7, :cond_2

    sget-object v7, Lhdp/http/MyApp;->LiveCookie:Ljava/lang/String;

    const-string v8, "-"

    if-eq v7, v8, :cond_2

    .line 885
    const-string v7, "Cookie"

    sget-object v8, Lhdp/http/MyApp;->LiveCookie:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :cond_2
    sget-object v7, Lhdp/http/MyApp;->Live_Range:Ljava/lang/String;

    const-string v8, "-"

    if-eq v7, v8, :cond_b

    sget-object v7, Lhdp/http/MyApp;->Live_Range:Ljava/lang/String;

    const-string v8, "|"

    invoke-static {v7, v8}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 888
    sget-object v7, Lhdp/http/MyApp;->Live_Range:Ljava/lang/String;

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "Array_Live_Range":[Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    array-length v7, v0

    if-lt v6, v7, :cond_9

    .end local v0    # "Array_Live_Range":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_3
    :goto_4
    move-object p2, v5

    .line 899
    goto :goto_0

    .line 866
    .restart local v1    # "Array_Live_Referer":[Ljava/lang/String;
    .restart local v6    # "i":I
    :cond_4
    aget-object v3, v1, v6

    .line 867
    .local v3, "a_Referer":Ljava/lang/String;
    const-string v7, "@"

    invoke-static {v3, v7}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 868
    const-string v7, "@"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 869
    .local v4, "b_Referer":[Ljava/lang/String;
    aget-object v7, v4, v9

    invoke-static {p1, v7}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 870
    const-string v7, "Referer"

    aget-object v8, v4, v10

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .end local v4    # "b_Referer":[Ljava/lang/String;
    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 872
    :cond_6
    invoke-static {p1, v3}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 873
    const-string v7, "Referer"

    invoke-interface {v5, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 876
    .end local v1    # "Array_Live_Referer":[Ljava/lang/String;
    .end local v3    # "a_Referer":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_7
    sget-object v7, Lhdp/http/MyApp;->Live_Referer:Ljava/lang/String;

    const-string v8, "@"

    invoke-static {v7, v8}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 877
    sget-object v7, Lhdp/http/MyApp;->Live_Referer:Ljava/lang/String;

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 878
    .restart local v4    # "b_Referer":[Ljava/lang/String;
    aget-object v7, v4, v9

    invoke-static {p1, v7}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 879
    const-string v7, "Referer"

    aget-object v8, v4, v10

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 881
    .end local v4    # "b_Referer":[Ljava/lang/String;
    :cond_8
    sget-object v7, Lhdp/http/MyApp;->Live_Referer:Ljava/lang/String;

    invoke-static {p1, v7}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 882
    const-string v7, "Referer"

    invoke-interface {v5, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 890
    .restart local v0    # "Array_Live_Range":[Ljava/lang/String;
    .restart local v6    # "i":I
    :cond_9
    aget-object v2, v0, v6

    .line 891
    .local v2, "a_Range":Ljava/lang/String;
    invoke-static {p1, v2}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 892
    const-string v7, "Range"

    const-string v8, "bytes="

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 889
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 896
    .end local v0    # "Array_Live_Range":[Ljava/lang/String;
    .end local v2    # "a_Range":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_b
    sget-object v7, Lhdp/http/MyApp;->Live_Range:Ljava/lang/String;

    invoke-static {p1, v7}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 897
    const-string v7, "Range"

    const-string v8, "bytes="

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    iput v2, p0, Lhdp/widget/SoftVideoView;->mVideoWidth:I

    .line 131
    iput v2, p0, Lhdp/widget/SoftVideoView;->mVideoHeight:I

    .line 132
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 133
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 134
    invoke-virtual {p0, v3}, Lhdp/widget/SoftVideoView;->setFocusable(Z)V

    .line 135
    invoke-virtual {p0, v3}, Lhdp/widget/SoftVideoView;->setFocusableInTouchMode(Z)V

    .line 136
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->requestFocus()Z

    .line 137
    iput v2, p0, Lhdp/widget/SoftVideoView;->mCurrentState:I

    .line 138
    iput v2, p0, Lhdp/widget/SoftVideoView;->mTargetState:I

    .line 139
    return-void
.end method

.method private openVideo()V
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1}, Lio/vov/vitamio/MediaPlayer;->reset()V

    .line 222
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1}, Lio/vov/vitamio/MediaPlayer;->release()V

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 226
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lhdp/widget/SoftVideoView$10;

    invoke-direct {v2, p0}, Lhdp/widget/SoftVideoView$10;-><init>(Lhdp/widget/SoftVideoView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 286
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private release(Z)V
    .locals 5
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 500
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->reset()V

    .line 502
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->release()V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 504
    iput v4, p0, Lhdp/widget/SoftVideoView;->mCurrentState:I

    .line 505
    if-eqz p1, :cond_0

    .line 506
    iput v4, p0, Lhdp/widget/SoftVideoView;->mTargetState:I

    .line 510
    :cond_0
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/widget/SoftVideoView;->TimeOutError:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 512
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lhdp/widget/SoftVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 727
    iget-boolean v0, p0, Lhdp/widget/SoftVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lhdp/widget/SoftVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 905
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 712
    iget v0, p0, Lhdp/widget/SoftVideoView;->mCurrentBufferPercentage:I

    .line 714
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 6

    .prologue
    .line 649
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 650
    iget-boolean v2, p0, Lhdp/widget/SoftVideoView;->isList:Z

    if-eqz v2, :cond_1

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "currentPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lhdp/widget/SoftVideoView;->index:I

    if-lt v1, v2, :cond_0

    .line 655
    int-to-long v2, v0

    iget-object v4, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v4}, Lio/vov/vitamio/MediaPlayer;->getCurrentPosition()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 661
    .end local v0    # "currentPosition":I
    .end local v1    # "i":I
    :goto_1
    return v0

    .line 653
    .restart local v0    # "currentPosition":I
    .restart local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lhdp/widget/SoftVideoView;->mDurations:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    .end local v0    # "currentPosition":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->getCurrentPosition()J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_1

    .line 661
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDuration()I
    .locals 3

    .prologue
    .line 629
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 630
    iget v1, p0, Lhdp/widget/SoftVideoView;->mDuration:I

    if-lez v1, :cond_0

    .line 631
    iget v1, p0, Lhdp/widget/SoftVideoView;->mDuration:I

    .line 644
    :goto_0
    return v1

    .line 633
    :cond_0
    iget-boolean v1, p0, Lhdp/widget/SoftVideoView;->isList:Z

    if-eqz v1, :cond_2

    .line 634
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mDurations:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 637
    iget v1, p0, Lhdp/widget/SoftVideoView;->mDuration:I

    goto :goto_0

    .line 635
    :cond_1
    iget v1, p0, Lhdp/widget/SoftVideoView;->mDuration:I

    iget-object v2, p0, Lhdp/widget/SoftVideoView;->mDurations:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lhdp/widget/SoftVideoView;->mDuration:I

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 639
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v1}, Lio/vov/vitamio/MediaPlayer;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lhdp/widget/SoftVideoView;->mDuration:I

    .line 640
    iget v1, p0, Lhdp/widget/SoftVideoView;->mDuration:I

    goto :goto_0

    .line 643
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lhdp/widget/SoftVideoView;->mDuration:I

    .line 644
    iget v1, p0, Lhdp/widget/SoftVideoView;->mDuration:I

    goto :goto_0
.end method

.method public isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 718
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lhdp/widget/SoftVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 719
    iget v1, p0, Lhdp/widget/SoftVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lhdp/widget/SoftVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    .line 718
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 707
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 534
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    .line 535
    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    .line 536
    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    .line 537
    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    .line 538
    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    .line 539
    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    .line 540
    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 541
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 542
    iget-object v2, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_9

    .line 543
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    .line 544
    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 545
    :cond_0
    iget-object v2, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 546
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->pause()V

    .line 547
    iget-object v2, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 577
    :cond_1
    :goto_1
    return v1

    .line 534
    .end local v0    # "isKeyCodeSupported":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 549
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_3
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->start()V

    .line 550
    iget-object v2, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 553
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 554
    iget-object v2, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 555
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->start()V

    .line 556
    iget-object v2, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 559
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    .line 560
    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 561
    :cond_6
    iget-object v2, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->pause()V

    .line 563
    iget-object v2, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 566
    :cond_7
    const/16 v2, 0xb9

    if-ne p1, v2, :cond_8

    .line 567
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->selectScales()V

    .line 568
    iget-object v2, p0, Lhdp/widget/SoftVideoView;->mOnChangScaleListener:Lhdp/widget/SoftVideoView$OnChangScaleListener;

    if-eqz v2, :cond_1

    .line 569
    iget-object v2, p0, Lhdp/widget/SoftVideoView;->mOnChangScaleListener:Lhdp/widget/SoftVideoView$OnChangScaleListener;

    iget v3, p0, Lhdp/widget/SoftVideoView;->defaultScale:I

    invoke-interface {v2, v3}, Lhdp/widget/SoftVideoView$OnChangScaleListener;->changeScale(I)V

    goto :goto_1

    .line 573
    :cond_8
    invoke-direct {p0}, Lhdp/widget/SoftVideoView;->toggleMediaControlsVisiblity()V

    .line 577
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 102
    iget v2, p0, Lhdp/widget/SoftVideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lhdp/widget/SoftVideoView;->getDefaultSize(II)I

    move-result v1

    .line 103
    .local v1, "width":I
    iget v2, p0, Lhdp/widget/SoftVideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lhdp/widget/SoftVideoView;->getDefaultSize(II)I

    move-result v0

    .line 104
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lhdp/widget/SoftVideoView;->setMeasuredDimension(II)V

    .line 105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 518
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 519
    invoke-direct {p0}, Lhdp/widget/SoftVideoView;->toggleMediaControlsVisiblity()V

    .line 521
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 526
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 527
    invoke-direct {p0}, Lhdp/widget/SoftVideoView;->toggleMediaControlsVisiblity()V

    .line 529
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 608
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->pause()V

    .line 612
    iput v1, p0, Lhdp/widget/SoftVideoView;->mCurrentState:I

    .line 615
    :cond_0
    iput v1, p0, Lhdp/widget/SoftVideoView;->mTargetState:I

    .line 616
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 108
    move v0, p1

    .line 109
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 110
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 112
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 125
    :goto_0
    return v0

    .line 114
    :sswitch_0
    move v0, p1

    .line 115
    goto :goto_0

    .line 118
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 119
    goto :goto_0

    .line 122
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 112
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Lhdp/widget/SoftVideoView;->openVideo()V

    .line 624
    return-void
.end method

.method public seekTo(I)V
    .locals 5
    .param p1, "msec"    # I

    .prologue
    const/4 v4, 0x0

    .line 667
    if-gtz p1, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    const-string v1, "SoftVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msec = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-boolean v1, p0, Lhdp/widget/SoftVideoView;->isResultSeek:Z

    if-eqz v1, :cond_3

    .line 672
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lio/vov/vitamio/MediaPlayer;->seekTo(J)V

    .line 674
    iput v4, p0, Lhdp/widget/SoftVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 676
    :cond_2
    iput p1, p0, Lhdp/widget/SoftVideoView;->mSeekWhenPrepared:I

    .line 677
    const-string v1, "SoftVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSeekWhenPrepared = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lhdp/widget/SoftVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mDurations:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 681
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mDurations:[I

    aget v1, v1, v0

    sub-int/2addr p1, v1

    .line 682
    if-gez p1, :cond_5

    .line 683
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mDurations:[I

    aget v1, v1, v0

    add-int/2addr p1, v1

    .line 684
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhdp/widget/SoftVideoView;->isResultSeek:Z

    .line 685
    iget v1, p0, Lhdp/widget/SoftVideoView;->index:I

    if-ne v1, v0, :cond_4

    .line 686
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lio/vov/vitamio/MediaPlayer;->seekTo(J)V

    .line 687
    iput v4, p0, Lhdp/widget/SoftVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 689
    :cond_4
    iput v0, p0, Lhdp/widget/SoftVideoView;->index:I

    .line 690
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->mUris:[Landroid/net/Uri;

    aget-object v1, v1, v0

    iput-object v1, p0, Lhdp/widget/SoftVideoView;->mUri:Landroid/net/Uri;

    .line 691
    iput p1, p0, Lhdp/widget/SoftVideoView;->mSeekWhenPrepared:I

    .line 692
    const-string v1, "SoftVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSeekWhenPrepared = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lhdp/widget/SoftVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v1, p0, Lhdp/widget/SoftVideoView;->handler:Landroid/os/Handler;

    new-instance v2, Lhdp/widget/SoftVideoView$11;

    invoke-direct {v2, p0}, Lhdp/widget/SoftVideoView$11;-><init>(Lhdp/widget/SoftVideoView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 680
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public selectScales()V
    .locals 10

    .prologue
    .line 784
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 785
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 786
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lhdp/widget/SoftVideoView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 787
    const-string v6, "SoftVideoView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Rect = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 788
    iget v8, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 787
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-double v0, v6

    .line 791
    .local v0, "height":D
    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-double v4, v6

    .line 792
    .local v4, "width":D
    const-string v6, "SoftVideoView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "diplay = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-wide/16 v6, 0x0

    cmpg-double v6, v0, v6

    if-lez v6, :cond_0

    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-lez v6, :cond_0

    iget v6, p0, Lhdp/widget/SoftVideoView;->mVideoHeight:I

    int-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-lez v6, :cond_0

    .line 795
    iget v6, p0, Lhdp/widget/SoftVideoView;->mVideoWidth:I

    int-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_1

    .line 837
    .end local v0    # "height":D
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "width":D
    :cond_0
    :goto_0
    return-void

    .line 799
    .restart local v0    # "height":D
    .restart local v3    # "rect":Landroid/graphics/Rect;
    .restart local v4    # "width":D
    :cond_1
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 801
    .local v2, "param":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v6

    const-string v7, "quanping"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 802
    double-to-int v6, v0

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 803
    double-to-int v6, v4

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 804
    invoke-virtual {p0, v2}, Lhdp/widget/SoftVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 805
    :cond_2
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v6

    const-string v7, "4X3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 806
    div-double v6, v4, v0

    const-wide v8, 0x3ff5555555555555L    # 1.3333333333333333

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_3

    .line 807
    double-to-int v6, v0

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 808
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v6, v0

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 813
    :goto_1
    const-string v6, "SoftVideoView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "A_4X3 === "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {p0, v2}, Lhdp/widget/SoftVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 810
    :cond_3
    double-to-int v6, v4

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 811
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v4

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 815
    :cond_4
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v6

    const-string v7, "16X9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 816
    div-double v6, v4, v0

    const-wide v8, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_5

    .line 817
    double-to-int v6, v0

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 818
    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    mul-double/2addr v6, v0

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 823
    :goto_2
    const-string v6, "SoftVideoView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "A_16X9 === "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {p0, v2}, Lhdp/widget/SoftVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 820
    :cond_5
    double-to-int v6, v4

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 821
    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    mul-double/2addr v6, v4

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 825
    :cond_6
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v6

    const-string v7, "yuanshi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 826
    div-double v6, v4, v0

    iget v8, p0, Lhdp/widget/SoftVideoView;->mVideoWidth:I

    iget v9, p0, Lhdp/widget/SoftVideoView;->mVideoHeight:I

    div-int/2addr v8, v9

    int-to-double v8, v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_7

    .line 827
    double-to-int v6, v0

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 828
    iget v6, p0, Lhdp/widget/SoftVideoView;->mVideoWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v0

    iget v8, p0, Lhdp/widget/SoftVideoView;->mVideoHeight:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 833
    :goto_3
    const-string v6, "SoftVideoView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "A_DEFALT === "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {p0, v2}, Lhdp/widget/SoftVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 830
    :cond_7
    double-to-int v6, v4

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 831
    iget v6, p0, Lhdp/widget/SoftVideoView;->mVideoHeight:I

    int-to-double v6, v6

    mul-double/2addr v6, v4

    iget v8, p0, Lhdp/widget/SoftVideoView;->mVideoWidth:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3
.end method

.method public setDefaultScale(I)V
    .locals 0
    .param p1, "defaultScale"    # I

    .prologue
    .line 583
    iput p1, p0, Lhdp/widget/SoftVideoView;->defaultScale:I

    .line 584
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/widget/MediaController;

    .prologue
    .line 290
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 293
    :cond_0
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mMediaController:Landroid/widget/MediaController;

    .line 294
    invoke-direct {p0}, Lhdp/widget/SoftVideoView;->attachMediaController()V

    .line 295
    return-void
.end method

.method public setOnBufferingUpdateListener(Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 460
    return-void
.end method

.method public setOnChangScaleListener(Lhdp/widget/SoftVideoView$OnChangScaleListener;)V
    .locals 0
    .param p1, "l"    # Lhdp/widget/SoftVideoView$OnChangScaleListener;

    .prologue
    .line 842
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mOnChangScaleListener:Lhdp/widget/SoftVideoView$OnChangScaleListener;

    .line 843
    return-void
.end method

.method public setOnCompletionListener(Lio/vov/vitamio/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    .prologue
    .line 439
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    .line 440
    return-void
.end method

.method public setOnErrorListener(Lio/vov/vitamio/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    .prologue
    .line 451
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    .line 452
    return-void
.end method

.method public setOnInfoListener(Lio/vov/vitamio/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    .prologue
    .line 455
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    .line 456
    return-void
.end method

.method public setOnPreparedListener(Lio/vov/vitamio/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    .prologue
    .line 428
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    .line 429
    return-void
.end method

.method public setOnSeekCompleteListener(Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 463
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    .line 464
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mPath:Ljava/lang/String;

    .line 143
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhdp/widget/SoftVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 144
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lhdp/widget/SoftVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 148
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 151
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mUri:Landroid/net/Uri;

    .line 152
    iput-object p2, p0, Lhdp/widget/SoftVideoView;->mHeaders:Ljava/util/Map;

    .line 153
    iput v0, p0, Lhdp/widget/SoftVideoView;->mSeekWhenPrepared:I

    .line 154
    iput-boolean v0, p0, Lhdp/widget/SoftVideoView;->isList:Z

    .line 155
    invoke-direct {p0}, Lhdp/widget/SoftVideoView;->openVideo()V

    .line 156
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->requestLayout()V

    .line 157
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->invalidate()V

    .line 158
    return-void
.end method

.method public setVideoURI([Landroid/net/Uri;Ljava/util/Map;[I)V
    .locals 3
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p3, "durations"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 178
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 179
    array-length v0, p1

    array-length v1, p3

    if-eq v0, v1, :cond_1

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 181
    const-string v1, "uris must not null , durations must nuo null and uris.length must =durations.length"

    .line 180
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    iput-boolean v2, p0, Lhdp/widget/SoftVideoView;->isResultSeek:Z

    .line 184
    iput-object p1, p0, Lhdp/widget/SoftVideoView;->mUris:[Landroid/net/Uri;

    .line 185
    iput v2, p0, Lhdp/widget/SoftVideoView;->index:I

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/widget/SoftVideoView;->isList:Z

    .line 187
    iput-object p3, p0, Lhdp/widget/SoftVideoView;->mDurations:[I

    .line 188
    iget v0, p0, Lhdp/widget/SoftVideoView;->index:I

    aget-object v0, p1, v0

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mUri:Landroid/net/Uri;

    .line 189
    iput-object p2, p0, Lhdp/widget/SoftVideoView;->mHeaders:Ljava/util/Map;

    .line 190
    iput v2, p0, Lhdp/widget/SoftVideoView;->mSeekWhenPrepared:I

    .line 191
    invoke-direct {p0}, Lhdp/widget/SoftVideoView;->openVideo()V

    .line 192
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->requestLayout()V

    .line 193
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->invalidate()V

    .line 194
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 595
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->start()V

    .line 597
    iput v1, p0, Lhdp/widget/SoftVideoView;->mCurrentState:I

    .line 599
    :cond_0
    iput v1, p0, Lhdp/widget/SoftVideoView;->mTargetState:I

    .line 605
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lhdp/widget/SoftVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->stop()V

    .line 200
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/forcetech/android/Utils;->stopChannel(Ljava/lang/String;)Z

    .line 202
    :cond_0
    iget-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->release()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lhdp/widget/SoftVideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 204
    iput v1, p0, Lhdp/widget/SoftVideoView;->mCurrentState:I

    .line 205
    iput v1, p0, Lhdp/widget/SoftVideoView;->mTargetState:I

    .line 208
    :cond_1
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhdp/widget/SoftVideoView;->release(Z)V

    .line 620
    return-void
.end method
