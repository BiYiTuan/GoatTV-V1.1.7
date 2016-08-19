.class public Lhdp/player/LivePlayer;
.super Lhdp/player/BaseActivity;
.source "LivePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lhdp/player/BaseActivity$NumKeyClickListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# static fields
.field private static final EXIT_APP_CLEAN_FILE:I = 0x23

.field private static final EXIT_APP_DOWNLOAD_ERROR:I = 0x21

.field private static final EXIT_APP_INSTALLING:I = 0x22

.field private static final EXIT_PB_SETPGONE:I = 0x20

.field private static final EXIT_PB_SETPROGRESS:I = 0x1f

.field private static final EXIT_PB_SETVISIBLE:I = 0x1e

.field public static final HUIBOTAI:I = 0xd

.field public static final KONGURL:I = 0x1d

.field public static final MSG_CHANGECHANNEL:I = 0x0

.field public static final MSG_CHANGESOURCE:I = 0x1

.field public static final MSG_ERROR:I = 0x8

.field public static final MSG_HIDE_SCAL:I = 0xa

.field public static final MSG_HIDE_WELTXT:I = 0x14

.field public static final MSG_PLAYVIDEO:I = 0x5

.field public static final MSG_PLAY_LIVE:I = 0x7

.field public static final MSG_SOURCELIST:I = 0x6

.field public static final NEXT_SOU:I = 0x9

.field public static final VPROGRESSBAR:I = 0xb


# instance fields
.field private Exit_dialog:Landroid/app/Dialog;

.field private IsOtherOk:Z

.field private LiveUrl:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private channelIndex:I

.field private channelInfo:Lhdp/javabean/LiveChannelInfo;

.field private channel_souces_id:I

.field private channellist_Pop:Lhdp/player/LiveChannelList;

.field private channels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private control:Lhdp/player/LiveControl;

.field dateInfo:Lhdp/javabean/HuiboDataInfo;

.field private dbHelper:Lhdp/util/LiveDataHelper;

.field private detector:Landroid/view/GestureDetector;

.field private exit_download_pb:Landroid/widget/ProgressBar;

