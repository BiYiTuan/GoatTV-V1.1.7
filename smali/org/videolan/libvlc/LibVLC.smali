.class public Lorg/videolan/libvlc/LibVLC;
.super Ljava/lang/Object;
.source "LibVLC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;
    }
.end annotation


# static fields
.field public static final AOUT_AUDIOTRACK:I = 0x1

.field public static final AOUT_AUDIOTRACK_JAVA:I = 0x0

.field public static final AOUT_OPENSLES:I = 0x2

.field public static final HW_ACCELERATION_AUTOMATIC:I = -0x1

.field public static final HW_ACCELERATION_DECODING:I = 0x1

.field public static final HW_ACCELERATION_DISABLED:I = 0x0

.field public static final HW_ACCELERATION_FULL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VLC/LibVLC"

.field public static final VOUT_ANDROID_SURFACE:I = 0x0

.field public static final VOUT_OPEGLES2:I = 0x1

.field private static sInstance:Lorg/videolan/libvlc/LibVLC;


# instance fields
.field private aout:I

.field private chroma:Ljava/lang/String;

.field private deblocking:I

.field private equalizer:[F

.field private frameSkip:Z

.field private hardwareAcceleration:I

.field private mAout:Lorg/videolan/libvlc/AudioOutput;

.field private mCachePath:Ljava/lang/String;

.field private mDebugLogBuffer:Ljava/lang/StringBuffer;

.field private mInternalMediaPlayerIndex:I

.field private mInternalMediaPlayerInstance:J

.field private mIsBufferingLog:Z

.field private mIsInitialized:Z

.field private mLibVlcInstance:J

.field private mMediaList:Lorg/videolan/libvlc/MediaList;

.field private mOnNativeCrashListener:Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

.field private mPrimaryList:Lorg/videolan/libvlc/MediaList;

.field private networkCaching:I

.field private subtitlesEncoding:Ljava/lang/String;

.field private timeStretching:Z

.field private verboseMode:Z

.field private vout:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 101
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-gt v3, v4, :cond_1

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lhdp/http/MyApp;->VLC_SO_DIR:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/libiomx-gingerbread.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .local v1, "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lhdp/http/MyApp;->VLC_SO_DIR:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/libvlcjni.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 123
    :goto_1
    return-void

    .line 103
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-gt v3, v4, :cond_2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lhdp/http/MyApp;->VLC_SO_DIR:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/libiomx-hc.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 109
    .restart local v1    # "t":Ljava/lang/Throwable;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-gt v3, v4, :cond_0

    .line 110
    const-string v3, "VLC/LibVLC"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to load the iomx library: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lhdp/http/MyApp;->VLC_SO_DIR:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/libiomx-ics.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 114
    .restart local v1    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 115
    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "VLC/LibVLC"

    .end local v1    # "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t load vlcjni library: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 118
    .end local v2    # "ule":Ljava/lang/UnsatisfiedLinkError;
    .restart local v1    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 119
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v3, "VLC/LibVLC"

    .end local v1    # "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Encountered a security issue when loading vlcjni library: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide v3, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    .line 53
    iput v1, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerIndex:I

    .line 54
    iput-wide v3, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerInstance:J

    .line 61
    iput-boolean v1, p0, Lorg/videolan/libvlc/LibVLC;->mIsBufferingLog:Z

    .line 69
    iput v2, p0, Lorg/videolan/libvlc/LibVLC;->hardwareAcceleration:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->subtitlesEncoding:Ljava/lang/String;

    .line 71
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isGingerbreadOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/videolan/libvlc/LibVLC;->aout:I

    .line 72
    iput v1, p0, Lorg/videolan/libvlc/LibVLC;->vout:I

    .line 73
    iput-boolean v1, p0, Lorg/videolan/libvlc/LibVLC;->timeStretching:Z

    .line 74
    iput v2, p0, Lorg/videolan/libvlc/LibVLC;->deblocking:I

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->chroma:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/LibVLC;->verboseMode:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->equalizer:[F

    .line 78
    iput-boolean v1, p0, Lorg/videolan/libvlc/LibVLC;->frameSkip:Z

    .line 79
    iput v1, p0, Lorg/videolan/libvlc/LibVLC;->networkCaching:I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mCachePath:Ljava/lang/String;

    .line 88
    iput-boolean v1, p0, Lorg/videolan/libvlc/LibVLC;->mIsInitialized:Z

    .line 160
    new-instance v0, Lorg/videolan/libvlc/AudioOutput;

    invoke-direct {v0}, Lorg/videolan/libvlc/AudioOutput;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mAout:Lorg/videolan/libvlc/AudioOutput;

    .line 161
    return-void

    :cond_0
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public static PathToURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 673
    if-nez p0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot convert null path!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    invoke-static {p0}, Lorg/videolan/libvlc/LibVLC;->nativeToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private applyEqualizer()V
    .locals 3

    .prologue
    .line 353
    iget-wide v0, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerInstance:J

    iget-object v2, p0, Lorg/videolan/libvlc/LibVLC;->equalizer:[F

    invoke-direct {p0, v0, v1, v2}, Lorg/videolan/libvlc/LibVLC;->setNativeEqualizer(J[F)I

    .line 354
    return-void
.end method

.method private native detachEventHandler()V
.end method

.method public static getExistingInstance()Lorg/videolan/libvlc/LibVLC;
    .locals 2

    .prologue
    .line 150
    const-class v1, Lorg/videolan/libvlc/LibVLC;

    monitor-enter v1

    .line 151
    :try_start_0
    sget-object v0, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;

    monitor-exit v1

    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lorg/videolan/libvlc/LibVLC;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/libvlc/LibVlcException;
        }
    .end annotation

    .prologue
    .line 133
    const-class v1, Lorg/videolan/libvlc/LibVLC;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0}, Lorg/videolan/libvlc/LibVLC;-><init>()V

    sput-object v0, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;

    .line 133
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    sget-object v0, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private native getThumbnail(JLjava/lang/String;II)[B
.end method

.method private native hasVideoTrack(JLjava/lang/String;)Z
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/libvlc/LibVlcException;
        }
    .end annotation
.end method

.method public static native nativeIsPathDirectory(Ljava/lang/String;)Z
.end method

.method public static native nativeReadDirectory(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static native nativeToURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private onNativeCrash()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mOnNativeCrashListener:Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mOnNativeCrashListener:Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

    invoke-interface {v0}, Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;->onNativeCrash()V

    .line 724
    :cond_0
    return-void
.end method

.method private native playMRL(JLjava/lang/String;[Ljava/lang/String;)V
.end method

.method private native readTracksInfo(JLjava/lang/String;)[Lorg/videolan/libvlc/TrackInfo;
.end method

.method public static declared-synchronized restart(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    const-class v2, Lorg/videolan/libvlc/LibVLC;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 228
    :try_start_1
    sget-object v1, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->destroy()V

    .line 229
    sget-object v1, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v1, p0}, Lorg/videolan/libvlc/LibVLC;->init(Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/videolan/libvlc/LibVlcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "lve":Lorg/videolan/libvlc/LibVlcException;
    :try_start_2
    const-string v1, "VLC/LibVLC"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to reinit libvlc: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 226
    .end local v0    # "lve":Lorg/videolan/libvlc/LibVlcException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static native sendMouseEvent(IIII)V
.end method

.method private native setEventHandler(Lorg/videolan/libvlc/EventHandler;)V
.end method

.method private native setNativeEqualizer(J[F)I
.end method


# virtual methods
.method public native addSubtitleTrack(Ljava/lang/String;)I
.end method

.method public native attachSubtitlesSurface(Landroid/view/Surface;)V
.end method

.method public native attachSurface(Landroid/view/Surface;Lorg/videolan/libvlc/IVideoPlayer;)V
.end method

.method public native changeset()Ljava/lang/String;
.end method

.method public clearBuffer()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mDebugLogBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 523
    return-void
.end method

.method public closeAout()V
    .locals 2

    .prologue
    .line 440
    const-string v0, "VLC/LibVLC"

    const-string v1, "Closing the java audio output"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mAout:Lorg/videolan/libvlc/AudioOutput;

    invoke-virtual {v0}, Lorg/videolan/libvlc/AudioOutput;->release()V

    .line 442
    return-void
.end method

.method public native compiler()Ljava/lang/String;
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 403
    const-string v0, "VLC/LibVLC"

    const-string v1, "Destroying LibVLC instance"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-direct {p0}, Lorg/videolan/libvlc/LibVLC;->nativeDestroy()V

    .line 405
    invoke-direct {p0}, Lorg/videolan/libvlc/LibVLC;->detachEventHandler()V

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/LibVLC;->mIsInitialized:Z

    .line 407
    return-void
.end method

.method public native detachSubtitlesSurface()V
.end method

.method public native detachSurface()V
.end method

.method public native eventVideoPlayerActivityCreated(Z)V
.end method

.method public expand()I
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    iget v1, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerIndex:I

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaList;->expandMedia(I)I

    move-result v0

    return v0
.end method

.method public expandAndPlay()I
    .locals 3

    .prologue
    .line 689
    iget-object v1, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    iget v2, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerIndex:I

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/MediaList;->expandMedia(I)I

    move-result v0

    .line 690
    .local v0, "r":I
    if-nez v0, :cond_0

    .line 691
    iget v1, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerIndex:I

    invoke-virtual {p0, v1}, Lorg/videolan/libvlc/LibVLC;->playIndex(I)V

    .line 692
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "VLC/LibVLC"

    const-string v1, "LibVLC is was destroyed yet before finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lorg/videolan/libvlc/LibVLC;->destroy()V

    .line 174
    :cond_0
    return-void
.end method

.method public frameSkipEnabled()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lorg/videolan/libvlc/LibVLC;->frameSkip:Z

    return v0
.end method

.method public getAout()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lorg/videolan/libvlc/LibVLC;->aout:I

    return v0
.end method

.method public native getAudioTrack()I
.end method

.method public native getAudioTrackDescription()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native getAudioTracksCount()I
.end method

.method public native getBands()[F
.end method

.method public getBufferContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mDebugLogBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public native getChapterCountForTitle(I)I
.end method

.method public getChroma()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->chroma:Ljava/lang/String;

    return-object v0
.end method

.method public getDeblocking()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/high16 v3, 0x44960000    # 1200.0f

    .line 295
    iget v1, p0, Lorg/videolan/libvlc/LibVLC;->deblocking:I

    .line 296
    .local v1, "ret":I
    iget v2, p0, Lorg/videolan/libvlc/LibVLC;->deblocking:I

    if-gez v2, :cond_6

    .line 304
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->getMachineSpecs()Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move-result-object v0

    .line 305
    .local v0, "m":Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    iget-boolean v2, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasArmV6:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasArmV7:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasMips:Z

    if-eqz v2, :cond_3

    .line 306
    :cond_1
    const/4 v1, 0x4

    .line 317
    .end local v0    # "m":Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    :cond_2
    :goto_0
    return v1

    .line 307
    .restart local v0    # "m":Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    :cond_3
    iget v2, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->frequency:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    iget v2, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->processors:I

    if-le v2, v4, :cond_4

    .line 308
    const/4 v1, 0x1

    goto :goto_0

    .line 309
    :cond_4
    iget v2, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->bogoMIPS:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    iget v2, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->processors:I

    if-le v2, v4, :cond_5

    .line 310
    const/4 v1, 0x1

    .line 311
    const-string v2, "VLC/LibVLC"

    const-string v3, "Used bogoMIPS due to lack of frequency info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :cond_5
    const/4 v1, 0x3

    .line 314
    goto :goto_0

    .end local v0    # "m":Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    :cond_6
    iget v2, p0, Lorg/videolan/libvlc/LibVLC;->deblocking:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    .line 315
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getEqualizer()[F
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->equalizer:[F

    return-object v0
.end method

.method public getHardwareAcceleration()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lorg/videolan/libvlc/LibVLC;->hardwareAcceleration:I

    return v0
.end method

.method public native getLength()J
.end method

.method public getMediaList()Lorg/videolan/libvlc/MediaList;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    return-object v0
.end method

.method public getNetworkCaching()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lorg/videolan/libvlc/LibVLC;->networkCaching:I

    return v0
.end method

.method public native getPlayerState()I
.end method

.method public native getPosition()F
.end method

.method public native getPreset(I)[F
.end method

.method public native getPresets()[Ljava/lang/String;
.end method

.method public getPrimaryMediaList()Lorg/videolan/libvlc/MediaList;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mPrimaryList:Lorg/videolan/libvlc/MediaList;

    return-object v0
.end method

.method public native getRate()F
.end method

.method public native getSpuTrack()I
.end method

.method public native getSpuTrackDescription()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native getSpuTracksCount()I
.end method

.method public native getStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public getSubtitlesEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->subtitlesEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail(Ljava/lang/String;II)[B
    .locals 6
    .param p1, "mrl"    # Ljava/lang/String;
    .param p2, "i_width"    # I
    .param p3, "i_height"    # I

    .prologue
    .line 478
    iget-wide v1, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/videolan/libvlc/LibVLC;->getThumbnail(JLjava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public native getTime()J
.end method

.method public native getTitle()I
.end method

.method public native getTitleCount()I
.end method

.method public native getVideoTracksCount()I
.end method

.method public native getVolume()I
.end method

.method public getVout()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/videolan/libvlc/LibVLC;->vout:I

    return v0
.end method

.method public hasVideoTrack(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    iget-wide v0, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v0, v1, p1}, Lorg/videolan/libvlc/LibVLC;->hasVideoTrack(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/libvlc/LibVlcException;
        }
    .end annotation

    .prologue
    .line 381
    const-string v1, "VLC/LibVLC"

    const-string v2, "Initializing LibVLC"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/videolan/libvlc/LibVLC;->mDebugLogBuffer:Ljava/lang/StringBuffer;

    .line 383
    iget-boolean v1, p0, Lorg/videolan/libvlc/LibVLC;->mIsInitialized:Z

    if-nez v1, :cond_1

    .line 384
    invoke-static {p1}, Lorg/videolan/libvlc/LibVlcUtil;->hasCompatibleCPU(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    const-string v1, "VLC/LibVLC"

    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v1, Lorg/videolan/libvlc/LibVlcException;

    invoke-direct {v1}, Lorg/videolan/libvlc/LibVlcException;-><init>()V

    throw v1

    .line 389
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 390
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/videolan/libvlc/LibVLC;->mCachePath:Ljava/lang/String;

    .line 391
    invoke-direct {p0}, Lorg/videolan/libvlc/LibVLC;->nativeInit()V

    .line 392
    new-instance v1, Lorg/videolan/libvlc/MediaList;

    invoke-direct {v1, p0}, Lorg/videolan/libvlc/MediaList;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    iput-object v1, p0, Lorg/videolan/libvlc/LibVLC;->mPrimaryList:Lorg/videolan/libvlc/MediaList;

    iput-object v1, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 393
    invoke-static {}, Lorg/videolan/libvlc/EventHandler;->getInstance()Lorg/videolan/libvlc/EventHandler;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/videolan/libvlc/LibVLC;->setEventHandler(Lorg/videolan/libvlc/EventHandler;)V

    .line 394
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/videolan/libvlc/LibVLC;->mIsInitialized:Z

    .line 396
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_1
    return-void

    .line 390
    .restart local v0    # "cacheDir":Ljava/io/File;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initAout(III)V
    .locals 2
    .param p1, "sampleRateInHz"    # I
    .param p2, "channels"    # I
    .param p3, "samples"    # I

    .prologue
    .line 414
    const-string v0, "VLC/LibVLC"

    const-string v1, "Opening the java audio output"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mAout:Lorg/videolan/libvlc/AudioOutput;

    invoke-virtual {v0, p1, p2, p3}, Lorg/videolan/libvlc/AudioOutput;->init(III)V

    .line 416
    return-void
.end method

.method public isDebugBuffering()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lorg/videolan/libvlc/LibVLC;->mIsBufferingLog:Z

    return v0
.end method

.method public native isPlaying()Z
.end method

.method public native isSeekable()Z
.end method

.method public isVerboseMode()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lorg/videolan/libvlc/LibVLC;->verboseMode:Z

    return v0
.end method

.method public native pause()V
.end method

.method public pauseAout()V
    .locals 2

    .prologue
    .line 431
    const-string v0, "VLC/LibVLC"

    const-string v1, "Pausing the java audio output"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mAout:Lorg/videolan/libvlc/AudioOutput;

    invoke-virtual {v0}, Lorg/videolan/libvlc/AudioOutput;->pause()V

    .line 433
    return-void
.end method

.method public native play()V
.end method

.method public playAudio([BI)V
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "bufferSize"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mAout:Lorg/videolan/libvlc/AudioOutput;

    invoke-virtual {v0, p1, p2}, Lorg/videolan/libvlc/AudioOutput;->playBuffer([BI)V

    .line 424
    return-void
.end method

.method public playIndex(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 450
    iget-object v2, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v2, p1}, Lorg/videolan/libvlc/MediaList;->getMRL(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "mrl":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v2, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v2, p1}, Lorg/videolan/libvlc/MediaList;->getMediaOptions(I)[Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "options":[Ljava/lang/String;
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerIndex:I

    .line 455
    iget-wide v2, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/videolan/libvlc/LibVLC;->playMRL(JLjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playMRL(Ljava/lang/String;)V
    .locals 3
    .param p1, "mrl"    # Ljava/lang/String;

    .prologue
    .line 465
    iget-object v1, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/MediaList;->getMediaOptions(I)[Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "options":[Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerIndex:I

    .line 467
    iget-wide v1, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v1, v2, p1, v0}, Lorg/videolan/libvlc/LibVLC;->playMRL(JLjava/lang/String;[Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public readTracksInfo(Ljava/lang/String;)[Lorg/videolan/libvlc/TrackInfo;
    .locals 2
    .param p1, "mrl"    # Ljava/lang/String;

    .prologue
    .line 471
    iget-wide v0, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v0, v1, p1}, Lorg/videolan/libvlc/LibVLC;->readTracksInfo(JLjava/lang/String;)[Lorg/videolan/libvlc/TrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public native readTracksInfoInternal()[Lorg/videolan/libvlc/TrackInfo;
.end method

.method public setAout(I)V
    .locals 1
    .param p1, "aout"    # I

    .prologue
    .line 269
    if-gez p1, :cond_1

    .line 270
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isICSOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/videolan/libvlc/LibVLC;->aout:I

    .line 273
    :goto_1
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_1
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->aout:I

    goto :goto_1
.end method

.method public native setAudioTrack(I)I
.end method

.method public setChroma(Ljava/lang/String;)V
    .locals 1
    .param p1, "chroma"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v0, "YV12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isGingerbreadOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    .end local p1    # "chroma":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/videolan/libvlc/LibVLC;->chroma:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setDeblocking(I)V
    .locals 0
    .param p1, "deblocking"    # I

    .prologue
    .line 321
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->deblocking:I

    .line 322
    return-void
.end method

.method public setEqualizer([F)V
    .locals 0
    .param p1, "equalizer"    # [F

    .prologue
    .line 347
    iput-object p1, p0, Lorg/videolan/libvlc/LibVLC;->equalizer:[F

    .line 348
    invoke-direct {p0}, Lorg/videolan/libvlc/LibVLC;->applyEqualizer()V

    .line 349
    return-void
.end method

.method public setFrameSkip(Z)V
    .locals 0
    .param p1, "frameskip"    # Z

    .prologue
    .line 362
    iput-boolean p1, p0, Lorg/videolan/libvlc/LibVLC;->frameSkip:Z

    .line 363
    return-void
.end method

.method public setHardwareAcceleration(I)V
    .locals 1
    .param p1, "hardwareAcceleration"    # I

    .prologue
    .line 245
    if-gez p1, :cond_1

    .line 247
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isJellyBeanMR2OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x2

    iput v0, p0, Lorg/videolan/libvlc/LibVLC;->hardwareAcceleration:I

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/libvlc/LibVLC;->hardwareAcceleration:I

    goto :goto_0

    .line 253
    :cond_1
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->hardwareAcceleration:I

    goto :goto_0
.end method

.method public setMediaList()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mPrimaryList:Lorg/videolan/libvlc/MediaList;

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 199
    return-void
.end method

.method public setMediaList(Lorg/videolan/libvlc/MediaList;)V
    .locals 0
    .param p1, "mediaList"    # Lorg/videolan/libvlc/MediaList;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 192
    return-void
.end method

.method public setNetworkCaching(I)V
    .locals 0
    .param p1, "networkcaching"    # I

    .prologue
    .line 370
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->networkCaching:I

    .line 371
    return-void
.end method

.method public setOnNativeCrashListener(Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

    .prologue
    .line 718
    iput-object p1, p0, Lorg/videolan/libvlc/LibVLC;->mOnNativeCrashListener:Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

    .line 719
    return-void
.end method

.method public native setPosition(F)V
.end method

.method public native setRate(F)V
.end method

.method public native setSpuTrack(I)I
.end method

.method public setSubtitlesEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitlesEncoding"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lorg/videolan/libvlc/LibVLC;->subtitlesEncoding:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public native setSurface(Landroid/view/Surface;)V
.end method

.method public native setTime(J)J
.end method

.method public setTimeStretching(Z)V
    .locals 0
    .param p1, "timeStretching"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lorg/videolan/libvlc/LibVLC;->timeStretching:Z

    .line 292
    return-void
.end method

.method public native setTitle(I)V
.end method

.method public setVerboseMode(Z)V
    .locals 0
    .param p1, "verboseMode"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Lorg/videolan/libvlc/LibVLC;->verboseMode:Z

    .line 338
    return-void
.end method

.method public native setVolume(I)I
.end method

.method public setVout(I)V
    .locals 1
    .param p1, "vout"    # I

    .prologue
    .line 280
    if-gez p1, :cond_0

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/libvlc/LibVLC;->vout:I

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->vout:I

    goto :goto_0
.end method

.method public native startDebugBuffer()V
.end method

.method public native stop()V
.end method

.method public native stopDebugBuffer()V
.end method

.method public timeStretchingEnabled()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lorg/videolan/libvlc/LibVLC;->timeStretching:Z

    return v0
.end method

.method public native version()Ljava/lang/String;
.end method
