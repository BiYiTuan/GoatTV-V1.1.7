.class public Lhdp/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/widget/VideoView$OnChangScaleListener;
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

.field private static final TAG:Ljava/lang/String; = "VideoView"

.field private static final TIMEOUTDEFAULT:J = 0x7530L


# instance fields
.field private TimeOutError:Ljava/lang/Runnable;

.field private defaultScale:I

.field handler:Landroid/os/Handler;

.field private index:I

.field private isList:Z

.field isResultSeek:Z

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mDurations:[I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

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

.field mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnChangScaleListener:Lhdp/widget/VideoView$OnChangScaleListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mPath:Ljava/lang/String;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

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

    .line 77
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 50
    iput v2, p0, Lhdp/widget/VideoView;->mCurrentState:I

    .line 51
    iput v2, p0, Lhdp/widget/VideoView;->mTargetState:I

    .line 53
    iput-object v0, p0, Lhdp/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 54
    iput-object v0, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 61
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 62
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 63
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 64
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 65
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 165
    iput-boolean v2, p0, Lhdp/widget/VideoView;->isList:Z

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->handler:Landroid/os/Handler;

    .line 310
    new-instance v0, Lhdp/widget/VideoView$1;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$1;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 320
    new-instance v0, Lhdp/widget/VideoView$2;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$2;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 363
    new-instance v0, Lhdp/widget/VideoView$3;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$3;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 384
    new-instance v0, Lhdp/widget/VideoView$4;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$4;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 403
    new-instance v0, Lhdp/widget/VideoView$5;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$5;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 409
    new-instance v0, Lhdp/widget/VideoView$6;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$6;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 469
    new-instance v0, Lhdp/widget/VideoView$7;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$7;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 605
    iput v2, p0, Lhdp/widget/VideoView;->defaultScale:I

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/widget/VideoView;->isResultSeek:Z

    .line 762
    new-instance v0, Lhdp/widget/VideoView$8;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$8;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->TimeOutError:Ljava/lang/Runnable;

    .line 775
    new-instance v0, Lhdp/widget/VideoView$9;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$9;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 78
    iput-object p1, p0, Lhdp/widget/VideoView;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lhdp/widget/VideoView;->initVideoView()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 50
    iput v2, p0, Lhdp/widget/VideoView;->mCurrentState:I

    .line 51
    iput v2, p0, Lhdp/widget/VideoView;->mTargetState:I

    .line 53
    iput-object v0, p0, Lhdp/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 54
    iput-object v0, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 61
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 62
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 63
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 64
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 65
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 165
    iput-boolean v2, p0, Lhdp/widget/VideoView;->isList:Z

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->handler:Landroid/os/Handler;

    .line 310
    new-instance v0, Lhdp/widget/VideoView$1;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$1;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 320
    new-instance v0, Lhdp/widget/VideoView$2;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$2;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 363
    new-instance v0, Lhdp/widget/VideoView$3;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$3;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 384
    new-instance v0, Lhdp/widget/VideoView$4;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$4;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 403
    new-instance v0, Lhdp/widget/VideoView$5;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$5;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 409
    new-instance v0, Lhdp/widget/VideoView$6;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$6;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 469
    new-instance v0, Lhdp/widget/VideoView$7;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$7;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 605
    iput v2, p0, Lhdp/widget/VideoView;->defaultScale:I

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/widget/VideoView;->isResultSeek:Z

    .line 762
    new-instance v0, Lhdp/widget/VideoView$8;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$8;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->TimeOutError:Ljava/lang/Runnable;

    .line 775
    new-instance v0, Lhdp/widget/VideoView$9;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$9;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 85
    iput-object p1, p0, Lhdp/widget/VideoView;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lhdp/widget/VideoView;->mHandler:Landroid/os/Handler;

    .line 87
    invoke-direct {p0}, Lhdp/widget/VideoView;->initVideoView()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lhdp/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
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

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput v2, p0, Lhdp/widget/VideoView;->mCurrentState:I

    .line 51
    iput v2, p0, Lhdp/widget/VideoView;->mTargetState:I

    .line 53
    iput-object v0, p0, Lhdp/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 54
    iput-object v0, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 61
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 62
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 63
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 64
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 65
    iput-object v0, p0, Lhdp/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 165
    iput-boolean v2, p0, Lhdp/widget/VideoView;->isList:Z

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->handler:Landroid/os/Handler;

    .line 310
    new-instance v0, Lhdp/widget/VideoView$1;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$1;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 320
    new-instance v0, Lhdp/widget/VideoView$2;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$2;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 363
    new-instance v0, Lhdp/widget/VideoView$3;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$3;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 384
    new-instance v0, Lhdp/widget/VideoView$4;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$4;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 403
    new-instance v0, Lhdp/widget/VideoView$5;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$5;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 409
    new-instance v0, Lhdp/widget/VideoView$6;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$6;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 469
    new-instance v0, Lhdp/widget/VideoView$7;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$7;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 605
    iput v2, p0, Lhdp/widget/VideoView;->defaultScale:I

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/widget/VideoView;->isResultSeek:Z

    .line 762
    new-instance v0, Lhdp/widget/VideoView$8;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$8;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->TimeOutError:Ljava/lang/Runnable;

    .line 775
    new-instance v0, Lhdp/widget/VideoView$9;

    invoke-direct {v0, p0}, Lhdp/widget/VideoView$9;-><init>(Lhdp/widget/VideoView;)V

    iput-object v0, p0, Lhdp/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 96
    iput-object p1, p0, Lhdp/widget/VideoView;->mContext:Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Lhdp/widget/VideoView;->initVideoView()V

    .line 99
    return-void
.end method

.method static synthetic access$0(Lhdp/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lhdp/widget/VideoView;->mVideoWidth:I

    return-void
.end method

.method static synthetic access$1(Lhdp/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lhdp/widget/VideoView;->mVideoHeight:I

    return-void
.end method

.method static synthetic access$10(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lhdp/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$11(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$12(Lhdp/widget/VideoView;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lhdp/widget/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$13(Lhdp/widget/VideoView;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lhdp/widget/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$14(Lhdp/widget/VideoView;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lhdp/widget/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$15(Lhdp/widget/VideoView;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lhdp/widget/VideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$16(Lhdp/widget/VideoView;)Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lhdp/widget/VideoView;->isList:Z

    return v0
.end method

.method static synthetic access$17(Lhdp/widget/VideoView;)I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lhdp/widget/VideoView;->index:I

    return v0
.end method

.method static synthetic access$18(Lhdp/widget/VideoView;)[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lhdp/widget/VideoView;->mUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$19(Lhdp/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lhdp/widget/VideoView;->index:I

    return-void
.end method

.method static synthetic access$2(Lhdp/widget/VideoView;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lhdp/widget/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$20(Lhdp/widget/VideoView;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lhdp/widget/VideoView;->mUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$21(Lhdp/widget/VideoView;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lhdp/widget/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$22(Lhdp/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lhdp/widget/VideoView;->mTargetState:I

    return-void
.end method

.method static synthetic access$23(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lhdp/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$24(Lhdp/widget/VideoView;Z)V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lhdp/widget/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$25(Lhdp/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lhdp/widget/VideoView;->mCurrentBufferPercentage:I

    return-void
.end method

.method static synthetic access$26(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lhdp/widget/VideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$27(Lhdp/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lhdp/widget/VideoView;->mSurfaceWidth:I

    return-void
.end method

.method static synthetic access$28(Lhdp/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lhdp/widget/VideoView;->mSurfaceHeight:I

    return-void
.end method

.method static synthetic access$29(Lhdp/widget/VideoView;Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lhdp/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static synthetic access$3(Lhdp/widget/VideoView;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lhdp/widget/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$30(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lhdp/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$31(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lhdp/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$32(Lhdp/widget/VideoView;Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$33(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lhdp/widget/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$34(Lhdp/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lhdp/widget/VideoView;->mDuration:I

    return-void
.end method

.method static synthetic access$35(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lhdp/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$36(Lhdp/widget/VideoView;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lhdp/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$37(Lhdp/widget/VideoView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lhdp/widget/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$38(Lhdp/widget/VideoView;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lhdp/widget/VideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$39(Lhdp/widget/VideoView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lhdp/widget/VideoView;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4(Lhdp/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lhdp/widget/VideoView;->mCurrentState:I

    return-void
.end method

.method static synthetic access$40(Lhdp/widget/VideoView;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 885
    invoke-direct {p0, p1, p2}, Lhdp/widget/VideoView;->getPlayer_headers(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$41(Lhdp/widget/VideoView;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lhdp/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$42(Lhdp/widget/VideoView;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lhdp/widget/VideoView;->attachMediaController()V

    return-void
.end method

.method static synthetic access$5(Lhdp/widget/VideoView;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lhdp/widget/VideoView;->mCanSeekForward:Z

    return-void
.end method

.method static synthetic access$6(Lhdp/widget/VideoView;Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lhdp/widget/VideoView;->mCanSeekBack:Z

    return-void
.end method

.method static synthetic access$7(Lhdp/widget/VideoView;Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lhdp/widget/VideoView;->mCanPause:Z

    return-void
.end method

.method static synthetic access$8(Lhdp/widget/VideoView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lhdp/widget/VideoView;->TimeOutError:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9(Lhdp/widget/VideoView;)Landroid/widget/MediaController;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 301
    iget-object v1, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 303
    invoke-virtual {p0}, Lhdp/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {p0}, Lhdp/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 305
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 306
    iget-object v1, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Lhdp/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 308
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 304
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

    .line 887
    if-eqz p2, :cond_0

    .line 932
    .end local p2    # "PHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object p2

    .line 889
    .restart local p2    # "PHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 890
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "User-Mac"

    sget-object v8, Lhdp/http/MyApp;->User_Mac:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string v7, "User-Key"

    invoke-static {}, Lhdp/http/MyApp;->get_livekey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const-string v7, "User-Ver"

    sget-object v8, Lhdp/http/MyApp;->User_Ver:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v7, Lhdp/http/MyApp;->Live_Referer:Ljava/lang/String;

    const-string v8, "|"

    invoke-static {v7, v8}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 897
    sget-object v7, Lhdp/http/MyApp;->Live_Referer:Ljava/lang/String;

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 898
    .local v1, "Array_Live_Referer":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v1

    if-lt v6, v7, :cond_4

    .line 917
    .end local v1    # "Array_Live_Referer":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_1
    :goto_2
    sget-object v7, Lhdp/http/MyApp;->LiveCookie:Ljava/lang/String;

    if-eqz v7, :cond_2

    sget-object v7, Lhdp/http/MyApp;->LiveCookie:Ljava/lang/String;

    const-string v8, "-"

    if-eq v7, v8, :cond_2

    .line 918
    const-string v7, "Cookie"

    sget-object v8, Lhdp/http/MyApp;->LiveCookie:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    :cond_2
    sget-object v7, Lhdp/http/MyApp;->Live_Range:Ljava/lang/String;

    const-string v8, "-"

    if-eq v7, v8, :cond_b

    sget-object v7, Lhdp/http/MyApp;->Live_Range:Ljava/lang/String;

    const-string v8, "|"

    invoke-static {v7, v8}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 921
    sget-object v7, Lhdp/http/MyApp;->Live_Range:Ljava/lang/String;

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 922
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

    .line 932
    goto :goto_0

    .line 899
    .restart local v1    # "Array_Live_Referer":[Ljava/lang/String;
    .restart local v6    # "i":I
    :cond_4
    aget-object v3, v1, v6

    .line 900
    .local v3, "a_Referer":Ljava/lang/String;
    const-string v7, "@"

    invoke-static {v3, v7}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 901
    const-string v7, "@"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 902
    .local v4, "b_Referer":[Ljava/lang/String;
    aget-object v7, v4, v9

    invoke-static {p1, v7}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 903
    const-string v7, "Referer"

    aget-object v8, v4, v10

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    .end local v4    # "b_Referer":[Ljava/lang/String;
    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 905
    :cond_6
    invoke-static {p1, v3}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 906
    const-string v7, "Referer"

    invoke-interface {v5, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 909
    .end local v1    # "Array_Live_Referer":[Ljava/lang/String;
    .end local v3    # "a_Referer":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_7
    sget-object v7, Lhdp/http/MyApp;->Live_Referer:Ljava/lang/String;

    const-string v8, "@"

    invoke-static {v7, v8}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 910
    sget-object v7, Lhdp/http/MyApp;->Live_Referer:Ljava/lang/String;

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 911
    .restart local v4    # "b_Referer":[Ljava/lang/String;
    aget-object v7, v4, v9

    invoke-static {p1, v7}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 912
    const-string v7, "Referer"

    aget-object v8, v4, v10

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 914
    .end local v4    # "b_Referer":[Ljava/lang/String;
    :cond_8
    sget-object v7, Lhdp/http/MyApp;->Live_Referer:Ljava/lang/String;

    invoke-static {p1, v7}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 915
    const-string v7, "Referer"

    invoke-interface {v5, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 923
    .restart local v0    # "Array_Live_Range":[Ljava/lang/String;
    .restart local v6    # "i":I
    :cond_9
    aget-object v2, v0, v6

    .line 924
    .local v2, "a_Range":Ljava/lang/String;
    invoke-static {p1, v2}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 925
    const-string v7, "Range"

    const-string v8, "bytes="

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 922
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 929
    .end local v0    # "Array_Live_Range":[Ljava/lang/String;
    .end local v2    # "a_Range":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_b
    sget-object v7, Lhdp/http/MyApp;->Live_Range:Ljava/lang/String;

    invoke-static {p1, v7}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 930
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

    .line 131
    iput v2, p0, Lhdp/widget/VideoView;->mVideoWidth:I

    .line 132
    iput v2, p0, Lhdp/widget/VideoView;->mVideoHeight:I

    .line 133
    invoke-virtual {p0}, Lhdp/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lhdp/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 134
    invoke-virtual {p0}, Lhdp/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 135
    invoke-virtual {p0, v3}, Lhdp/widget/VideoView;->setFocusable(Z)V

    .line 136
    invoke-virtual {p0, v3}, Lhdp/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 137
    invoke-virtual {p0}, Lhdp/widget/VideoView;->requestFocus()Z

    .line 138
    iput v2, p0, Lhdp/widget/VideoView;->mCurrentState:I

    .line 139
    iput v2, p0, Lhdp/widget/VideoView;->mTargetState:I

    .line 140
    return-void
.end method

.method private openVideo()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lhdp/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhdp/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lhdp/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    iget-object v1, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 224
    iget-object v1, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 228
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lhdp/widget/VideoView$10;

    invoke-direct {v2, p0}, Lhdp/widget/VideoView$10;-><init>(Lhdp/widget/VideoView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 289
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private release(Z)V
    .locals 8
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v7, 0x0

    .line 502
    iget-object v3, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 503
    sget-boolean v3, Lhdp/http/MyApp;->IsGiMiDevice:Z

    if-eqz v3, :cond_1

    .line 504
    new-instance v2, Lhdp/widget/VideoView$11;

    invoke-direct {v2, p0}, Lhdp/widget/VideoView$11;-><init>(Lhdp/widget/VideoView;)V

    .line 511
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 513
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v2    # "thread":Ljava/lang/Thread;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 528
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 529
    iput v7, p0, Lhdp/widget/VideoView;->mCurrentState:I

    .line 530
    if-eqz p1, :cond_0

    .line 531
    iput v7, p0, Lhdp/widget/VideoView;->mTargetState:I

    .line 535
    :cond_0
    iget-object v3, p0, Lhdp/widget/VideoView;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lhdp/widget/VideoView;->TimeOutError:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 537
    iget-object v3, p0, Lhdp/widget/VideoView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lhdp/widget/VideoView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xb

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 539
    return-void

    .line 514
    .restart local v2    # "thread":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 519
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_1
    iget-object v3, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 523
    :catch_1
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v3, "release"

    const-string v4, "catch"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 617
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Lhdp/widget/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lhdp/widget/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Lhdp/widget/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 739
    iget v0, p0, Lhdp/widget/VideoView;->mCurrentBufferPercentage:I

    .line 741
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 3

    .prologue
    .line 676
    invoke-virtual {p0}, Lhdp/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 677
    iget-boolean v2, p0, Lhdp/widget/VideoView;->isList:Z

    if-eqz v2, :cond_1

    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "currentPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lhdp/widget/VideoView;->index:I

    if-lt v1, v2, :cond_0

    .line 682
    iget-object v2, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    add-int/2addr v0, v2

    .line 688
    .end local v0    # "currentPosition":I
    .end local v1    # "i":I
    :goto_1
    return v0

    .line 680
    .restart local v0    # "currentPosition":I
    .restart local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lhdp/widget/VideoView;->mDurations:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "currentPosition":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_1

    .line 688
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDuration()I
    .locals 3

    .prologue
    .line 656
    invoke-virtual {p0}, Lhdp/widget/VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 657
    iget v1, p0, Lhdp/widget/VideoView;->mDuration:I

    if-lez v1, :cond_0

    .line 658
    iget v1, p0, Lhdp/widget/VideoView;->mDuration:I

    .line 671
    :goto_0
    return v1

    .line 660
    :cond_0
    iget-boolean v1, p0, Lhdp/widget/VideoView;->isList:Z

    if-eqz v1, :cond_2

    .line 661
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lhdp/widget/VideoView;->mDurations:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 664
    iget v1, p0, Lhdp/widget/VideoView;->mDuration:I

    goto :goto_0

    .line 662
    :cond_1
    iget v1, p0, Lhdp/widget/VideoView;->mDuration:I

    iget-object v2, p0, Lhdp/widget/VideoView;->mDurations:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lhdp/widget/VideoView;->mDuration:I

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 666
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iput v1, p0, Lhdp/widget/VideoView;->mDuration:I

    .line 667
    iget v1, p0, Lhdp/widget/VideoView;->mDuration:I

    goto :goto_0

    .line 670
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lhdp/widget/VideoView;->mDuration:I

    .line 671
    iget v1, p0, Lhdp/widget/VideoView;->mDuration:I

    goto :goto_0
.end method

.method public isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 745
    iget-object v1, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lhdp/widget/VideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 746
    iget v1, p0, Lhdp/widget/VideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lhdp/widget/VideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    .line 745
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 734
    invoke-virtual {p0}, Lhdp/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

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

    .line 559
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    .line 560
    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    .line 561
    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    .line 562
    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    .line 563
    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    .line 564
    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    .line 565
    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 566
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-virtual {p0}, Lhdp/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 567
    iget-object v2, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_9

    .line 568
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    .line 569
    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 570
    :cond_0
    iget-object v2, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 571
    invoke-virtual {p0}, Lhdp/widget/VideoView;->pause()V

    .line 572
    iget-object v2, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 602
    :cond_1
    :goto_1
    return v1

    .line 559
    .end local v0    # "isKeyCodeSupported":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 574
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_3
    invoke-virtual {p0}, Lhdp/widget/VideoView;->start()V

    .line 575
    iget-object v2, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 578
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 579
    iget-object v2, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 580
    invoke-virtual {p0}, Lhdp/widget/VideoView;->start()V

    .line 581
    iget-object v2, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 584
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    .line 585
    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 586
    :cond_6
    iget-object v2, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 587
    invoke-virtual {p0}, Lhdp/widget/VideoView;->pause()V

    .line 588
    iget-object v2, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 591
    :cond_7
    const/16 v2, 0xb9

    if-ne p1, v2, :cond_8

    .line 592
    invoke-virtual {p0}, Lhdp/widget/VideoView;->selectScales()V

    .line 593
    iget-object v2, p0, Lhdp/widget/VideoView;->mOnChangScaleListener:Lhdp/widget/VideoView$OnChangScaleListener;

    if-eqz v2, :cond_1

    .line 594
    iget-object v2, p0, Lhdp/widget/VideoView;->mOnChangScaleListener:Lhdp/widget/VideoView$OnChangScaleListener;

    iget v3, p0, Lhdp/widget/VideoView;->defaultScale:I

    invoke-interface {v2, v3}, Lhdp/widget/VideoView$OnChangScaleListener;->changeScale(I)V

    goto :goto_1

    .line 598
    :cond_8
    invoke-direct {p0}, Lhdp/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 602
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
    .line 103
    iget v2, p0, Lhdp/widget/VideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lhdp/widget/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 104
    .local v1, "width":I
    iget v2, p0, Lhdp/widget/VideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lhdp/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 105
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lhdp/widget/VideoView;->setMeasuredDimension(II)V

    .line 106
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 543
    invoke-virtual {p0}, Lhdp/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 544
    invoke-direct {p0}, Lhdp/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 546
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 551
    invoke-virtual {p0}, Lhdp/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 552
    invoke-direct {p0}, Lhdp/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 554
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 635
    invoke-virtual {p0}, Lhdp/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 639
    iput v1, p0, Lhdp/widget/VideoView;->mCurrentState:I

    .line 642
    :cond_0
    iput v1, p0, Lhdp/widget/VideoView;->mTargetState:I

    .line 643
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 109
    move v0, p1

    .line 110
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 111
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 113
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 126
    :goto_0
    return v0

    .line 115
    :sswitch_0
    move v0, p1

    .line 116
    goto :goto_0

    .line 119
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 120
    goto :goto_0

    .line 123
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 113
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
    .line 650
    invoke-direct {p0}, Lhdp/widget/VideoView;->openVideo()V

    .line 651
    return-void
.end method

.method public seekTo(I)V
    .locals 5
    .param p1, "msec"    # I

    .prologue
    const/4 v4, 0x0

    .line 694
    if-gtz p1, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msec = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-boolean v1, p0, Lhdp/widget/VideoView;->isResultSeek:Z

    if-eqz v1, :cond_3

    .line 699
    invoke-virtual {p0}, Lhdp/widget/VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 700
    iget-object v1, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 701
    iput v4, p0, Lhdp/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 703
    :cond_2
    iput p1, p0, Lhdp/widget/VideoView;->mSeekWhenPrepared:I

    .line 704
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSeekWhenPrepared = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lhdp/widget/VideoView;->mSeekWhenPrepared:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 707
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lhdp/widget/VideoView;->mDurations:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 708
    iget-object v1, p0, Lhdp/widget/VideoView;->mDurations:[I

    aget v1, v1, v0

    sub-int/2addr p1, v1

    .line 709
    if-gez p1, :cond_5

    .line 710
    iget-object v1, p0, Lhdp/widget/VideoView;->mDurations:[I

    aget v1, v1, v0

    add-int/2addr p1, v1

    .line 711
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhdp/widget/VideoView;->isResultSeek:Z

    .line 712
    iget v1, p0, Lhdp/widget/VideoView;->index:I

    if-ne v1, v0, :cond_4

    .line 713
    iget-object v1, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 714
    iput v4, p0, Lhdp/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 716
    :cond_4
    iput v0, p0, Lhdp/widget/VideoView;->index:I

    .line 717
    iget-object v1, p0, Lhdp/widget/VideoView;->mUris:[Landroid/net/Uri;

    aget-object v1, v1, v0

    iput-object v1, p0, Lhdp/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 718
    iput p1, p0, Lhdp/widget/VideoView;->mSeekWhenPrepared:I

    .line 719
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSeekWhenPrepared = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lhdp/widget/VideoView;->mSeekWhenPrepared:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v1, p0, Lhdp/widget/VideoView;->handler:Landroid/os/Handler;

    new-instance v2, Lhdp/widget/VideoView$12;

    invoke-direct {v2, p0}, Lhdp/widget/VideoView$12;-><init>(Lhdp/widget/VideoView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 707
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public selectScales()V
    .locals 10

    .prologue
    .line 817
    invoke-virtual {p0}, Lhdp/widget/VideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 818
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 819
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lhdp/widget/VideoView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 820
    const-string v6, "VideoView"

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

    .line 821
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

    .line 820
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-double v0, v6

    .line 824
    .local v0, "height":D
    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-double v4, v6

    .line 825
    .local v4, "width":D
    const-string v6, "VideoView"

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

    .line 827
    const-wide/16 v6, 0x0

    cmpg-double v6, v0, v6

    if-lez v6, :cond_0

    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-lez v6, :cond_0

    iget v6, p0, Lhdp/widget/VideoView;->mVideoHeight:I

    int-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-lez v6, :cond_0

    .line 828
    iget v6, p0, Lhdp/widget/VideoView;->mVideoWidth:I

    int-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_1

    .line 870
    .end local v0    # "height":D
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "width":D
    :cond_0
    :goto_0
    return-void

    .line 831
    .restart local v0    # "height":D
    .restart local v3    # "rect":Landroid/graphics/Rect;
    .restart local v4    # "width":D
    :cond_1
    invoke-virtual {p0}, Lhdp/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 833
    .local v2, "param":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v6

    const-string v7, "quanping"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 834
    double-to-int v6, v0

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 835
    double-to-int v6, v4

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 836
    invoke-virtual {p0, v2}, Lhdp/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 837
    :cond_2
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v6

    const-string v7, "4X3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 838
    div-double v6, v4, v0

    const-wide v8, 0x3ff5555555555555L    # 1.3333333333333333

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_3

    .line 839
    double-to-int v6, v0

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 840
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v6, v0

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 845
    :goto_1
    const-string v6, "VideoView"

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

    .line 846
    invoke-virtual {p0, v2}, Lhdp/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 842
    :cond_3
    double-to-int v6, v4

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 843
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v4

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 847
    :cond_4
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v6

    const-string v7, "16X9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 848
    div-double v6, v4, v0

    const-wide v8, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_5

    .line 849
    double-to-int v6, v0

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 850
    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    mul-double/2addr v6, v0

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 855
    :goto_2
    const-string v6, "VideoView"

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

    .line 856
    invoke-virtual {p0, v2}, Lhdp/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 852
    :cond_5
    double-to-int v6, v4

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 853
    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    mul-double/2addr v6, v4

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 857
    :cond_6
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v6

    const-string v7, "yuanshi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 858
    div-double v6, v4, v0

    iget v8, p0, Lhdp/widget/VideoView;->mVideoWidth:I

    iget v9, p0, Lhdp/widget/VideoView;->mVideoHeight:I

    div-int/2addr v8, v9

    int-to-double v8, v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_7

    .line 859
    double-to-int v6, v0

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 860
    iget v6, p0, Lhdp/widget/VideoView;->mVideoWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v0

    iget v8, p0, Lhdp/widget/VideoView;->mVideoHeight:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 865
    :goto_3
    const-string v6, "VideoView"

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

    .line 866
    invoke-virtual {p0, v2}, Lhdp/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 862
    :cond_7
    double-to-int v6, v4

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 863
    iget v6, p0, Lhdp/widget/VideoView;->mVideoHeight:I

    int-to-double v6, v6

    mul-double/2addr v6, v4

    iget v8, p0, Lhdp/widget/VideoView;->mVideoWidth:I

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
    .line 608
    iput p1, p0, Lhdp/widget/VideoView;->defaultScale:I

    .line 609
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/widget/MediaController;

    .prologue
    .line 293
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 296
    :cond_0
    iput-object p1, p0, Lhdp/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 297
    invoke-direct {p0}, Lhdp/widget/VideoView;->attachMediaController()V

    .line 298
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 463
    return-void
.end method

.method public setOnChangScaleListener(Lhdp/widget/VideoView$OnChangScaleListener;)V
    .locals 0
    .param p1, "l"    # Lhdp/widget/VideoView$OnChangScaleListener;

    .prologue
    .line 875
    iput-object p1, p0, Lhdp/widget/VideoView;->mOnChangScaleListener:Lhdp/widget/VideoView$OnChangScaleListener;

    .line 876
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 442
    iput-object p1, p0, Lhdp/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 443
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 454
    iput-object p1, p0, Lhdp/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 455
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 458
    iput-object p1, p0, Lhdp/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 459
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 431
    iput-object p1, p0, Lhdp/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 432
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 466
    iput-object p1, p0, Lhdp/widget/VideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 467
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lhdp/widget/VideoView;->mPath:Ljava/lang/String;

    .line 144
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhdp/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 146
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lhdp/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 150
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 153
    iput-object p1, p0, Lhdp/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 154
    const-string v0, "connor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set video uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-object p2, p0, Lhdp/widget/VideoView;->mHeaders:Ljava/util/Map;

    .line 156
    iput v3, p0, Lhdp/widget/VideoView;->mSeekWhenPrepared:I

    .line 157
    iput-boolean v3, p0, Lhdp/widget/VideoView;->isList:Z

    .line 158
    invoke-direct {p0}, Lhdp/widget/VideoView;->openVideo()V

    .line 159
    invoke-virtual {p0}, Lhdp/widget/VideoView;->requestLayout()V

    .line 160
    invoke-virtual {p0}, Lhdp/widget/VideoView;->invalidate()V

    .line 161
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

    .line 181
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 182
    array-length v0, p1

    array-length v1, p3

    if-eq v0, v1, :cond_1

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 184
    const-string v1, "uris must not null , durations must nuo null and uris.length must =durations.length"

    .line 183
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    iput-boolean v2, p0, Lhdp/widget/VideoView;->isResultSeek:Z

    .line 187
    iput-object p1, p0, Lhdp/widget/VideoView;->mUris:[Landroid/net/Uri;

    .line 188
    iput v2, p0, Lhdp/widget/VideoView;->index:I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/widget/VideoView;->isList:Z

    .line 190
    iput-object p3, p0, Lhdp/widget/VideoView;->mDurations:[I

    .line 191
    iget v0, p0, Lhdp/widget/VideoView;->index:I

    aget-object v0, p1, v0

    iput-object v0, p0, Lhdp/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 192
    iput-object p2, p0, Lhdp/widget/VideoView;->mHeaders:Ljava/util/Map;

    .line 193
    iput v2, p0, Lhdp/widget/VideoView;->mSeekWhenPrepared:I

    .line 194
    invoke-direct {p0}, Lhdp/widget/VideoView;->openVideo()V

    .line 195
    invoke-virtual {p0}, Lhdp/widget/VideoView;->requestLayout()V

    .line 196
    invoke-virtual {p0}, Lhdp/widget/VideoView;->invalidate()V

    .line 197
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 620
    invoke-virtual {p0}, Lhdp/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "media player current: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lhdp/widget/VideoView;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "media player target: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lhdp/widget/VideoView;->mTargetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 624
    iput v3, p0, Lhdp/widget/VideoView;->mCurrentState:I

    .line 626
    :cond_0
    iput v3, p0, Lhdp/widget/VideoView;->mTargetState:I

    .line 632
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0}, Lhdp/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 203
    iget-object v0, p0, Lhdp/widget/VideoView;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/forcetech/android/Utils;->stopChannel(Ljava/lang/String;)Z

    .line 205
    :cond_0
    iget-object v0, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lhdp/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 207
    iput v1, p0, Lhdp/widget/VideoView;->mCurrentState:I

    .line 208
    iput v1, p0, Lhdp/widget/VideoView;->mTargetState:I

    .line 210
    :cond_1
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhdp/widget/VideoView;->release(Z)V

    .line 647
    return-void
.end method