.field huibolist:[Ljava/lang/String;

.field jiemuInfo:Lhdp/javabean/HuiboDataInfo;

.field private loading:Landroid/widget/ProgressBar;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mVideoView:Lhdp/widget/VideoView;

.field private maxvol:I

.field private menuContrl:Lhdp/player/PlayerMenuContrl;

.field runnable:Ljava/lang/Runnable;

.field runnable_huibo:Ljava/lang/Runnable;

.field runnextsource:Ljava/lang/Runnable;

.field private step:I

.field private tipText:Landroid/widget/TextView;

.field private tvback_num:I

.field private video_img:Landroid/widget/ImageView;

.field private video_tv:Landroid/widget/TextView;

.field private welText:Landroid/widget/TextView;

.field private wm:Landroid/view/WindowManager;

.field private wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

.field private wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lhdp/player/BaseActivity;-><init>()V

    .line 72
    const-string v0, "LivePlayer"

    iput-object v0, p0, Lhdp/player/LivePlayer;->TAG:Ljava/lang/String;

    .line 79
    iput v1, p0, Lhdp/player/LivePlayer;->channelIndex:I

    .line 80
    iput v1, p0, Lhdp/player/LivePlayer;->channel_souces_id:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lhdp/player/LivePlayer;->tvback_num:I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    .line 85
    iput-object v2, p0, Lhdp/player/LivePlayer;->channellist_Pop:Lhdp/player/LiveChannelList;

    .line 95
    iput-object v2, p0, Lhdp/player/LivePlayer;->huibolist:[Ljava/lang/String;

    .line 99
    iput-boolean v1, p0, Lhdp/player/LivePlayer;->IsOtherOk:Z

    .line 305
    const/4 v0, 0x1

    iput v0, p0, Lhdp/player/LivePlayer;->step:I

    .line 628
    new-instance v0, Lhdp/player/LivePlayer$1;

    invoke-direct {v0, p0}, Lhdp/player/LivePlayer$1;-><init>(Lhdp/player/LivePlayer;)V

    iput-object v0, p0, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    .line 721
    new-instance v0, Lhdp/player/LivePlayer$2;

    invoke-direct {v0, p0}, Lhdp/player/LivePlayer$2;-><init>(Lhdp/player/LivePlayer;)V

    iput-object v0, p0, Lhdp/player/LivePlayer;->runnable:Ljava/lang/Runnable;

    .line 804
    new-instance v0, Lhdp/player/LivePlayer$3;

    invoke-direct {v0, p0}, Lhdp/player/LivePlayer$3;-><init>(Lhdp/player/LivePlayer;)V

    iput-object v0, p0, Lhdp/player/LivePlayer;->runnable_huibo:Ljava/lang/Runnable;

    .line 823
    new-instance v0, Lhdp/player/LivePlayer$4;

    invoke-direct {v0, p0}, Lhdp/player/LivePlayer$4;-><init>(Lhdp/player/LivePlayer;)V

    iput-object v0, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private ChangeChannel(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 543
    invoke-static {}, Lhdp/http/MyApp;->getTurn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 545
    iget v1, p0, Lhdp/player/LivePlayer;->channelIndex:I

    sub-int/2addr v1, p1

    iput v1, p0, Lhdp/player/LivePlayer;->channelIndex:I

    .line 553
    :goto_0
    iget v1, p0, Lhdp/player/LivePlayer;->channelIndex:I

    if-gez v1, :cond_0

    .line 555
    iget-object v1, p0, Lhdp/player/LivePlayer;->channellist_Pop:Lhdp/player/LiveChannelList;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lhdp/player/LiveChannelList;->changeList_onLive(I)V

    .line 556
    iget-object v1, p0, Lhdp/player/LivePlayer;->channellist_Pop:Lhdp/player/LiveChannelList;

    invoke-virtual {v1}, Lhdp/player/LiveChannelList;->getChannelsInfo()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    .line 557
    iget-object v1, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lhdp/player/LivePlayer;->channelIndex:I

    .line 561
    :cond_0
    iget v1, p0, Lhdp/player/LivePlayer;->channelIndex:I

    iget-object v2, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 563
    iget-object v1, p0, Lhdp/player/LivePlayer;->channellist_Pop:Lhdp/player/LiveChannelList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lhdp/player/LiveChannelList;->changeList_onLive(I)V

    .line 564
    iget-object v1, p0, Lhdp/player/LivePlayer;->channellist_Pop:Lhdp/player/LiveChannelList;

    invoke-virtual {v1}, Lhdp/player/LiveChannelList;->getChannelsInfo()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    .line 565
    iput v3, p0, Lhdp/player/LivePlayer;->channelIndex:I

    .line 569
    :cond_1
    iget-object v1, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    iget v2, p0, Lhdp/player/LivePlayer;->channelIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdp/javabean/LiveChannelInfo;

    iput-object v1, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    .line 570
    iget-object v1, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 571
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 572
    iget-object v1, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 573
    iget-object v1, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 575
    return-void

    .line 549
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget v1, p0, Lhdp/player/LivePlayer;->channelIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lhdp/player/LivePlayer;->channelIndex:I

    goto :goto_0
.end method

.method private ChangeSource(I)V
    .locals 4
    .param p1, "to"    # I

    .prologue
    const/4 v3, 0x1

    .line 585
    sget-boolean v2, Lhdp/player/LivePlayer;->IsHuiBo:Z

    if-eqz v2, :cond_2

    .line 587
    iget-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    add-int v0, v2, p1

    .line 589
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 591
    iget-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v3, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    invoke-virtual {v3}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 599
    :goto_0
    iget-object v2, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 626
    .end local v0    # "index":I
    :cond_0
    :goto_1
    return-void

    .line 595
    .restart local v0    # "index":I
    :cond_1
    iget-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v3, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    invoke-virtual {v3}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v3

    rem-int v3, v0, v3

    iput v3, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    goto :goto_0

    .line 603
    .end local v0    # "index":I
    :cond_2
    iget-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    invoke-virtual {v2}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v1

    .line 605
    .local v1, "num":I
    if-le v1, v3, :cond_4

    .line 607
    iget-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    add-int v0, v2, p1

    .line 609
    .restart local v0    # "index":I
    if-gez v0, :cond_3

    .line 610
    iget-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    add-int/lit8 v3, v1, -0x1

    iput v3, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 615
    :goto_2
    iget-object v2, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 612
    :cond_3
    iget-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    rem-int v3, v0, v1

    iput v3, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    goto :goto_2

    .line 617
    .end local v0    # "index":I
    :cond_4
    if-ne v1, v3, :cond_0

    .line 619
    const v2, 0x7f060035

    .line 620
    const/4 v3, 0x0

    .line 619
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 620
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private ClearView()V
    .locals 2

    .prologue
    .line 1407
    iget-object v0, p0, Lhdp/player/LivePlayer;->welText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1409
    iget-object v0, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1413
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1414
    iget-object v0, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->dismiss()V

    .line 1416
    :cond_1
    iget-object v0, p0, Lhdp/player/LivePlayer;->menuContrl:Lhdp/player/PlayerMenuContrl;

    invoke-virtual {v0}, Lhdp/player/PlayerMenuContrl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1417
    iget-object v0, p0, Lhdp/player/LivePlayer;->menuContrl:Lhdp/player/PlayerMenuContrl;

    invoke-virtual {v0}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    .line 1420
    :cond_2
    iget-object v0, p0, Lhdp/player/LivePlayer;->loading:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1421
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayer;->loading:Landroid/widget/ProgressBar;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1422
    :cond_3
    return-void
.end method

.method private Init_LayoutParams()V
    .locals 4

    .prologue
    const/16 v3, 0x11

    const/4 v2, -0x2

    .line 185
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    const v1, -0x32df8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object v0, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 188
    iget-object v0, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 190
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    .line 191
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 192
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 193
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 194
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 195
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 196
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x14

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 197
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x19

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 198
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x38

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 202
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    .line 203
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 204
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 205
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 206
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 207
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 208
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 209
    const v1, 0x7f030018

    const/4 v2, 0x0

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lhdp/player/LivePlayer;->loading:Landroid/widget/ProgressBar;

    .line 211
    return-void
.end method

.method private P2pSet()V
    .locals 3

    .prologue
    .line 701
    iget-object v1, p0, Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;

    const-string v2, "p2p:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lhdp/player/LivePlayer;->IsP2P:Z

    .line 703
    iget-boolean v1, p0, Lhdp/player/LivePlayer;->IsP2P:Z

    if-eqz v1, :cond_0

    .line 704
    invoke-static {}, Lhdp/http/MyApp;->startP2p()V

    .line 707
    :cond_0
    iget-object v1, p0, Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;

    const-string v2, "letv0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 713
    .local v0, "is_Letv":Z
    iget-object v1, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v1, v1, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    const-string v2, "\u4e50\u89c6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 714
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhdp/player/LivePlayer;->IsLeTv:Z

    .line 719
    :goto_0
    return-void

    .line 716
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lhdp/player/LivePlayer;->IsLeTv:Z

    goto :goto_0
.end method

.method private TipTextShow(Ljava/lang/String;F)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "size"    # F

    .prologue
    const/16 v3, 0xa

    .line 501
    iget-object v0, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 504
    iget-object v0, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 505
    invoke-virtual {p0}, Lhdp/player/LivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    iget-object v2, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    :cond_0
    :goto_0
    iget-object v0, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    iget-object v0, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 515
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 510
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    iget-object v2, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private TipTextShowHui()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    const v1, 0x7f06007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 522
    iget-object v0, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 523
    iget-object v0, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 524
    iget-object v0, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 525
    invoke-virtual {p0}, Lhdp/player/LivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    iget-object v2, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    :cond_0
    :goto_0
    iget-object v0, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 530
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    iget-object v2, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lhdp/player/LivePlayer;)Lhdp/widget/VideoView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$1(Lhdp/player/LivePlayer;)V
    .locals 0

    .prologue
    .line 1405
    invoke-direct {p0}, Lhdp/player/LivePlayer;->ClearView()V

    return-void
.end method

.method static synthetic access$10(Lhdp/player/LivePlayer;Lhdp/javabean/LiveChannelInfo;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    return-void
.end method

.method static synthetic access$11(Lhdp/player/LivePlayer;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Lhdp/player/LivePlayer;->updateData(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$12(Lhdp/player/LivePlayer;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lhdp/player/LivePlayer;->tvback_num:I

    return-void
.end method

.method static synthetic access$13(Lhdp/player/LivePlayer;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lhdp/player/LivePlayer;->tvback_num:I

    return v0
.end method

.method static synthetic access$14(Lhdp/player/LivePlayer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lhdp/player/LivePlayer;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$16(Lhdp/player/LivePlayer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lhdp/player/LivePlayer;->video_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lhdp/player/LivePlayer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lhdp/player/LivePlayer;->video_img:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$18(Lhdp/player/LivePlayer;I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lhdp/player/LivePlayer;->channel_souces_id:I

    return-void
.end method

.method static synthetic access$19(Lhdp/player/LivePlayer;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lhdp/player/LivePlayer;->channel_souces_id:I

    return v0
.end method

.method static synthetic access$2(Lhdp/player/LivePlayer;)Lhdp/player/PlayerMenuContrl;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lhdp/player/LivePlayer;->menuContrl:Lhdp/player/PlayerMenuContrl;

    return-object v0
.end method

.method static synthetic access$20(Lhdp/player/LivePlayer;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lhdp/player/LivePlayer;->IsOtherOk:Z

    return v0
.end method

.method static synthetic access$21(Lhdp/player/LivePlayer;Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lhdp/player/LivePlayer;->IsOtherOk:Z

    return-void
.end method

.method static synthetic access$22(Lhdp/player/LivePlayer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lhdp/player/LivePlayer;->welText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$23(Lhdp/player/LivePlayer;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lhdp/player/LivePlayer;->loading:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$24(Lhdp/player/LivePlayer;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$25(Lhdp/player/LivePlayer;I)V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lhdp/player/LivePlayer;->ChangeChannel(I)V

    return-void
.end method

.method static synthetic access$26(Lhdp/player/LivePlayer;I)V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lhdp/player/LivePlayer;->ChangeSource(I)V

    return-void
.end method

.method static synthetic access$27(Lhdp/player/LivePlayer;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lhdp/player/LivePlayer;->exit_download_pb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$28(Lhdp/player/LivePlayer;Lhdp/player/PlayerMenuContrl;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lhdp/player/LivePlayer;->menuContrl:Lhdp/player/PlayerMenuContrl;

    return-void
.end method

.method static synthetic access$29(Lhdp/player/LivePlayer;)V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Lhdp/player/LivePlayer;->call_openmenu()V

    return-void
.end method

.method static synthetic access$3(Lhdp/player/LivePlayer;)Lhdp/javabean/LiveChannelInfo;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    return-object v0
.end method

.method static synthetic access$4(Lhdp/player/LivePlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lhdp/player/LivePlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lhdp/player/LivePlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lhdp/player/LivePlayer;)V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Lhdp/player/LivePlayer;->P2pSet()V

    return-void
.end method

.method static synthetic access$7(Lhdp/player/LivePlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lhdp/player/LivePlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lhdp/player/LivePlayer;->LiveUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lhdp/player/LivePlayer;)Lhdp/player/LiveControl;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    return-object v0
.end method

.method private call_openmenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 469
    iget-object v0, p0, Lhdp/player/LivePlayer;->loading:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayer;->loading:Landroid/widget/ProgressBar;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayer;->menuContrl:Lhdp/player/PlayerMenuContrl;

    iget-object v1, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    invoke-virtual {v0, v1}, Lhdp/player/PlayerMenuContrl;->SetState(Lhdp/javabean/LiveChannelInfo;)V

    .line 472
    iget-object v0, p0, Lhdp/player/LivePlayer;->menuContrl:Lhdp/player/PlayerMenuContrl;

    iget-object v1, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Lhdp/player/PlayerMenuContrl;->showAtLocation(Landroid/view/View;III)V

    .line 473
    return-void
.end method

.method private createExitDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1061
    new-instance v2, Landroid/app/Dialog;

    const v6, 0x7f070004

    invoke-direct {v2, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1062
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03000a

    .line 1063
    const/4 v8, 0x0

    .line 1062
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1064
    .local v5, "root":Landroid/view/View;
    const v6, 0x7f0a002f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    sput-object v6, Lhdp/http/MyApp;->bgImg:Landroid/widget/ImageView;

    .line 1066
    const v6, 0x7f0a0030

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 1065
    iput-object v6, p0, Lhdp/player/LivePlayer;->exit_download_pb:Landroid/widget/ProgressBar;

    .line 1067
    const v6, 0x7f0a002d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1068
    .local v4, "playBtn":Landroid/widget/Button;
    const v6, 0x7f0a002e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1069
    .local v3, "exitBtn":Landroid/widget/Button;
    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    .line 1071
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lhdp/player/LivePlayer;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "exitpic.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, "ExitTuPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1074
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1075
    .local v1, "bm":Landroid/graphics/Bitmap;
    sget-object v6, Lhdp/http/MyApp;->bgImg:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1078
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v6, Lhdp/http/MyApp;->bgImg:Landroid/widget/ImageView;

    new-instance v7, Lhdp/player/LivePlayer$5;

    invoke-direct {v7, p0}, Lhdp/player/LivePlayer$5;-><init>(Lhdp/player/LivePlayer;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    new-instance v6, Lhdp/player/LivePlayer$6;

    invoke-direct {v6, p0, v2}, Lhdp/player/LivePlayer$6;-><init>(Lhdp/player/LivePlayer;Landroid/app/Dialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    new-instance v6, Lhdp/player/LivePlayer$7;

    invoke-direct {v6, p0, v2}, Lhdp/player/LivePlayer$7;-><init>(Lhdp/player/LivePlayer;Landroid/app/Dialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1116
    return-object v2
.end method

.method private initController()V
    .locals 2

    .prologue
    .line 217
    invoke-direct {p0, p0}, Lhdp/player/LivePlayer;->createExitDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/LivePlayer;->Exit_dialog:Landroid/app/Dialog;

    .line 218
    new-instance v0, Lhdp/player/LiveControl;

    invoke-direct {v0, p0}, Lhdp/player/LiveControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    .line 219
    new-instance v0, Lhdp/player/PlayerMenuContrl;

    invoke-direct {v0, p0}, Lhdp/player/PlayerMenuContrl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhdp/player/LivePlayer;->menuContrl:Lhdp/player/PlayerMenuContrl;

    .line 220
    new-instance v0, Lhdp/player/LiveChannelList;

    iget-object v1, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lhdp/player/LiveChannelList;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lhdp/player/LivePlayer;->channellist_Pop:Lhdp/player/LiveChannelList;

    .line 221
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 174
    invoke-virtual {p0}, Lhdp/player/LivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "tid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "tid":Ljava/lang/String;
    const-string v3, "vid"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 178
    .local v2, "vid":I
    const-string v3, "lastSource"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lhdp/player/LivePlayer;->channel_souces_id:I

    .line 179
    const-string v3, "backNum"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lhdp/player/LivePlayer;->tvback_num:I

    .line 180
    invoke-direct {p0, v1, v2}, Lhdp/player/LivePlayer;->updateData(Ljava/lang/String;I)V

    .line 181
    return-void
.end method

.method private initScale()V
    .locals 3

    .prologue
    .line 680
    iget-object v0, p0, Lhdp/player/LivePlayer;->TAG:Ljava/lang/String;

    const-string v1, "initScale"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lhdp/player/LivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyApp.getScale is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    invoke-virtual {v0}, Lhdp/widget/VideoView;->selectScales()V

    .line 684
    return-void
.end method

.method private updateData(Ljava/lang/String;I)V
    .locals 3
    .param p1, "tid"    # Ljava/lang/String;
    .param p2, "vid"    # I

    .prologue
    .line 225
    const/4 v1, 0x0

    iput v1, p0, Lhdp/player/LivePlayer;->channelIndex:I

    .line 226
    iget-object v1, p0, Lhdp/player/LivePlayer;->dbHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v1, p1}, Lhdp/util/LiveDataHelper;->getChannelListByTid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    .line 228
    iget-object v1, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    :cond_0
    iget-object v1, p0, Lhdp/player/LivePlayer;->channellist_Pop:Lhdp/player/LiveChannelList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lhdp/player/LiveChannelList;->changeList_onLive(I)V

    .line 231
    iget-object v1, p0, Lhdp/player/LivePlayer;->channellist_Pop:Lhdp/player/LiveChannelList;

    invoke-virtual {v1}, Lhdp/player/LiveChannelList;->getChannelsInfo()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 238
    iget-object v1, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdp/javabean/LiveChannelInfo;

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->vid:I

    if-ne v1, p2, :cond_3

    .line 239
    iput v0, p0, Lhdp/player/LivePlayer;->channelIndex:I

    goto :goto_0

    .line 236
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public Back_LiveNum()V
    .locals 5

    .prologue
    .line 1253
    iget v2, p0, Lhdp/player/LivePlayer;->tvback_num:I

    if-lez v2, :cond_1

    .line 1255
    sget-object v2, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    iget v3, p0, Lhdp/player/LivePlayer;->tvback_num:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    iget-object v2, p0, Lhdp/player/LivePlayer;->dbHelper:Lhdp/util/LiveDataHelper;

    iget v3, p0, Lhdp/player/LivePlayer;->tvback_num:I

    invoke-virtual {v2, v3}, Lhdp/util/LiveDataHelper;->getChannelInfoByNum(I)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iput-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    .line 1257
    iget-object v2, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    iget v3, p0, Lhdp/player/LivePlayer;->channelIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhdp/javabean/LiveChannelInfo;

    iget v0, v2, Lhdp/javabean/LiveChannelInfo;->vid:I

    .line 1258
    .local v0, "tempvid":I
    iget-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v2, v2, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v3, v3, Lhdp/javabean/LiveChannelInfo;->vid:I

    invoke-direct {p0, v2, v3}, Lhdp/player/LivePlayer;->updateData(Ljava/lang/String;I)V

    .line 1260
    iget-object v2, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    iget v3, p0, Lhdp/player/LivePlayer;->channelIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhdp/javabean/LiveChannelInfo;

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->vid:I

    if-eq v2, v0, :cond_0

    .line 1261
    iget-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v3, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v3, v3, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    invoke-virtual {v2, v3}, Lhdp/javabean/LiveChannelInfo;->getSourceUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 1262
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1265
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    sget-object v2, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1266
    sget-object v2, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    .line 1267
    sget-object v3, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1266
    iput v2, p0, Lhdp/player/LivePlayer;->tvback_num:I

    .line 1270
    .end local v0    # "tempvid":I
    :cond_1
    return-void
.end method

.method protected changScale()V
    .locals 3

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 478
    .local v0, "tv_show_text":Ljava/lang/String;
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quanping"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    const v1, 0x7f06004b

    invoke-virtual {p0, v1}, Lhdp/player/LivePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    :cond_0
    :goto_0
    iget-object v1, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    invoke-virtual {v1}, Lhdp/widget/VideoView;->selectScales()V

    .line 489
    iget-object v1, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x12c

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 490
    iget-object v1, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 491
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-direct {p0, v0, v1}, Lhdp/player/LivePlayer;->TipTextShow(Ljava/lang/String;F)V

    .line 492
    return-void

    .line 480
    :cond_1
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4X3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    const-string v0, "4:3"

    .line 482
    goto :goto_0

    :cond_2
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v1

    const-string v2, "16X9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 483
    const-string v0, "16:9"

    .line 484
    goto :goto_0

    :cond_3
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yuanshi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    const v1, 0x7f06004c

    invoke-virtual {p0, v1}, Lhdp/player/LivePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public delExitAPK()V
    .locals 3

    .prologue
    .line 1121
    sget-object v1, Lhdp/http/MyApp;->app_save_adress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lhdp/http/MyApp;->appname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1122
    new-instance v0, Ljava/io/File;

    sget-object v1, Lhdp/http/MyApp;->app_save_adress:Ljava/lang/String;

    sget-object v2, Lhdp/http/MyApp;->appname:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    .local v0, "app_save_file":Ljava/io/File;
    iget-object v1, p0, Lhdp/player/LivePlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1125
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1126
    iget-object v1, p0, Lhdp/player/LivePlayer;->TAG:Ljava/lang/String;

    const-string v2, "app_save_file is delete!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    .end local v0    # "app_save_file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public exitImgLink()V
    .locals 6

    .prologue
    .line 1135
    sget-object v4, Lhdp/http/MyApp;->ExitPicUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lhdp/http/MyApp;->ExitPicUrl:Ljava/lang/String;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1138
    sget-object v4, Lhdp/http/MyApp;->ExitPicUrl:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1139
    .local v1, "i_url":I
    sget-object v4, Lhdp/http/MyApp;->ExitPicUrl:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lhdp/http/MyApp;->appname:Ljava/lang/String;

    .line 1141
    const-string v4, "Net_App"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lhdp/player/LivePlayer;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 1142
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1141
    sput-object v4, Lhdp/http/MyApp;->app_save_adress:Ljava/lang/String;

    .line 1144
    new-instance v0, Ljava/io/File;

    sget-object v4, Lhdp/http/MyApp;->app_save_adress:Ljava/lang/String;

    sget-object v5, Lhdp/http/MyApp;->appname:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    .local v0, "app_save_file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1146
    iget-object v4, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1212
    .end local v0    # "app_save_file":Ljava/io/File;
    .end local v1    # "i_url":I
    :goto_0
    return-void

    .line 1148
    .restart local v0    # "app_save_file":Ljava/io/File;
    .restart local v1    # "i_url":I
    :cond_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lhdp/player/LivePlayer$8;

    invoke-direct {v5, p0}, Lhdp/player/LivePlayer$8;-><init>(Lhdp/player/LivePlayer;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1200
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1205
    .end local v0    # "app_save_file":Ljava/io/File;
    .end local v1    # "i_url":I
    :cond_1
    :try_start_0
    sget-object v4, Lhdp/http/MyApp;->ExitPicUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1206
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1207
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lhdp/player/LivePlayer;->startActivity(Landroid/content/Intent;)V

    .line 1208
    iget-object v4, p0, Lhdp/player/LivePlayer;->Exit_dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1209
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public multeKeyDown(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 1300
    const v2, 0xf423f

    if-ge p1, v2, :cond_0

    .line 1302
    iget-object v2, p0, Lhdp/player/LivePlayer;->dbHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v2, p1}, Lhdp/util/LiveDataHelper;->getChannelInfoByNum(I)Lhdp/javabean/LiveChannelInfo;

    move-result-object v0

    .line 1304
    .local v0, "live":Lhdp/javabean/LiveChannelInfo;
    if-eqz v0, :cond_0

    .line 1306
    iget-object v2, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1307
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1308
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1309
    iget-object v2, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1313
    .end local v0    # "live":Lhdp/javabean/LiveChannelInfo;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1216
    invoke-super {p0, p1, p2, p3}, Lhdp/player/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1218
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1220
    const-string v0, "array"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1221
    invoke-virtual {p0}, Lhdp/player/LivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->show()V

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lhdp/player/LivePlayer;->IsHuiBo:Z

    .line 1228
    const-string v0, "array"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/LivePlayer;->huibolist:[Ljava/lang/String;

    .line 1229
    iget-object v0, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v1, p0, Lhdp/player/LivePlayer;->huibolist:[Ljava/lang/String;

    iput-object v1, v0, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    .line 1230
    iget-object v0, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    const/4 v1, 0x0

    iput v1, v0, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 1231
    iget-object v0, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    const-string v1, "epg"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhdp/player/LiveControl;->HuiBoTv(Ljava/lang/String;)V

    .line 1232
    iget-object v0, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1233
    invoke-direct {p0}, Lhdp/player/LivePlayer;->TipTextShowHui()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->dismiss()V

    .line 1243
    :cond_0
    invoke-virtual {p0}, Lhdp/player/LivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1244
    iget-object v0, p0, Lhdp/player/LivePlayer;->Exit_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1246
    :cond_1
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1427
    iget-object v0, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1428
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x4

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 111
    invoke-super {p0, p1}, Lhdp/player/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    iget-object v3, p0, Lhdp/player/LivePlayer;->TAG:Ljava/lang/String;

    const-string v4, "Enter live player!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v3, Lhdp/util/CustomExceptionHandler;

    invoke-direct {v3}, Lhdp/util/CustomExceptionHandler;-><init>()V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 114
    new-instance v3, Lhdp/widget/VideoView;

    iget-object v4, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lhdp/widget/VideoView;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    .line 115
    iget-object v3, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    invoke-virtual {v3, p0}, Lhdp/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 116
    iget-object v3, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    invoke-virtual {v3, p0}, Lhdp/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 117
    iget-object v3, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    invoke-virtual {v3, p0}, Lhdp/widget/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 119
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lhdp/player/LivePlayer;->video_img:Landroid/widget/ImageView;

    .line 120
    iget-object v3, p0, Lhdp/player/LivePlayer;->video_img:Landroid/widget/ImageView;

    const v4, 0x7f02006b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 121
    iget-object v3, p0, Lhdp/player/LivePlayer;->video_img:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lhdp/player/LivePlayer;->video_tv:Landroid/widget/TextView;

    .line 124
    iget-object v3, p0, Lhdp/player/LivePlayer;->video_tv:Landroid/widget/TextView;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 125
    iget-object v3, p0, Lhdp/player/LivePlayer;->video_tv:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 126
    iget-object v3, p0, Lhdp/player/LivePlayer;->video_tv:Landroid/widget/TextView;

    const/16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v3, p0, Lhdp/player/LivePlayer;->video_tv:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, "layout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v2, "lytp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 132
    iget-object v3, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v3, p0, Lhdp/player/LivePlayer;->video_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v3, p0, Lhdp/player/LivePlayer;->video_tv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 136
    new-instance v3, Lhdp/widget/MarqueeTextView;

    invoke-direct {v3, p0}, Lhdp/widget/MarqueeTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lhdp/player/LivePlayer;->welText:Landroid/widget/TextView;

    .line 137
    iget-object v3, p0, Lhdp/player/LivePlayer;->welText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lhdp/http/MyApp;->SHowTxt_b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lhdp/http/MyApp;->SHowTxt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, p0, Lhdp/player/LivePlayer;->welText:Landroid/widget/TextView;

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    iget-object v3, p0, Lhdp/player/LivePlayer;->welText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 140
    iget-object v3, p0, Lhdp/player/LivePlayer;->welText:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 141
    iget-object v3, p0, Lhdp/player/LivePlayer;->welText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 142
    iget-object v3, p0, Lhdp/player/LivePlayer;->welText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lhdp/player/LivePlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f080000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v3, p0, Lhdp/player/LivePlayer;->welText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 144
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    .line 145
    const/16 v4, 0x30

    .line 144
    invoke-direct {v0, v6, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 146
    .local v0, "fptxt":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lhdp/player/LivePlayer;->welText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-virtual {p0, v1}, Lhdp/player/LivePlayer;->setContentView(Landroid/view/View;)V

    .line 149
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lhdp/player/LivePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lhdp/player/LivePlayer;->wm:Landroid/view/WindowManager;

    .line 150
    invoke-static {p0}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v3

    iput-object v3, p0, Lhdp/player/LivePlayer;->dbHelper:Lhdp/util/LiveDataHelper;

    .line 151
    new-instance v3, Landroid/view/GestureDetector;

    invoke-direct {v3, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lhdp/player/LivePlayer;->detector:Landroid/view/GestureDetector;

    .line 153
    iget-object v3, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    sget-wide v5, Lhdp/http/MyApp;->SHowTime:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    invoke-virtual {p0, p0}, Lhdp/player/LivePlayer;->setOnNumKeyClickListener(Lhdp/player/BaseActivity$NumKeyClickListener;)V

    .line 156
    invoke-direct {p0}, Lhdp/player/LivePlayer;->Init_LayoutParams()V

    .line 157
    invoke-direct {p0}, Lhdp/player/LivePlayer;->initController()V

    .line 158
    invoke-direct {p0}, Lhdp/player/LivePlayer;->initData()V

    .line 160
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lhdp/player/LivePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lhdp/player/LivePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 161
    iget-object v3, p0, Lhdp/player/LivePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    iput v3, p0, Lhdp/player/LivePlayer;->maxvol:I

    .line 163
    iget v3, p0, Lhdp/player/LivePlayer;->maxvol:I

    div-int/lit8 v3, v3, 0xa

    iput v3, p0, Lhdp/player/LivePlayer;->step:I

    .line 164
    iget v3, p0, Lhdp/player/LivePlayer;->step:I

    if-nez v3, :cond_0

    .line 165
    iput v7, p0, Lhdp/player/LivePlayer;->step:I

    .line 167
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0}, Lhdp/player/BaseActivity;->onDestroy()V

    .line 294
    iget-object v0, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    invoke-virtual {v0}, Lhdp/widget/VideoView;->stopPlayback()V

    .line 295
    invoke-direct {p0}, Lhdp/player/LivePlayer;->ClearView()V

    .line 296
    iget-object v0, p0, Lhdp/player/LivePlayer;->hdpget:Lcom/hdp/HdpGet;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lhdp/player/LivePlayer;->hdpget:Lcom/hdp/HdpGet;

    invoke-interface {v0}, Lcom/hdp/HdpGet;->StopGet()V

    .line 299
    :cond_0
    const-string v0, "onde"

    const-string v1, "live_ondes"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1323
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v7, -0x1

    const/high16 v6, -0x3e100000    # -30.0f

    const/4 v5, 0x1

    const/high16 v4, 0x41f00000    # 30.0f

    .line 1371
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 1372
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 1373
    .local v1, "y":F
    cmpl-float v2, v0, v4

    if-lez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 1374
    invoke-direct {p0, v5}, Lhdp/player/LivePlayer;->ChangeSource(I)V

    .line 1382
    :cond_0
    :goto_0
    return v5

    .line 1375
    :cond_1
    cmpg-float v2, v0, v6

    if-gez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 1376
    invoke-direct {p0, v7}, Lhdp/player/LivePlayer;->ChangeSource(I)V

    goto :goto_0

    .line 1377
    :cond_2
    cmpl-float v2, v1, v4

    if-lez v2, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 1378
    invoke-direct {p0, v5}, Lhdp/player/LivePlayer;->ChangeChannel(I)V

    goto :goto_0

    .line 1379
    :cond_3
    cmpg-float v2, v1, v6

    if-gez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 1380
    invoke-direct {p0, v7}, Lhdp/player/LivePlayer;->ChangeChannel(I)V

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1388
    packed-switch p2, :pswitch_data_0

    .line 1402
    :goto_0
    return v3

    .line 1391
    :pswitch_0
    const-string v0, "xxx"

    const-string v1, "kazhul"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v0, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1396
    :pswitch_1
    const-string v0, "xxx"

    const-string v1, "huiful"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v0, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1388
    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v4, 0x7f060036

    const/4 v3, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 310
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 312
    const/16 v2, 0x17

    if-eq p1, v2, :cond_0

    const/16 v2, 0x42

    if-ne p1, v2, :cond_2

    .line 313
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 315
    iget-object v2, p0, Lhdp/player/LivePlayer;->channellist_Pop:Lhdp/player/LiveChannelList;

    .line 316
    iget-object v3, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v3, v3, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget v4, p0, Lhdp/player/LivePlayer;->channelIndex:I

    invoke-virtual {v2, v3, v4, v1}, Lhdp/player/LiveChannelList;->refreshView(Ljava/lang/String;II)V

    .line 318
    iget-object v2, p0, Lhdp/player/LivePlayer;->channellist_Pop:Lhdp/player/LiveChannelList;

    iget-object v3, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    invoke-virtual {v2, v3, v6, v5, v5}, Lhdp/player/LiveChannelList;->showAtLocation(Landroid/view/View;III)V

    .line 320
    iget-object v2, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->dismiss()V

    .line 462
    :cond_1
    :goto_0
    return v1

    .line 324
    :cond_2
    const/16 v2, 0x52

    if-ne p1, v2, :cond_6

    .line 326
    iget-object v1, p0, Lhdp/player/LivePlayer;->menuContrl:Lhdp/player/PlayerMenuContrl;

    invoke-virtual {v1}, Lhdp/player/PlayerMenuContrl;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 327
    iget-object v1, p0, Lhdp/player/LivePlayer;->menuContrl:Lhdp/player/PlayerMenuContrl;

    invoke-virtual {v1}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    .line 462
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lhdp/player/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 329
    :cond_4
    iget-object v1, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v1}, Lhdp/player/LiveControl;->isShown()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 330
    iget-object v1, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v1}, Lhdp/player/LiveControl;->dismiss()V

    .line 332
    :cond_5
    new-instance v1, Lhdp/player/PlayerMenuContrl;

    invoke-direct {v1, p0}, Lhdp/player/PlayerMenuContrl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhdp/player/LivePlayer;->menuContrl:Lhdp/player/PlayerMenuContrl;

    .line 333
    invoke-direct {p0}, Lhdp/player/LivePlayer;->call_openmenu()V

    goto :goto_1

    .line 335
    :cond_6
    const/16 v2, 0x13

    if-ne p1, v2, :cond_7

    .line 336
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 338
    invoke-direct {p0, v1}, Lhdp/player/LivePlayer;->ChangeChannel(I)V

    goto :goto_0

    .line 341
    :cond_7
    const/16 v2, 0x14

    if-ne p1, v2, :cond_8

    .line 342
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 344
    invoke-direct {p0, v3}, Lhdp/player/LivePlayer;->ChangeChannel(I)V

    goto :goto_0

    .line 347
    :cond_8
    const/16 v2, 0x15

    if-ne p1, v2, :cond_d

    .line 348
    invoke-static {}, Lhdp/http/MyApp;->getVolSet()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 349
    iget-object v2, p0, Lhdp/player/LivePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 350
    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 351
    .local v0, "currentvol":I
    iget v2, p0, Lhdp/player/LivePlayer;->step:I

    sub-int/2addr v0, v2

    .line 352
    if-gtz v0, :cond_9

    .line 353
    const/4 v0, 0x0

    .line 355
    :cond_9
    iget-object v2, p0, Lhdp/player/LivePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 359
    .end local v0    # "currentvol":I
    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 361
    invoke-virtual {p0}, Lhdp/player/LivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 363
    iget-object v2, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->isShown()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 366
    invoke-static {}, Lhdp/util/AppUtils;->isFastDoubleClick()Z

    move-result v2

    if-nez v2, :cond_b

    .line 368
    invoke-direct {p0, v3}, Lhdp/player/LivePlayer;->ChangeSource(I)V

    goto/16 :goto_0

    .line 371
    :cond_b
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 373
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 378
    :cond_c
    iget-object v2, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->show()V

    goto/16 :goto_0

    .line 388
    :cond_d
    const/16 v2, 0x16

    if-ne p1, v2, :cond_12

    .line 390
    invoke-static {}, Lhdp/http/MyApp;->getVolSet()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 392
    iget-object v2, p0, Lhdp/player/LivePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 393
    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 395
    .restart local v0    # "currentvol":I
    iget v2, p0, Lhdp/player/LivePlayer;->step:I

    add-int/2addr v0, v2

    .line 397
    iget v2, p0, Lhdp/player/LivePlayer;->maxvol:I

    if-lt v0, v2, :cond_e

    .line 399
    iget v0, p0, Lhdp/player/LivePlayer;->maxvol:I

    .line 403
    :cond_e
    iget-object v2, p0, Lhdp/player/LivePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 408
    .end local v0    # "currentvol":I
    :cond_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 410
    invoke-virtual {p0}, Lhdp/player/LivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 412
    iget-object v2, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->isShown()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 415
    invoke-static {}, Lhdp/util/AppUtils;->isFastDoubleClick()Z

    move-result v2

    if-nez v2, :cond_10

    .line 417
    invoke-direct {p0, v1}, Lhdp/player/LivePlayer;->ChangeSource(I)V

    goto/16 :goto_0

    .line 420
    :cond_10
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 422
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 427
    :cond_11
    iget-object v2, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->show()V

    goto/16 :goto_0

    .line 435
    :cond_12
    const/4 v2, 0x7

    if-ne p1, v2, :cond_13

    .line 437
    iget-object v2, p0, Lhdp/player/LivePlayer;->tipText:Landroid/widget/TextView;

    if-nez v2, :cond_3

    .line 439
    invoke-virtual {p0}, Lhdp/player/LivePlayer;->Back_LiveNum()V

    goto/16 :goto_0

    .line 443
    :cond_13
    const/16 v2, 0xb7

    if-eq p1, v2, :cond_14

    const/16 v2, 0x11

    if-ne p1, v2, :cond_15

    .line 444
    :cond_14
    iget-object v2, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 445
    iget-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    invoke-virtual {p0, p0, v2}, Lhdp/player/LivePlayer;->favCurrentChannel(Landroid/content/Context;Lhdp/javabean/LiveChannelInfo;)V

    goto/16 :goto_0

    .line 448
    :cond_15
    const/16 v2, 0xb8

    if-eq p1, v2, :cond_16

    const/16 v2, 0x12

    if-ne p1, v2, :cond_18

    .line 449
    :cond_16
    invoke-virtual {p0}, Lhdp/player/LivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 450
    iget-object v2, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->isShown()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 451
    iget-object v2, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->dismiss()V

    goto/16 :goto_0

    .line 453
    :cond_17
    iget-object v2, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->show()V

    goto/16 :goto_0

    .line 457
    :cond_18
    const/16 v1, 0xb9

    if-ne p1, v1, :cond_3

    .line 458
    invoke-virtual {p0}, Lhdp/player/LivePlayer;->changScale()V

    goto/16 :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1352
    iget-object v1, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v1, v1, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v1, v1, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1354
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lhdp/player/HuiboList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1355
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "huibo"

    iget-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v2, v2, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1356
    const-string v1, "type"

    iget-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v2, v2, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1357
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lhdp/player/LivePlayer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1365
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1361
    :cond_1
    invoke-virtual {p0}, Lhdp/player/LivePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1362
    iget-object v1, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v1}, Lhdp/player/LiveControl;->show()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 271
    invoke-super {p0}, Lhdp/player/BaseActivity;->onPause()V

    .line 272
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V

    .line 273
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 663
    iget-object v0, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    invoke-virtual {v0}, Lhdp/widget/VideoView;->start()V

    .line 664
    invoke-direct {p0}, Lhdp/player/LivePlayer;->initScale()V

    .line 668
    iget-object v0, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhdp/player/LiveControl;->setState(I)V

    .line 670
    iget-object v0, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v0, v0, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v0, v0, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v1, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->vid:I

    invoke-static {v0, v1}, Lhdp/http/MyApp;->setMychannelInfo(Ljava/lang/String;I)V

    .line 674
    :cond_0
    sget-boolean v0, Lhdp/player/LivePlayer;->IsHuiBo:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v0, v0, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 675
    iget-object v0, p0, Lhdp/player/LivePlayer;->dbHelper:Lhdp/util/LiveDataHelper;

    iget-object v1, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v2, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    invoke-virtual {v0, v1, v2}, Lhdp/util/LiveDataHelper;->updateLastSoure(Lhdp/javabean/LiveChannelInfo;I)V

    .line 677
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 265
    invoke-super {p0}, Lhdp/player/BaseActivity;->onResume()V

    .line 266
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    .line 267
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1346
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1330
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1334
    iget-object v0, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->dismiss()V

    .line 1337
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayer;->channellist_Pop:Lhdp/player/LiveChannelList;

    iget-object v1, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v1, v1, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget v2, p0, Lhdp/player/LivePlayer;->channelIndex:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lhdp/player/LiveChannelList;->refreshView(Ljava/lang/String;II)V

    .line 1338
    iget-object v0, p0, Lhdp/player/LivePlayer;->channellist_Pop:Lhdp/player/LiveChannelList;

    iget-object v1, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4, v4}, Lhdp/player/LiveChannelList;->showAtLocation(Landroid/view/View;III)V

    .line 1339
    return v4
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lhdp/player/BaseActivity;->onStart()V

    .line 250
    iget-object v0, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v0, v0, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->vid:I

    invoke-direct {p0, v0, v1}, Lhdp/player/LivePlayer;->updateData(Ljava/lang/String;I)V

    .line 255
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayer;->channels:Ljava/util/ArrayList;

    iget v1, p0, Lhdp/player/LivePlayer;->channelIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/LiveChannelInfo;

    iput-object v0, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    .line 256
    iget-object v0, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v1, p0, Lhdp/player/LivePlayer;->channel_souces_id:I

    iput v1, v0, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 258
    sget-object v0, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    iget-object v1, p0, Lhdp/player/LivePlayer;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->num:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Lhdp/player/BaseActivity;->onStop()V

    .line 279
    iget-object v0, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lhdp/player/LivePlayer;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->dismiss()V

    .line 283
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    invoke-virtual {v0}, Lhdp/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lhdp/player/LivePlayer;->mVideoView:Lhdp/widget/VideoView;

    invoke-virtual {v0}, Lhdp/widget/VideoView;->stopPlayback()V

    .line 287
    :cond_1
    iget-object v0, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LivePlayer;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-object v0, p0, Lhdp/player/LivePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LivePlayer;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1317
    iget-object v0, p0, Lhdp/player/LivePlayer;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public singleKeyDown(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    const/high16 v2, 0x42700000    # 60.0f

    .line 1278
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x12c

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1279
    iget-object v0, p0, Lhdp/player/LivePlayer;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1281
    if-nez p1, :cond_1

    .line 1282
    iget v0, p0, Lhdp/player/LivePlayer;->tvback_num:I

    if-lez v0, :cond_0

    .line 1283
    invoke-virtual {p0}, Lhdp/player/LivePlayer;->Back_LiveNum()V

    .line 1292
    :goto_0
    return-void

    .line 1285
    :cond_0
    const-string v0, ""

    invoke-direct {p0, v0, v2}, Lhdp/player/LivePlayer;->TipTextShow(Ljava/lang/String;F)V

    goto :goto_0

    .line 1287
    :cond_1
    const v0, 0xf423f

    if-le p1, v0, :cond_2

    .line 1288
    const-string v0, ""

    invoke-direct {p0, v0, v2}, Lhdp/player/LivePlayer;->TipTextShow(Ljava/lang/String;F)V

    goto :goto_0

    .line 1290
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lhdp/player/LivePlayer;->TipTextShow(Ljava/lang/String;F)V

    goto :goto_0
.end method
