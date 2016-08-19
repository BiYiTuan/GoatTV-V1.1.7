.class public Lio/vov/vitamio/widget/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;,
        Lio/vov/vitamio/widget/MediaController$OnHiddenListener;,
        Lio/vov/vitamio/widget/MediaController$OnShownListener;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private mAM:Landroid/media/AudioManager;

.field private mAnchor:Landroid/view/View;

.field private mAnimStyle:I

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDragging:Z

.field private mDuration:J

.field private mEndTime:Landroid/widget/TextView;

.field private mFileName:Landroid/widget/TextView;

.field private mFromXml:Z

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mHiddenListener:Lio/vov/vitamio/widget/MediaController$OnHiddenListener;

.field private mInfoView:Lio/vov/vitamio/widget/OutlineTextView;

.field private mInstantSeeking:Z

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

.field private mProgress:Landroid/widget/SeekBar;

.field private mRoot:Landroid/view/View;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z

.field private mShownListener:Lio/vov/vitamio/widget/MediaController$OnShownListener;

.field private mTitle:Ljava/lang/String;

.field private mWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/vov/vitamio/widget/MediaController;->mInstantSeeking:Z

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/vov/vitamio/widget/MediaController;->mFromXml:Z

    .line 102
    new-instance v0, Lio/vov/vitamio/widget/MediaController$1;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/MediaController$1;-><init>(Lio/vov/vitamio/widget/MediaController;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lio/vov/vitamio/widget/MediaController$2;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/MediaController$2;-><init>(Lio/vov/vitamio/widget/MediaController;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 127
    new-instance v0, Lio/vov/vitamio/widget/MediaController$3;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/MediaController$3;-><init>(Lio/vov/vitamio/widget/MediaController;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 178
    iget-boolean v0, p0, Lio/vov/vitamio/widget/MediaController;->mFromXml:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lio/vov/vitamio/widget/MediaController;->initController(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lio/vov/vitamio/widget/MediaController;->initFloatingWindow()V

    .line 180
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput-boolean v1, p0, Lio/vov/vitamio/widget/MediaController;->mInstantSeeking:Z

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/vov/vitamio/widget/MediaController;->mFromXml:Z

    .line 102
    new-instance v0, Lio/vov/vitamio/widget/MediaController$1;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/MediaController$1;-><init>(Lio/vov/vitamio/widget/MediaController;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lio/vov/vitamio/widget/MediaController$2;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/MediaController$2;-><init>(Lio/vov/vitamio/widget/MediaController;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 127
    new-instance v0, Lio/vov/vitamio/widget/MediaController$3;

    invoke-direct {v0, p0}, Lio/vov/vitamio/widget/MediaController$3;-><init>(Lio/vov/vitamio/widget/MediaController;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 171
    iput-object p0, p0, Lio/vov/vitamio/widget/MediaController;->mRoot:Landroid/view/View;

    .line 172
    iput-boolean v1, p0, Lio/vov/vitamio/widget/MediaController;->mFromXml:Z

    .line 173
    invoke-direct {p0, p1}, Lio/vov/vitamio/widget/MediaController;->initController(Landroid/content/Context;)Z

    .line 174
    return-void
.end method

.method static synthetic access$0(Lio/vov/vitamio/widget/MediaController;)J
    .locals 2

    .prologue
    .line 392
    invoke-direct {p0}, Lio/vov/vitamio/widget/MediaController;->setProgress()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1(Lio/vov/vitamio/widget/MediaController;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lio/vov/vitamio/widget/MediaController;->mDragging:Z

    return v0
.end method

.method static synthetic access$10(Lio/vov/vitamio/widget/MediaController;)J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lio/vov/vitamio/widget/MediaController;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$11(Lio/vov/vitamio/widget/MediaController;)Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$12(Lio/vov/vitamio/widget/MediaController;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lio/vov/vitamio/widget/MediaController;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lio/vov/vitamio/widget/MediaController;->mShowing:Z

    return v0
.end method

.method static synthetic access$3(Lio/vov/vitamio/widget/MediaController;)V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lio/vov/vitamio/widget/MediaController;->updatePausePlay()V

    return-void
.end method

.method static synthetic access$4(Lio/vov/vitamio/widget/MediaController;)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Lio/vov/vitamio/widget/MediaController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$5(Lio/vov/vitamio/widget/MediaController;Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lio/vov/vitamio/widget/MediaController;->mDragging:Z

    return-void
.end method

.method static synthetic access$6(Lio/vov/vitamio/widget/MediaController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lio/vov/vitamio/widget/MediaController;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lio/vov/vitamio/widget/MediaController;->mInstantSeeking:Z

    return v0
.end method

.method static synthetic access$8(Lio/vov/vitamio/widget/MediaController;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mAM:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$9(Lio/vov/vitamio/widget/MediaController;)Lio/vov/vitamio/widget/OutlineTextView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mInfoView:Lio/vov/vitamio/widget/OutlineTextView;

    return-object v0
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;->pause()V

    .line 468
    :goto_0
    invoke-direct {p0}, Lio/vov/vitamio/widget/MediaController;->updatePausePlay()V

    .line 469
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method private initController(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    iput-object p1, p0, Lio/vov/vitamio/widget/MediaController;->mContext:Landroid/content/Context;

    .line 184
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mAM:Landroid/media/AudioManager;

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    sget v1, Lio/vov/vitamio/R$id;->mediacontroller_play_pause:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 245
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 247
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :cond_0
    sget v1, Lio/vov/vitamio/R$id;->mediacontroller_seekbar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mProgress:Landroid/widget/SeekBar;

    .line 251
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mProgress:Landroid/widget/SeekBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 253
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mProgress:Landroid/widget/SeekBar;

    .line 254
    .local v0, "seeker":Landroid/widget/SeekBar;
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 256
    .end local v0    # "seeker":Landroid/widget/SeekBar;
    :cond_1
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mProgress:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 259
    :cond_2
    sget v1, Lio/vov/vitamio/R$id;->mediacontroller_time_total:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    .line 260
    sget v1, Lio/vov/vitamio/R$id;->mediacontroller_time_current:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 261
    sget v1, Lio/vov/vitamio/R$id;->mediacontroller_file_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mFileName:Landroid/widget/TextView;

    .line 262
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mFileName:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 263
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mFileName:Landroid/widget/TextView;

    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_3
    return-void
.end method

.method private initFloatingWindow()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mWindow:Landroid/widget/PopupWindow;

    .line 196
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 197
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 199
    const/high16 v0, 0x1030000

    iput v0, p0, Lio/vov/vitamio/widget/MediaController;->mAnimStyle:I

    .line 200
    return-void
.end method

.method private setProgress()J
    .locals 10

    .prologue
    const-wide/16 v7, 0x0

    .line 393
    iget-object v9, p0, Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lio/vov/vitamio/widget/MediaController;->mDragging:Z

    if-eqz v9, :cond_2

    :cond_0
    move-wide v5, v7

    .line 414
    :cond_1
    :goto_0
    return-wide v5

    .line 396
    :cond_2
    iget-object v9, p0, Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    invoke-interface {v9}, Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;->getCurrentPosition()J

    move-result-wide v5

    .line 397
    .local v5, "position":J
    iget-object v9, p0, Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    invoke-interface {v9}, Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;->getDuration()J

    move-result-wide v0

    .line 398
    .local v0, "duration":J
    iget-object v9, p0, Lio/vov/vitamio/widget/MediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v9, :cond_4

    .line 399
    cmp-long v7, v0, v7

    if-lez v7, :cond_3

    .line 400
    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v5

    div-long v3, v7, v0

    .line 401
    .local v3, "pos":J
    iget-object v7, p0, Lio/vov/vitamio/widget/MediaController;->mProgress:Landroid/widget/SeekBar;

    long-to-int v8, v3

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 403
    .end local v3    # "pos":J
    :cond_3
    iget-object v7, p0, Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    invoke-interface {v7}, Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v2

    .line 404
    .local v2, "percent":I
    iget-object v7, p0, Lio/vov/vitamio/widget/MediaController;->mProgress:Landroid/widget/SeekBar;

    mul-int/lit8 v8, v2, 0xa

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 407
    .end local v2    # "percent":I
    :cond_4
    iput-wide v0, p0, Lio/vov/vitamio/widget/MediaController;->mDuration:J

    .line 409
    iget-object v7, p0, Lio/vov/vitamio/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v7, :cond_5

    .line 410
    iget-object v7, p0, Lio/vov/vitamio/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    iget-wide v8, p0, Lio/vov/vitamio/widget/MediaController;->mDuration:J

    invoke-static {v8, v9}, Lio/vov/vitamio/utils/StringUtils;->generateTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_5
    iget-object v7, p0, Lio/vov/vitamio/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 412
    iget-object v7, p0, Lio/vov/vitamio/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-static {v5, v6}, Lio/vov/vitamio/utils/StringUtils;->generateTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    sget v1, Lio/vov/vitamio/R$drawable;->mediacontroller_pause_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    sget v1, Lio/vov/vitamio/R$drawable;->mediacontroller_play_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0xbb8

    const/4 v1, 0x1

    .line 431
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 432
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x4f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x55

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_2

    .line 433
    :cond_0
    invoke-direct {p0}, Lio/vov/vitamio/widget/MediaController;->doPauseResume()V

    .line 434
    invoke-virtual {p0, v3}, Lio/vov/vitamio/widget/MediaController;->show(I)V

    .line 435
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 436
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 450
    :cond_1
    :goto_0
    return v1

    .line 438
    :cond_2
    const/16 v2, 0x56

    if-ne v0, v2, :cond_3

    .line 439
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    invoke-interface {v2}, Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    invoke-interface {v2}, Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;->pause()V

    .line 441
    invoke-direct {p0}, Lio/vov/vitamio/widget/MediaController;->updatePausePlay()V

    goto :goto_0

    .line 444
    :cond_3
    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/16 v2, 0x52

    if-ne v0, v2, :cond_5

    .line 445
    :cond_4
    invoke-virtual {p0}, Lio/vov/vitamio/widget/MediaController;->hide()V

    goto :goto_0

    .line 448
    :cond_5
    invoke-virtual {p0, v3}, Lio/vov/vitamio/widget/MediaController;->show(I)V

    .line 450
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-boolean v1, p0, Lio/vov/vitamio/widget/MediaController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 370
    :try_start_0
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 371
    iget-boolean v1, p0, Lio/vov/vitamio/widget/MediaController;->mFromXml:Z

    if-eqz v1, :cond_2

    .line 372
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lio/vov/vitamio/widget/MediaController;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_1
    iput-boolean v3, p0, Lio/vov/vitamio/widget/MediaController;->mShowing:Z

    .line 379
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mHiddenListener:Lio/vov/vitamio/widget/MediaController$OnHiddenListener;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mHiddenListener:Lio/vov/vitamio/widget/MediaController$OnHiddenListener;

    invoke-interface {v1}, Lio/vov/vitamio/widget/MediaController$OnHiddenListener;->onHidden()V

    goto :goto_0

    .line 374
    :cond_2
    :try_start_1
    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController already removed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lio/vov/vitamio/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lio/vov/vitamio/widget/MediaController;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lio/vov/vitamio/R$layout;->mediacontroller:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/vov/vitamio/widget/MediaController;->initControllerView(Landroid/view/View;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 419
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lio/vov/vitamio/widget/MediaController;->show(I)V

    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 425
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lio/vov/vitamio/widget/MediaController;->show(I)V

    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 222
    iput-object p1, p0, Lio/vov/vitamio/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 223
    iget-boolean v0, p0, Lio/vov/vitamio/widget/MediaController;->mFromXml:Z

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lio/vov/vitamio/widget/MediaController;->removeAllViews()V

    .line 225
    invoke-virtual {p0}, Lio/vov/vitamio/widget/MediaController;->makeControllerView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mRoot:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 228
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 230
    :cond_0
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/vov/vitamio/widget/MediaController;->initControllerView(Landroid/view/View;)V

    .line 231
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    .line 320
    iput p1, p0, Lio/vov/vitamio/widget/MediaController;->mAnimStyle:I

    .line 321
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 473
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 475
    :cond_0
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mProgress:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 477
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 478
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lio/vov/vitamio/widget/MediaController;->mTitle:Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mFileName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lio/vov/vitamio/widget/MediaController;->mFileName:Landroid/widget/TextView;

    iget-object v1, p0, Lio/vov/vitamio/widget/MediaController;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_0
    return-void
.end method

.method public setInfoView(Lio/vov/vitamio/widget/OutlineTextView;)V
    .locals 0
    .param p1, "v"    # Lio/vov/vitamio/widget/OutlineTextView;

    .prologue
    .line 302
    iput-object p1, p0, Lio/vov/vitamio/widget/MediaController;->mInfoView:Lio/vov/vitamio/widget/OutlineTextView;

    .line 303
    return-void
.end method

.method public setInstantSeeking(Z)V
    .locals 0
    .param p1, "seekWhenDragging"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lio/vov/vitamio/widget/MediaController;->mInstantSeeking:Z

    .line 278
    return-void
.end method

.method public setMediaPlayer(Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;)V
    .locals 0
    .param p1, "player"    # Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    .prologue
    .line 267
    iput-object p1, p0, Lio/vov/vitamio/widget/MediaController;->mPlayer:Lio/vov/vitamio/widget/MediaController$MediaPlayerControl;

    .line 268
    invoke-direct {p0}, Lio/vov/vitamio/widget/MediaController;->updatePausePlay()V

    .line 269
    return-void
.end method

.method public setOnHiddenListener(Lio/vov/vitamio/widget/MediaController$OnHiddenListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/widget/MediaController$OnHiddenListener;

    .prologue
    .line 389
    iput-object p1, p0, Lio/vov/vitamio/widget/MediaController;->mHiddenListener:Lio/vov/vitamio/widget/MediaController$OnHiddenListener;

    .line 390
    return-void
.end method

.method public setOnShownListener(Lio/vov/vitamio/widget/MediaController$OnShownListener;)V
    .locals 0
    .param p1, "l"    # Lio/vov/vitamio/widget/MediaController$OnShownListener;

    .prologue
    .line 385
    iput-object p1, p0, Lio/vov/vitamio/widget/MediaController;->mShownListener:Lio/vov/vitamio/widget/MediaController$OnShownListener;

    .line 386
    return-void
.end method

.method public setWindowLayoutType()V
    .locals 7

    .prologue
    .line 204
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 207
    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "setWindowLayoutType"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 208
    .local v1, "setWindowLayoutType":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x3eb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1    # "setWindowLayoutType":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setWindowLayoutType"

    invoke-static {v2, v0}, Lio/vov/vitamio/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 281
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lio/vov/vitamio/widget/MediaController;->show(I)V

    .line 282
    return-void
.end method

.method public show(I)V
    .locals 10
    .param p1, "timeout"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 331
    iget-boolean v2, p0, Lio/vov/vitamio/widget/MediaController;->mShowing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 332
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 335
    :cond_0
    iget-boolean v2, p0, Lio/vov/vitamio/widget/MediaController;->mFromXml:Z

    if-eqz v2, :cond_3

    .line 336
    invoke-virtual {p0, v8}, Lio/vov/vitamio/widget/MediaController;->setVisibility(I)V

    .line 347
    :goto_0
    iput-boolean v7, p0, Lio/vov/vitamio/widget/MediaController;->mShowing:Z

    .line 348
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mShownListener:Lio/vov/vitamio/widget/MediaController$OnShownListener;

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mShownListener:Lio/vov/vitamio/widget/MediaController$OnShownListener;

    invoke-interface {v2}, Lio/vov/vitamio/widget/MediaController$OnShownListener;->onShown()V

    .line 351
    :cond_1
    invoke-direct {p0}, Lio/vov/vitamio/widget/MediaController;->updatePausePlay()V

    .line 352
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 354
    if-eqz p1, :cond_2

    .line 355
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lio/vov/vitamio/widget/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, p1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 358
    :cond_2
    return-void

    .line 338
    :cond_3
    new-array v1, v9, [I

    .line 340
    .local v1, "location":[I
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 341
    new-instance v0, Landroid/graphics/Rect;

    aget v2, v1, v8

    aget v3, v1, v7

    aget v4, v1, v8

    iget-object v5, p0, Lio/vov/vitamio/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v1, v7

    iget-object v6, p0, Lio/vov/vitamio/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 343
    .local v0, "anchorRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lio/vov/vitamio/widget/MediaController;->mAnimStyle:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 344
    invoke-virtual {p0}, Lio/vov/vitamio/widget/MediaController;->setWindowLayoutType()V

    .line 345
    iget-object v2, p0, Lio/vov/vitamio/widget/MediaController;->mWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lio/vov/vitamio/widget/MediaController;->mAnchor:Landroid/view/View;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
