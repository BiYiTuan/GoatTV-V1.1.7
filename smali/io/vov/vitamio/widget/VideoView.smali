.class public Lio/vov/vitamio/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final STATE_RESUME:I = 0x7

.field private static final STATE_SUSPEND:I = 0x6

.field private static final STATE_SUSPEND_UNSUPPORTED:I = 0x8

.field public static final VIDEO_LAYOUT_ORIGIN:I = 0x0

.field public static final VIDEO_LAYOUT_SCALE:I = 0x1

.field public static final VIDEO_LAYOUT_STRETCH:I = 0x2

.field public static final VIDEO_LAYOUT_ZOOM:I = 0x3


# instance fields
.field private mAspectRatio:F

.field private mBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:J

.field private mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

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

.field private mInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

.field private mMediaBufferingIndicator:Landroid/view/View;

.field private mMediaController:Lio/vov/vitamio/widget/MediaController;

.field private mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

.field private mOnBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

.field mPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

.field private mSeekWhenPrepared:J

.field mSizeChangedListener:Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mTimedTextListener:Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

.field private mUri:Landroid/net/Uri;

.field private mVideoAspectRatio:F

.field private mVideoChroma:I

.field private mVideoHeight:I

.field private mVideoLayout:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 284
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lio/vov/vitamio/widget/VideoView$1;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$1;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mSizeChangedListener:Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

    .line 92
    new-instance v0, Lio/vov/vitamio/widget/VideoView$2;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$2;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    .line 130
    new-instance v0, Lio/vov/vitamio/widget/VideoView$3;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$3;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 170
    iput v1, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    .line 171
    iput v1, p0, Lio/vov/vitamio/widget/VideoView;->mTargetState:I

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lio/vov/vitamio/widget/VideoView;->mAspectRatio:F

    .line 173
    iput v2, p0, Lio/vov/vitamio/widget/VideoView;->mVideoLayout:I

    .line 174
    iput-object v3, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 175
    iput-object v3, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 179
    iput v2, p0, Lio/vov/vitamio/widget/VideoView;->mVideoChroma:I

    .line 195
    new-instance v0, Lio/vov/vitamio/widget/VideoView$4;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$4;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    .line 206
    new-instance v0, Lio/vov/vitamio/widget/VideoView$5;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$5;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    .line 232
    new-instance v0, Lio/vov/vitamio/widget/VideoView$6;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$6;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    .line 239
    new-instance v0, Lio/vov/vitamio/widget/VideoView$7;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$7;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    .line 259
    new-instance v0, Lio/vov/vitamio/widget/VideoView$8;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$8;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    .line 267
    new-instance v0, Lio/vov/vitamio/widget/VideoView$9;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$9;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mTimedTextListener:Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    .line 285
    invoke-direct {p0, p1}, Lio/vov/vitamio/widget/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/vov/vitamio/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 290
    invoke-direct {p0, p1}, Lio/vov/vitamio/widget/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 294
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance v0, Lio/vov/vitamio/widget/VideoView$1;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$1;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mSizeChangedListener:Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

    .line 92
    new-instance v0, Lio/vov/vitamio/widget/VideoView$2;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$2;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    .line 130
    new-instance v0, Lio/vov/vitamio/widget/VideoView$3;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$3;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 170
    iput v1, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    .line 171
    iput v1, p0, Lio/vov/vitamio/widget/VideoView;->mTargetState:I

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lio/vov/vitamio/widget/VideoView;->mAspectRatio:F

    .line 173
    iput v2, p0, Lio/vov/vitamio/widget/VideoView;->mVideoLayout:I

    .line 174
    iput-object v3, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 175
    iput-object v3, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 179
    iput v2, p0, Lio/vov/vitamio/widget/VideoView;->mVideoChroma:I

    .line 195
    new-instance v0, Lio/vov/vitamio/widget/VideoView$4;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$4;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    .line 206
    new-instance v0, Lio/vov/vitamio/widget/VideoView$5;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$5;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    .line 232
    new-instance v0, Lio/vov/vitamio/widget/VideoView$6;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$6;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    .line 239
    new-instance v0, Lio/vov/vitamio/widget/VideoView$7;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$7;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    .line 259
    new-instance v0, Lio/vov/vitamio/widget/VideoView$8;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$8;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    .line 267
    new-instance v0, Lio/vov/vitamio/widget/VideoView$9;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/VideoView$9;-><init>(Lio/vov/vitamio/widget/VideoView;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mTimedTextListener:Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    .line 295
    invoke-direct {p0, p1}, Lio/vov/vitamio/widget/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 296
    return-void
.end method

.method static synthetic access$0(Lio/vov/vitamio/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lio/vov/vitamio/widget/VideoView;->mVideoWidth:I

    return-void
.end method

.method static synthetic access$1(Lio/vov/vitamio/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lio/vov/vitamio/widget/VideoView;->mVideoHeight:I

    return-void
.end method

.method static synthetic access$10(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$11(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/widget/MediaController;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$12(Lio/vov/vitamio/widget/VideoView;)J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lio/vov/vitamio/widget/VideoView;->mSeekWhenPrepared:J

    return-wide v0
.end method

.method static synthetic access$13(Lio/vov/vitamio/widget/VideoView;)I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$14(Lio/vov/vitamio/widget/VideoView;)I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$15(Lio/vov/vitamio/widget/VideoView;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$16(Lio/vov/vitamio/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 180
    iput p1, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceWidth:I

    return-void
.end method

.method static synthetic access$17(Lio/vov/vitamio/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 181
    iput p1, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHeight:I

    return-void
.end method

.method static synthetic access$18(Lio/vov/vitamio/widget/VideoView;Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static synthetic access$19(Lio/vov/vitamio/widget/VideoView;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$2(Lio/vov/vitamio/widget/VideoView;F)V
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Lio/vov/vitamio/widget/VideoView;->mVideoAspectRatio:F

    return-void
.end method

.method static synthetic access$20(Lio/vov/vitamio/widget/VideoView;)I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$21(Lio/vov/vitamio/widget/VideoView;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lio/vov/vitamio/widget/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$22(Lio/vov/vitamio/widget/VideoView;Z)V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lio/vov/vitamio/widget/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$23(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$24(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$25(Lio/vov/vitamio/widget/VideoView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$26(Lio/vov/vitamio/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 191
    iput p1, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentBufferPercentage:I

    return-void
.end method

.method static synthetic access$27(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mOnBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$28(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnInfoListener;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$29(Lio/vov/vitamio/widget/VideoView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaBufferingIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lio/vov/vitamio/widget/VideoView;)I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$30(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$31(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mOnTimedTextListener:Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$4(Lio/vov/vitamio/widget/VideoView;)I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$5(Lio/vov/vitamio/widget/VideoView;)I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mVideoLayout:I

    return v0
.end method

.method static synthetic access$6(Lio/vov/vitamio/widget/VideoView;)F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mAspectRatio:F

    return v0
.end method

.method static synthetic access$7(Lio/vov/vitamio/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    return-void
.end method

.method static synthetic access$8(Lio/vov/vitamio/widget/VideoView;I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lio/vov/vitamio/widget/VideoView;->mTargetState:I

    return-void
.end method

.method static synthetic access$9(Lio/vov/vitamio/widget/VideoView;)Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 5

    .prologue
    .line 440
    iget-object v3, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    if-eqz v3, :cond_1

    .line 441
    iget-object v3, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    invoke-virtual {v3, p0}, Lio/vov/vitamio/widget/MediaController;->setMediaPlayer(Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;)V

    .line 442
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v0, v3

    .line 443
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    invoke-virtual {v3, v0}, Lio/vov/vitamio/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 444
    iget-object v3, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->isInPlaybackState()Z

    move-result v4

    invoke-virtual {v3, v4}, Lio/vov/vitamio/widget/MediaController;->setEnabled(Z)V

    .line 446
    iget-object v3, p0, Lio/vov/vitamio/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 447
    iget-object v3, p0, Lio/vov/vitamio/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 448
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const-string v1, "null"

    .line 449
    .local v1, "name":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    invoke-virtual {v3, v1}, Lio/vov/vitamio/widget/MediaController;->setFileName(Ljava/lang/String;)V

    .line 452
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void

    :cond_2
    move-object v0, p0

    .line 442
    goto :goto_0

    .line 448
    .restart local v0    # "anchorView":Landroid/view/View;
    .restart local v2    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    goto :goto_1
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 343
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView;->mContext:Landroid/content/Context;

    .line 344
    iput v2, p0, Lio/vov/vitamio/widget/VideoView;->mVideoWidth:I

    .line 345
    iput v2, p0, Lio/vov/vitamio/widget/VideoView;->mVideoHeight:I

    .line 346
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 347
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lio/vov/vitamio/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 348
    invoke-virtual {p0, v3}, Lio/vov/vitamio/widget/VideoView;->setFocusable(Z)V

    .line 349
    invoke-virtual {p0, v3}, Lio/vov/vitamio/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 350
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->requestFocus()Z

    .line 351
    iput v2, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    .line 352
    iput v2, p0, Lio/vov/vitamio/widget/VideoView;->mTargetState:I

    .line 353
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 354
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "ctx":Landroid/content/Context;
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 355
    :cond_0
    return-void
.end method

.method private openVideo()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 384
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lio/vov/vitamio/Vitamio;->isInitialized(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v5, "pause"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 391
    invoke-direct {p0, v3}, Lio/vov/vitamio/widget/VideoView;->release(Z)V

    .line 393
    const-wide/16 v5, -0x1

    :try_start_0
    iput-wide v5, p0, Lio/vov/vitamio/widget/VideoView;->mDuration:J

    .line 394
    const/4 v2, 0x0

    iput v2, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentBufferPercentage:I

    .line 395
    new-instance v2, Lio/vov/vitamio/MediaPlayer;

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lio/vov/vitamio/MediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 396
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v5}, Lio/vov/vitamio/MediaPlayer;->setOnPreparedListener(Lio/vov/vitamio/MediaPlayer$OnPreparedListener;)V

    .line 397
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mSizeChangedListener:Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v5}, Lio/vov/vitamio/MediaPlayer;->setOnVideoSizeChangedListener(Lio/vov/vitamio/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 398
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v5}, Lio/vov/vitamio/MediaPlayer;->setOnCompletionListener(Lio/vov/vitamio/MediaPlayer$OnCompletionListener;)V

    .line 399
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v5}, Lio/vov/vitamio/MediaPlayer;->setOnErrorListener(Lio/vov/vitamio/MediaPlayer$OnErrorListener;)V

    .line 400
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v5}, Lio/vov/vitamio/MediaPlayer;->setOnBufferingUpdateListener(Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;)V

    .line 401
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v5}, Lio/vov/vitamio/MediaPlayer;->setOnInfoListener(Lio/vov/vitamio/MediaPlayer$OnInfoListener;)V

    .line 402
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v2, v5}, Lio/vov/vitamio/MediaPlayer;->setOnSeekCompleteListener(Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;)V

    .line 403
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mTimedTextListener:Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    invoke-virtual {v2, v5}, Lio/vov/vitamio/MediaPlayer;->setOnTimedTextListener(Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;)V

    .line 404
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lio/vov/vitamio/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v7, p0, Lio/vov/vitamio/widget/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v5, v6, v7}, Lio/vov/vitamio/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 405
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v5}, Lio/vov/vitamio/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 406
    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    iget v2, p0, Lio/vov/vitamio/widget/VideoView;->mVideoChroma:I

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lio/vov/vitamio/MediaPlayer;->setVideoChroma(I)V

    .line 407
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lio/vov/vitamio/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 408
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->prepareAsync()V

    .line 409
    const/4 v2, 0x1

    iput v2, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    .line 410
    invoke-direct {p0}, Lio/vov/vitamio/widget/VideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unable to open content: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 413
    iput v8, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    .line 414
    iput v8, p0, Lio/vov/vitamio/widget/VideoView;->mTargetState:I

    .line 415
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v5, v4, v3}, Lio/vov/vitamio/MediaPlayer$OnErrorListener;->onError(Lio/vov/vitamio/MediaPlayer;II)Z

    goto/16 :goto_0

    .end local v0    # "ex":Ljava/io/IOException;
    :cond_2
    move v2, v4

    .line 406
    goto :goto_1

    .line 417
    :catch_1
    move-exception v0

    .line 418
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unable to open content: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    iput v8, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    .line 420
    iput v8, p0, Lio/vov/vitamio/widget/VideoView;->mTargetState:I

    .line 421
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    iget-object v5, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-interface {v2, v5, v4, v3}, Lio/vov/vitamio/MediaPlayer$OnErrorListener;->onError(Lio/vov/vitamio/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 483
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->reset()V

    .line 485
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->release()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 487
    iput v1, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    .line 488
    if-eqz p1, :cond_0

    .line 489
    iput v1, p0, Lio/vov/vitamio/widget/VideoView;->mTargetState:I

    .line 491
    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    invoke-virtual {v0}, Lio/vov/vitamio/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    invoke-virtual {v0}, Lio/vov/vitamio/widget/MediaController;->hide()V

    .line 546
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    invoke-virtual {v0}, Lio/vov/vitamio/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public addTimedTextSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "subPath"    # Ljava/lang/String;

    .prologue
    .line 713
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p1}, Lio/vov/vitamio/MediaPlayer;->addTimedTextSource(Ljava/lang/String;)V

    .line 715
    :cond_0
    return-void
.end method

.method public getAudioTrack()I
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->getAudioTrack()I

    move-result v0

    .line 688
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAudioTrackMap(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lio/vov/vitamio/MediaFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    const/4 v1, 0x2

    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v2, p1}, Lio/vov/vitamio/MediaPlayer;->getTrackInfo(Ljava/lang/String;)[Lio/vov/vitamio/MediaPlayer$TrackInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/vov/vitamio/MediaPlayer;->findTrackFromTrackInfo(I[Lio/vov/vitamio/MediaPlayer$TrackInfo;)Landroid/util/SparseArray;

    move-result-object v0

    .line 682
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 614
    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentBufferPercentage:I

    .line 615
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 594
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 596
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 583
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-wide v0, p0, Lio/vov/vitamio/widget/VideoView;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 585
    iget-wide v0, p0, Lio/vov/vitamio/widget/VideoView;->mDuration:J

    .line 590
    :goto_0
    return-wide v0

    .line 586
    :cond_0
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lio/vov/vitamio/widget/VideoView;->mDuration:J

    .line 587
    iget-wide v0, p0, Lio/vov/vitamio/widget/VideoView;->mDuration:J

    goto :goto_0

    .line 589
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/vov/vitamio/widget/VideoView;->mDuration:J

    .line 590
    iget-wide v0, p0, Lio/vov/vitamio/widget/VideoView;->mDuration:J

    goto :goto_0
.end method

.method public getMetaEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->getMetaEncoding()Ljava/lang/String;

    move-result-object v0

    .line 671
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubTrackMap(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lio/vov/vitamio/MediaFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    const/4 v1, 0x3

    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v2, p1}, Lio/vov/vitamio/MediaPlayer;->getTrackInfo(Ljava/lang/String;)[Lio/vov/vitamio/MediaPlayer$TrackInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/vov/vitamio/MediaPlayer;->findTrackFromTrackInfo(I[Lio/vov/vitamio/MediaPlayer$TrackInfo;)Landroid/util/SparseArray;

    move-result-object v0

    .line 737
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimedTextLocation()I
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->getTimedTextLocation()I

    move-result v0

    .line 709
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTimedTextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->getTimedTextPath()Ljava/lang/String;

    move-result-object v0

    .line 720
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimedTextTrack()I
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->getTimedTextTrack()I

    move-result v0

    .line 731
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVideoAspectRatio()F
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mVideoAspectRatio:F

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mVideoWidth:I

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->isBuffering()Z

    move-result v0

    .line 665
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 741
    iget-object v1, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 609
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

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

.method public isValid()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

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
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 509
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 510
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    if-eqz v2, :cond_8

    .line 511
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-eq p1, v2, :cond_0

    const/16 v2, 0x3e

    if-ne p1, v2, :cond_4

    .line 512
    :cond_0
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 513
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->pause()V

    .line 514
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/MediaController;->show()V

    .line 537
    :cond_1
    :goto_1
    return v1

    .line 509
    .end local v0    # "isKeyCodeSupported":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 516
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_3
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->start()V

    .line 517
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/MediaController;->hide()V

    goto :goto_1

    .line 520
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 521
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 522
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->start()V

    .line 523
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/MediaController;->hide()V

    goto :goto_1

    .line 526
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 527
    :cond_6
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v2}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->pause()V

    .line 529
    iget-object v2, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    invoke-virtual {v2}, Lio/vov/vitamio/widget/MediaController;->show()V

    goto :goto_1

    .line 533
    :cond_7
    invoke-direct {p0}, Lio/vov/vitamio/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 537
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 300
    iget v2, p0, Lio/vov/vitamio/widget/VideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lio/vov/vitamio/widget/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 301
    .local v1, "width":I
    iget v2, p0, Lio/vov/vitamio/widget/VideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lio/vov/vitamio/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 302
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lio/vov/vitamio/widget/VideoView;->setMeasuredDimension(II)V

    .line 303
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 495
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0}, Lio/vov/vitamio/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 497
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 502
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    if-eqz v0, :cond_0

    .line 503
    invoke-direct {p0}, Lio/vov/vitamio/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 504
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 557
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->pause()V

    .line 560
    iput v1, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    .line 563
    :cond_0
    iput v1, p0, Lio/vov/vitamio/widget/VideoView;->mTargetState:I

    .line 564
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 576
    const/4 v0, 0x7

    iput v0, p0, Lio/vov/vitamio/widget/VideoView;->mTargetState:I

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget v0, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 578
    invoke-direct {p0}, Lio/vov/vitamio/widget/VideoView;->openVideo()V

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 2
    .param p1, "msec"    # J

    .prologue
    .line 600
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Lio/vov/vitamio/MediaPlayer;->seekTo(J)V

    .line 602
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/vov/vitamio/widget/VideoView;->mSeekWhenPrepared:J

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    iput-wide p1, p0, Lio/vov/vitamio/widget/VideoView;->mSeekWhenPrepared:J

    goto :goto_0
.end method

.method public setAudioTrack(I)V
    .locals 1
    .param p1, "audioIndex"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p1}, Lio/vov/vitamio/MediaPlayer;->selectTrack(I)V

    .line 694
    :cond_0
    return-void
.end method

.method public setBufferSize(I)V
    .locals 3
    .param p1, "bufSize"    # I

    .prologue
    .line 658
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/vov/vitamio/MediaPlayer;->setBufferSize(J)V

    .line 660
    :cond_0
    return-void
.end method

.method public setMediaBufferingIndicator(Landroid/view/View;)V
    .locals 2
    .param p1, "mediaBufferingIndicator"    # Landroid/view/View;

    .prologue
    .line 434
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaBufferingIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaBufferingIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_0
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView;->mMediaBufferingIndicator:Landroid/view/View;

    .line 437
    return-void
.end method

.method public setMediaController(Lio/vov/vitamio/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Lio/vov/vitamio/widget/MediaController;

    .prologue
    .line 427
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    invoke-virtual {v0}, Lio/vov/vitamio/widget/MediaController;->hide()V

    .line 429
    :cond_0
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView;->mMediaController:Lio/vov/vitamio/widget/MediaController;

    .line 430
    invoke-direct {p0}, Lio/vov/vitamio/widget/VideoView;->attachMediaController()V

    .line 431
    return-void
.end method

.method public setMetaEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 675
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p1}, Lio/vov/vitamio/MediaPlayer;->setMetaEncoding(Ljava/lang/String;)V

    .line 677
    :cond_0
    return-void
.end method

.method public setOnBufferingUpdateListener(Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 467
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView;->mOnBufferingUpdateListener:Lio/vov/vitamio/MediaPlayer$OnBufferingUpdateListener;

    .line 468
    return-void
.end method

.method public setOnCompletionListener(Lio/vov/vitamio/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    .prologue
    .line 459
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView;->mOnCompletionListener:Lio/vov/vitamio/MediaPlayer$OnCompletionListener;

    .line 460
    return-void
.end method

.method public setOnErrorListener(Lio/vov/vitamio/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    .prologue
    .line 463
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView;->mOnErrorListener:Lio/vov/vitamio/MediaPlayer$OnErrorListener;

    .line 464
    return-void
.end method

.method public setOnInfoListener(Lio/vov/vitamio/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    .prologue
    .line 479
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView;->mOnInfoListener:Lio/vov/vitamio/MediaPlayer$OnInfoListener;

    .line 480
    return-void
.end method

.method public setOnPreparedListener(Lio/vov/vitamio/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    .prologue
    .line 455
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView;->mOnPreparedListener:Lio/vov/vitamio/MediaPlayer$OnPreparedListener;

    .line 456
    return-void
.end method

.method public setOnSeekCompleteListener(Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 471
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView;->mOnSeekCompleteListener:Lio/vov/vitamio/MediaPlayer$OnSeekCompleteListener;

    .line 472
    return-void
.end method

.method public setOnTimedTextListener(Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    .prologue
    .line 475
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView;->mOnTimedTextListener:Lio/vov/vitamio/MediaPlayer$OnTimedTextListener;

    .line 476
    return-void
.end method

.method public setSubTrack(I)V
    .locals 1
    .param p1, "trackId"    # I

    .prologue
    .line 724
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p1}, Lio/vov/vitamio/MediaPlayer;->selectTrack(I)V

    .line 726
    :cond_0
    return-void
.end method

.method public setTimedTextEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 702
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p1}, Lio/vov/vitamio/MediaPlayer;->setTimedTextEncoding(Ljava/lang/String;)V

    .line 704
    :cond_0
    return-void
.end method

.method public setTimedTextShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 697
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p1}, Lio/vov/vitamio/MediaPlayer;->setTimedTextShown(Z)V

    .line 699
    :cond_0
    return-void
.end method

.method public setVideoChroma(I)V
    .locals 2
    .param p1, "chroma"    # I

    .prologue
    .line 640
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 641
    iput p1, p0, Lio/vov/vitamio/widget/VideoView;->mVideoChroma:I

    .line 642
    return-void

    .line 640
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVideoHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 649
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView;->mHeaders:Ljava/util/Map;

    .line 650
    return-void
.end method

.method public setVideoLayout(IF)V
    .locals 11
    .param p1, "layout"    # I
    .param p2, "aspectRatio"    # F

    .prologue
    .line 317
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 318
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lio/vov/vitamio/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 319
    .local v0, "disp":Landroid/util/DisplayMetrics;
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v6, "windowWidth":I
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 320
    .local v4, "windowHeight":I
    int-to-float v7, v6

    int-to-float v8, v4

    div-float v5, v7, v8

    .line 321
    .local v5, "windowRatio":F
    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v7, p2, v7

    if-gtz v7, :cond_0

    iget v3, p0, Lio/vov/vitamio/widget/VideoView;->mVideoAspectRatio:F

    .line 322
    .local v3, "videoRatio":F
    :goto_0
    iget v7, p0, Lio/vov/vitamio/widget/VideoView;->mVideoHeight:I

    iput v7, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHeight:I

    .line 323
    iget v7, p0, Lio/vov/vitamio/widget/VideoView;->mVideoWidth:I

    iput v7, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceWidth:I

    .line 324
    if-nez p1, :cond_1

    iget v7, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceWidth:I

    if-ge v7, v6, :cond_1

    iget v7, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHeight:I

    if-ge v7, v4, :cond_1

    .line 325
    iget v7, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 326
    iget v7, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHeight:I

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 335
    :goto_1
    invoke-virtual {p0, v2}, Lio/vov/vitamio/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    iget v8, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceWidth:I

    iget v9, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHeight:I

    invoke-interface {v7, v8, v9}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 337
    const-string v7, "VIDEO: %dx%dx%f, Surface: %dx%d, LP: %dx%d, Window: %dx%dx%f"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lio/vov/vitamio/widget/VideoView;->mVideoWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lio/vov/vitamio/widget/VideoView;->mVideoHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget v10, p0, Lio/vov/vitamio/widget/VideoView;->mVideoAspectRatio:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget v10, p0, Lio/vov/vitamio/widget/VideoView;->mSurfaceHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iput p1, p0, Lio/vov/vitamio/widget/VideoView;->mVideoLayout:I

    .line 339
    iput p2, p0, Lio/vov/vitamio/widget/VideoView;->mAspectRatio:F

    .line 340
    return-void

    .end local v3    # "videoRatio":F
    :cond_0
    move v3, p2

    .line 321
    goto/16 :goto_0

    .line 327
    .restart local v3    # "videoRatio":F
    :cond_1
    const/4 v7, 0x3

    if-ne p1, v7, :cond_4

    .line 328
    cmpl-float v7, v5, v3

    if-lez v7, :cond_2

    move v7, v6

    :goto_2
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 329
    cmpg-float v7, v5, v3

    if-gez v7, :cond_3

    move v7, v4

    :goto_3
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 328
    :cond_2
    int-to-float v7, v4

    mul-float/2addr v7, v3

    float-to-int v7, v7

    goto :goto_2

    .line 329
    :cond_3
    int-to-float v7, v6

    div-float/2addr v7, v3

    float-to-int v7, v7

    goto :goto_3

    .line 331
    :cond_4
    const/4 v7, 0x2

    if-ne p1, v7, :cond_7

    const/4 v1, 0x1

    .line 332
    .local v1, "full":Z
    :goto_4
    if-nez v1, :cond_5

    cmpg-float v7, v5, v3

    if-gez v7, :cond_8

    :cond_5
    move v7, v6

    :goto_5
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 333
    if-nez v1, :cond_6

    cmpl-float v7, v5, v3

    if-lez v7, :cond_9

    :cond_6
    move v7, v4

    :goto_6
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 331
    .end local v1    # "full":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 332
    .restart local v1    # "full":Z
    :cond_8
    int-to-float v7, v4

    mul-float/2addr v7, v3

    float-to-int v7, v7

    goto :goto_5

    .line 333
    :cond_9
    int-to-float v7, v6

    div-float/2addr v7, v3

    float-to-int v7, v7

    goto :goto_6
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/vov/vitamio/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 363
    return-void
.end method

.method public setVideoQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 653
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p1}, Lio/vov/vitamio/MediaPlayer;->setVideoQuality(I)V

    .line 655
    :cond_0
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 366
    iput-object p1, p0, Lio/vov/vitamio/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 367
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/vov/vitamio/widget/VideoView;->mSeekWhenPrepared:J

    .line 368
    invoke-direct {p0}, Lio/vov/vitamio/widget/VideoView;->openVideo()V

    .line 369
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->requestLayout()V

    .line 370
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->invalidate()V

    .line 371
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 619
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Lio/vov/vitamio/MediaPlayer;->setVolume(FF)V

    .line 621
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 549
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->start()V

    .line 551
    iput v1, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    .line 553
    :cond_0
    iput v1, p0, Lio/vov/vitamio/widget/VideoView;->mTargetState:I

    .line 554
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->stop()V

    .line 376
    iget-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    invoke-virtual {v0}, Lio/vov/vitamio/MediaPlayer;->release()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lio/vov/vitamio/widget/VideoView;->mMediaPlayer:Lio/vov/vitamio/MediaPlayer;

    .line 378
    iput v1, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    .line 379
    iput v1, p0, Lio/vov/vitamio/widget/VideoView;->mTargetState:I

    .line 381
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 567
    invoke-virtual {p0}, Lio/vov/vitamio/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-direct {p0, v1}, Lio/vov/vitamio/widget/VideoView;->release(Z)V

    .line 569
    const/16 v0, 0x8

    iput v0, p0, Lio/vov/vitamio/widget/VideoView;->mCurrentState:I

    .line 570
    const-string v0, "Unable to suspend video. Release MediaPlayer."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    :cond_0
    return-void
.end method
