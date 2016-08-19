.class public Lhdp/player/LivePlayerS;
.super Lhdp/player/BaseActivity;
.source "LivePlayerS.java"

# interfaces
.implements Lio/vov/vitamio/MediaPlayer$OnPreparedListener;
.implements Lio/vov/vitamio/MediaPlayer$OnCompletionListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lhdp/player/BaseActivity$NumKeyClickListener;


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

.field private mVideoView:Lhdp/widget/SoftVideoView;

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

    .line 66
    invoke-direct {p0}, Lhdp/player/BaseActivity;-><init>()V

    .line 74
    const-string v0, "LivePlayerS"

    iput-object v0, p0, Lhdp/player/LivePlayerS;->TAG:Ljava/lang/String;

    .line 80
    iput v1, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    .line 81
    iput v1, p0, Lhdp/player/LivePlayerS;->channel_souces_id:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lhdp/player/LivePlayerS;->tvback_num:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    .line 90
    iput-object v2, p0, Lhdp/player/LivePlayerS;->channellist_Pop:Lhdp/player/LiveChannelList;

    .line 103
    iput-object v2, p0, Lhdp/player/LivePlayerS;->huibolist:[Ljava/lang/String;

    .line 107
    iput-boolean v1, p0, Lhdp/player/LivePlayerS;->IsOtherOk:Z

    .line 338
    const/4 v0, 0x1

    iput v0, p0, Lhdp/player/LivePlayerS;->step:I

    .line 631
    new-instance v0, Lhdp/player/LivePlayerS$1;

    invoke-direct {v0, p0}, Lhdp/player/LivePlayerS$1;-><init>(Lhdp/player/LivePlayerS;)V

    iput-object v0, p0, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    .line 700
    new-instance v0, Lhdp/player/LivePlayerS$2;

    invoke-direct {v0, p0}, Lhdp/player/LivePlayerS$2;-><init>(Lhdp/player/LivePlayerS;)V

    iput-object v0, p0, Lhdp/player/LivePlayerS;->runnable:Ljava/lang/Runnable;

    .line 783
    new-instance v0, Lhdp/player/LivePlayerS$3;

    invoke-direct {v0, p0}, Lhdp/player/LivePlayerS$3;-><init>(Lhdp/player/LivePlayerS;)V

    iput-object v0, p0, Lhdp/player/LivePlayerS;->runnable_huibo:Ljava/lang/Runnable;

    .line 801
    new-instance v0, Lhdp/player/LivePlayerS$4;

    invoke-direct {v0, p0}, Lhdp/player/LivePlayerS$4;-><init>(Lhdp/player/LivePlayerS;)V

    iput-object v0, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method private ChangeChannel(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 559
    invoke-static {}, Lhdp/http/MyApp;->getTurn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    iget v1, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    sub-int/2addr v1, p1

    iput v1, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    .line 565
    :goto_0
    iget v1, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    if-gez v1, :cond_0

    .line 566
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channellist_Pop:Lhdp/player/LiveChannelList;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lhdp/player/LiveChannelList;->changeList_onLive(I)V

    .line 567
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channellist_Pop:Lhdp/player/LiveChannelList;

    invoke-virtual {v1}, Lhdp/player/LiveChannelList;->getChannelsInfo()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    .line 568
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    .line 570
    :cond_0
    iget v1, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    iget-object v2, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 571
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channellist_Pop:Lhdp/player/LiveChannelList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lhdp/player/LiveChannelList;->changeList_onLive(I)V

    .line 572
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channellist_Pop:Lhdp/player/LiveChannelList;

    invoke-virtual {v1}, Lhdp/player/LiveChannelList;->getChannelsInfo()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    .line 573
    iput v3, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    .line 579
    :cond_1
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    iget v2, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdp/javabean/LiveChannelInfo;

    iput-object v1, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    .line 583
    iget-object v1, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 584
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 585
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 586
    iget-object v1, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 587
    return-void

    .line 562
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget v1, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    goto :goto_0
.end method

.method private ChangeSource(I)V
    .locals 4
    .param p1, "to"    # I

    .prologue
    .line 597
    sget-boolean v2, Lhdp/player/LivePlayerS;->IsHuiBo:Z

    if-eqz v2, :cond_1

    .line 599
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    add-int v0, v2, p1

    .line 601
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 602
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v3, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    invoke-virtual {v3}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 607
    :goto_0
    iget-object v2, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 629
    .end local v0    # "index":I
    :goto_1
    return-void

    .line 604
    .restart local v0    # "index":I
    :cond_0
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v3, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    invoke-virtual {v3}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v3

    rem-int v3, v0, v3

    iput v3, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    goto :goto_0

    .line 611
    .end local v0    # "index":I
    :cond_1
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    invoke-virtual {v2}, Lhdp/javabean/LiveChannelInfo;->getSourceNum()I

    move-result v1

    .line 613
    .local v1, "num":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 615
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    add-int v0, v2, p1

    .line 616
    .restart local v0    # "index":I
    if-gez v0, :cond_2

    .line 617
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    add-int/lit8 v3, v1, -0x1

    iput v3, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 622
    :goto_2
    iget-object v2, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 619
    :cond_2
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    rem-int v3, v0, v1

    iput v3, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    goto :goto_2

    .line 624
    .end local v0    # "index":I
    :cond_3
    const v2, 0x7f060035

    .line 625
    const/4 v3, 0x0

    .line 624
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 625
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private ClearView()V
    .locals 2

    .prologue
    .line 1385
    iget-object v0, p0, Lhdp/player/LivePlayerS;->welText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1387
    iget-object v0, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1391
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1392
    iget-object v0, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->dismiss()V

    .line 1394
    :cond_1
    iget-object v0, p0, Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;

    invoke-virtual {v0}, Lhdp/player/PlayerMenuContrl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1395
    iget-object v0, p0, Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;

    invoke-virtual {v0}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    .line 1398
    :cond_2
    iget-object v0, p0, Lhdp/player/LivePlayerS;->loading:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1399
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->loading:Landroid/widget/ProgressBar;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1400
    :cond_3
    return-void
.end method

.method private Init_LayoutParams()V
    .locals 4

    .prologue
    const/16 v3, 0x11

    const/4 v2, -0x2

    .line 212
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    .line 213
    iget-object v0, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    const v1, -0x32df8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v0, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 215
    iget-object v0, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 217
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    .line 218
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 219
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 220
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 221
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 222
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 223
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x14

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 224
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x19

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 225
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x38

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 229
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    .line 230
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 231
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 232
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 233
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 234
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 235
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 236
    const v1, 0x7f030018

    const/4 v2, 0x0

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lhdp/player/LivePlayerS;->loading:Landroid/widget/ProgressBar;

    .line 238
    return-void
.end method

.method private P2pSet()V
    .locals 3

    .prologue
    .line 680
    iget-object v1, p0, Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;

    const-string v2, "p2p:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lhdp/player/LivePlayerS;->IsP2P:Z

    .line 682
    iget-boolean v1, p0, Lhdp/player/LivePlayerS;->IsP2P:Z

    if-eqz v1, :cond_0

    .line 683
    invoke-static {}, Lhdp/http/MyApp;->startP2p()V

    .line 686
    :cond_0
    iget-object v1, p0, Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;

    const-string v2, "letv0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 692
    .local v0, "is_Letv":Z
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v1, v1, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    const-string v2, "\u4e50\u89c6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 693
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhdp/player/LivePlayerS;->IsLeTv:Z

    .line 698
    :goto_0
    return-void

    .line 695
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lhdp/player/LivePlayerS;->IsLeTv:Z

    goto :goto_0
.end method

.method private TipTextShow(Ljava/lang/String;F)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "size"    # F

    .prologue
    const/16 v3, 0xa

    .line 517
    iget-object v0, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v0, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 520
    iget-object v0, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 521
    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    iget-object v2, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    :cond_0
    :goto_0
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 531
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 526
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    iget-object v2, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private TipTextShowHui()V
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    const v1, 0x7f06007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 538
    iget-object v0, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 539
    iget-object v0, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 540
    iget-object v0, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 541
    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    iget-object v2, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    :cond_0
    :goto_0
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 546
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    iget-object v2, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lhdp/player/LivePlayerS;)Lhdp/widget/SoftVideoView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    return-object v0
.end method

.method static synthetic access$1(Lhdp/player/LivePlayerS;)V
    .locals 0

    .prologue
    .line 1383
    invoke-direct {p0}, Lhdp/player/LivePlayerS;->ClearView()V

    return-void
.end method

.method static synthetic access$10(Lhdp/player/LivePlayerS;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0, p1, p2}, Lhdp/player/LivePlayerS;->updateData(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$11(Lhdp/player/LivePlayerS;I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lhdp/player/LivePlayerS;->tvback_num:I

    return-void
.end method

.method static synthetic access$12(Lhdp/player/LivePlayerS;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lhdp/player/LivePlayerS;->tvback_num:I

    return v0
.end method

.method static synthetic access$13(Lhdp/player/LivePlayerS;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lhdp/player/LivePlayerS;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$15(Lhdp/player/LivePlayerS;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lhdp/player/LivePlayerS;->video_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lhdp/player/LivePlayerS;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lhdp/player/LivePlayerS;->video_img:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$17(Lhdp/player/LivePlayerS;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lhdp/player/LivePlayerS;->channel_souces_id:I

    return-void
.end method

.method static synthetic access$18(Lhdp/player/LivePlayerS;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lhdp/player/LivePlayerS;->channel_souces_id:I

    return v0
.end method

.method static synthetic access$19(Lhdp/player/LivePlayerS;)Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lhdp/player/LivePlayerS;->IsOtherOk:Z

    return v0
.end method

.method static synthetic access$2(Lhdp/player/LivePlayerS;)Lhdp/player/PlayerMenuContrl;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;

    return-object v0
.end method

.method static synthetic access$20(Lhdp/player/LivePlayerS;Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lhdp/player/LivePlayerS;->IsOtherOk:Z

    return-void
.end method

.method static synthetic access$21(Lhdp/player/LivePlayerS;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lhdp/player/LivePlayerS;->welText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$22(Lhdp/player/LivePlayerS;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lhdp/player/LivePlayerS;->loading:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$23(Lhdp/player/LivePlayerS;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_loading:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$24(Lhdp/player/LivePlayerS;I)V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lhdp/player/LivePlayerS;->ChangeChannel(I)V

    return-void
.end method

.method static synthetic access$25(Lhdp/player/LivePlayerS;I)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lhdp/player/LivePlayerS;->ChangeSource(I)V

    return-void
.end method

.method static synthetic access$26(Lhdp/player/LivePlayerS;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lhdp/player/LivePlayerS;->exit_download_pb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$27(Lhdp/player/LivePlayerS;Lhdp/player/PlayerMenuContrl;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;

    return-void
.end method

.method static synthetic access$28(Lhdp/player/LivePlayerS;)V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Lhdp/player/LivePlayerS;->call_openmenu()V

    return-void
.end method

.method static synthetic access$3(Lhdp/player/LivePlayerS;)Lhdp/javabean/LiveChannelInfo;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    return-object v0
.end method

.method static synthetic access$4(Lhdp/player/LivePlayerS;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lhdp/player/LivePlayerS;)V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Lhdp/player/LivePlayerS;->P2pSet()V

    return-void
.end method

.method static synthetic access$6(Lhdp/player/LivePlayerS;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lhdp/player/LivePlayerS;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lhdp/player/LivePlayerS;->LiveUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lhdp/player/LivePlayerS;)Lhdp/player/LiveControl;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    return-object v0
.end method

.method static synthetic access$9(Lhdp/player/LivePlayerS;Lhdp/javabean/LiveChannelInfo;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    return-void
.end method

.method private call_openmenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 478
    iget-object v0, p0, Lhdp/player/LivePlayerS;->loading:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->loading:Landroid/widget/ProgressBar;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    invoke-virtual {v0, v1}, Lhdp/player/PlayerMenuContrl;->SetState(Lhdp/javabean/LiveChannelInfo;)V

    .line 482
    iget-object v0, p0, Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Lhdp/player/PlayerMenuContrl;->showAtLocation(Landroid/view/View;III)V

    .line 483
    return-void
.end method

.method private createExitDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1055
    new-instance v2, Landroid/app/Dialog;

    const v6, 0x7f070004

    invoke-direct {v2, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1056
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03000a

    .line 1057
    const/4 v8, 0x0

    .line 1056
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1058
    .local v5, "root":Landroid/view/View;
    const v6, 0x7f0a002f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    sput-object v6, Lhdp/http/MyApp;->bgImg:Landroid/widget/ImageView;

    .line 1060
    const v6, 0x7f0a0030

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 1059
    iput-object v6, p0, Lhdp/player/LivePlayerS;->exit_download_pb:Landroid/widget/ProgressBar;

    .line 1061
    const v6, 0x7f0a002d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1062
    .local v4, "playBtn":Landroid/widget/Button;
    const v6, 0x7f0a002e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1063
    .local v3, "exitBtn":Landroid/widget/Button;
    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    .line 1065
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->getFilesDir()Ljava/io/File;

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

    .line 1067
    .local v0, "ExitTuPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1068
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1069
    .local v1, "bm":Landroid/graphics/Bitmap;
    sget-object v6, Lhdp/http/MyApp;->bgImg:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1072
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v6, Lhdp/http/MyApp;->bgImg:Landroid/widget/ImageView;

    new-instance v7, Lhdp/player/LivePlayerS$5;

    invoke-direct {v7, p0}, Lhdp/player/LivePlayerS$5;-><init>(Lhdp/player/LivePlayerS;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    new-instance v6, Lhdp/player/LivePlayerS$6;

    invoke-direct {v6, p0, v2}, Lhdp/player/LivePlayerS$6;-><init>(Lhdp/player/LivePlayerS;Landroid/app/Dialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    new-instance v6, Lhdp/player/LivePlayerS$7;

    invoke-direct {v6, p0, v2}, Lhdp/player/LivePlayerS$7;-><init>(Lhdp/player/LivePlayerS;Landroid/app/Dialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1109
    return-object v2
.end method

.method private initController()V
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0, p0}, Lhdp/player/LivePlayerS;->createExitDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/LivePlayerS;->Exit_dialog:Landroid/app/Dialog;

    .line 245
    new-instance v0, Lhdp/player/PlayerMenuContrl;

    invoke-direct {v0, p0}, Lhdp/player/PlayerMenuContrl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;

    .line 246
    new-instance v0, Lhdp/player/LiveControl;

    invoke-direct {v0, p0}, Lhdp/player/LiveControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    .line 247
    new-instance v0, Lhdp/player/LiveChannelList;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lhdp/player/LiveChannelList;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lhdp/player/LivePlayerS;->channellist_Pop:Lhdp/player/LiveChannelList;

    .line 248
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 200
    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "tid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "tid":Ljava/lang/String;
    const-string v3, "vid"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 204
    .local v2, "vid":I
    const-string v3, "lastSource"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lhdp/player/LivePlayerS;->channel_souces_id:I

    .line 206
    invoke-direct {p0, v1, v2}, Lhdp/player/LivePlayerS;->updateData(Ljava/lang/String;I)V

    .line 208
    return-void
.end method

.method private initScale()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    invoke-virtual {v0}, Lhdp/widget/SoftVideoView;->selectScales()V

    .line 193
    return-void
.end method

.method private updateData(Ljava/lang/String;I)V
    .locals 3
    .param p1, "tid"    # Ljava/lang/String;
    .param p2, "vid"    # I

    .prologue
    .line 252
    const/4 v1, 0x0

    iput v1, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    .line 254
    iget-object v1, p0, Lhdp/player/LivePlayerS;->dbHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v1, p1}, Lhdp/util/LiveDataHelper;->getChannelListByTid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    .line 256
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    :cond_0
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channellist_Pop:Lhdp/player/LiveChannelList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lhdp/player/LiveChannelList;->changeList_onLive(I)V

    .line 259
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channellist_Pop:Lhdp/player/LiveChannelList;

    invoke-virtual {v1}, Lhdp/player/LiveChannelList;->getChannelsInfo()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 267
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdp/javabean/LiveChannelInfo;

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->vid:I

    if-ne v1, p2, :cond_3

    .line 268
    iput v0, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    goto :goto_0

    .line 265
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public Back_LiveNum()V
    .locals 5

    .prologue
    .line 1252
    iget v2, p0, Lhdp/player/LivePlayerS;->tvback_num:I

    if-lez v2, :cond_1

    .line 1253
    sget-object v2, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    iget v3, p0, Lhdp/player/LivePlayerS;->tvback_num:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1254
    iget-object v2, p0, Lhdp/player/LivePlayerS;->dbHelper:Lhdp/util/LiveDataHelper;

    iget v3, p0, Lhdp/player/LivePlayerS;->tvback_num:I

    invoke-virtual {v2, v3}, Lhdp/util/LiveDataHelper;->getChannelInfoByNum(I)Lhdp/javabean/LiveChannelInfo;

    move-result-object v2

    iput-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    .line 1255
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    iget v3, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhdp/javabean/LiveChannelInfo;

    iget v0, v2, Lhdp/javabean/LiveChannelInfo;->vid:I

    .line 1256
    .local v0, "tempvid":I
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v2, v2, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v3, v3, Lhdp/javabean/LiveChannelInfo;->vid:I

    invoke-direct {p0, v2, v3}, Lhdp/player/LivePlayerS;->updateData(Ljava/lang/String;I)V

    .line 1258
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    iget v3, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhdp/javabean/LiveChannelInfo;

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->vid:I

    if-eq v2, v0, :cond_0

    .line 1259
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v3, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v3, v3, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    invoke-virtual {v2, v3}, Lhdp/javabean/LiveChannelInfo;->getSourceUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 1260
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1263
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    sget-object v2, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1264
    sget-object v2, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    .line 1265
    sget-object v3, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1264
    iput v2, p0, Lhdp/player/LivePlayerS;->tvback_num:I

    .line 1268
    .end local v0    # "tempvid":I
    :cond_1
    return-void
.end method

.method protected changScale()V
    .locals 3

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 494
    .local v0, "tv_show_text":Ljava/lang/String;
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quanping"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    const v1, 0x7f06004b

    invoke-virtual {p0, v1}, Lhdp/player/LivePlayerS;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    :cond_0
    :goto_0
    iget-object v1, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    invoke-virtual {v1}, Lhdp/widget/SoftVideoView;->selectScales()V

    .line 505
    iget-object v1, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x12c

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 506
    iget-object v1, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 507
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-direct {p0, v0, v1}, Lhdp/player/LivePlayerS;->TipTextShow(Ljava/lang/String;F)V

    .line 508
    return-void

    .line 496
    :cond_1
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4X3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    const-string v0, "4:3"

    .line 498
    goto :goto_0

    :cond_2
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v1

    const-string v2, "16X9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 499
    const-string v0, "16:9"

    .line 500
    goto :goto_0

    :cond_3
    invoke-static {}, Lhdp/http/MyApp;->getTvScale()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yuanshi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    const v1, 0x7f06004c

    invoke-virtual {p0, v1}, Lhdp/player/LivePlayerS;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public delExitAPK()V
    .locals 3

    .prologue
    .line 1114
    sget-object v1, Lhdp/http/MyApp;->app_save_adress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lhdp/http/MyApp;->appname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1115
    new-instance v0, Ljava/io/File;

    sget-object v1, Lhdp/http/MyApp;->app_save_adress:Ljava/lang/String;

    sget-object v2, Lhdp/http/MyApp;->appname:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    .local v0, "app_save_file":Ljava/io/File;
    iget-object v1, p0, Lhdp/player/LivePlayerS;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1119
    iget-object v1, p0, Lhdp/player/LivePlayerS;->TAG:Ljava/lang/String;

    const-string v2, "app_save_file is delete!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    .end local v0    # "app_save_file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public exitImgLink()V
    .locals 6

    .prologue
    .line 1128
    sget-object v4, Lhdp/http/MyApp;->ExitPicUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lhdp/http/MyApp;->ExitPicUrl:Ljava/lang/String;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1131
    sget-object v4, Lhdp/http/MyApp;->ExitPicUrl:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1132
    .local v1, "i_url":I
    sget-object v4, Lhdp/http/MyApp;->ExitPicUrl:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lhdp/http/MyApp;->appname:Ljava/lang/String;

    .line 1134
    const-string v4, "Net_App"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lhdp/player/LivePlayerS;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 1135
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1134
    sput-object v4, Lhdp/http/MyApp;->app_save_adress:Ljava/lang/String;

    .line 1137
    new-instance v0, Ljava/io/File;

    sget-object v4, Lhdp/http/MyApp;->app_save_adress:Ljava/lang/String;

    sget-object v5, Lhdp/http/MyApp;->appname:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    .local v0, "app_save_file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1139
    iget-object v4, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1206
    .end local v0    # "app_save_file":Ljava/io/File;
    .end local v1    # "i_url":I
    :goto_0
    return-void

    .line 1141
    .restart local v0    # "app_save_file":Ljava/io/File;
    .restart local v1    # "i_url":I
    :cond_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lhdp/player/LivePlayerS$8;

    invoke-direct {v5, p0}, Lhdp/player/LivePlayerS$8;-><init>(Lhdp/player/LivePlayerS;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1195
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1199
    .end local v0    # "app_save_file":Ljava/io/File;
    .end local v1    # "i_url":I
    :cond_1
    :try_start_0
    sget-object v4, Lhdp/http/MyApp;->ExitPicUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1200
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1201
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lhdp/player/LivePlayerS;->startActivity(Landroid/content/Intent;)V

    .line 1202
    iget-object v4, p0, Lhdp/player/LivePlayerS;->Exit_dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1203
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
    .line 1298
    const v2, 0xf423f

    if-ge p1, v2, :cond_0

    .line 1300
    iget-object v2, p0, Lhdp/player/LivePlayerS;->dbHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v2, p1}, Lhdp/util/LiveDataHelper;->getChannelInfoByNum(I)Lhdp/javabean/LiveChannelInfo;

    move-result-object v0

    .line 1302
    .local v0, "live":Lhdp/javabean/LiveChannelInfo;
    if-eqz v0, :cond_0

    .line 1304
    iget-object v2, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1305
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1306
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1307
    iget-object v2, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1311
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
    .line 1210
    invoke-super {p0, p1, p2, p3}, Lhdp/player/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1212
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1214
    const-string v0, "array"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1215
    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->show()V

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lhdp/player/LivePlayerS;->IsHuiBo:Z

    .line 1223
    const-string v0, "array"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/LivePlayerS;->huibolist:[Ljava/lang/String;

    .line 1225
    iget-object v0, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->huibolist:[Ljava/lang/String;

    iput-object v1, v0, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    .line 1226
    iget-object v0, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    const/4 v1, 0x0

    iput v1, v0, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 1228
    iget-object v0, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    const-string v1, "epg"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhdp/player/LiveControl;->HuiBoTv(Ljava/lang/String;)V

    .line 1230
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1232
    invoke-direct {p0}, Lhdp/player/LivePlayerS;->TipTextShowHui()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->dismiss()V

    .line 1242
    :cond_0
    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1243
    iget-object v0, p0, Lhdp/player/LivePlayerS;->Exit_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1245
    :cond_1
    return-void
.end method

.method public onCompletion(Lio/vov/vitamio/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    .line 1405
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1406
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x4

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 132
    invoke-super {p0, p1}, Lhdp/player/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    new-instance v3, Lhdp/widget/SoftVideoView;

    iget-object v4, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lhdp/widget/SoftVideoView;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    .line 135
    iget-object v3, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    invoke-virtual {v3, p0}, Lhdp/widget/SoftVideoView;->setOnPreparedListener(Lio/vov/vitamio/MediaPlayer$OnPreparedListener;)V

    .line 136
    iget-object v3, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    invoke-virtual {v3, p0}, Lhdp/widget/SoftVideoView;->setOnCompletionListener(Lio/vov/vitamio/MediaPlayer$OnCompletionListener;)V

    .line 138
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lhdp/player/LivePlayerS;->video_img:Landroid/widget/ImageView;

    .line 139
    iget-object v3, p0, Lhdp/player/LivePlayerS;->video_img:Landroid/widget/ImageView;

    const v4, 0x7f02006b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 140
    iget-object v3, p0, Lhdp/player/LivePlayerS;->video_img:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lhdp/player/LivePlayerS;->video_tv:Landroid/widget/TextView;

    .line 143
    iget-object v3, p0, Lhdp/player/LivePlayerS;->video_tv:Landroid/widget/TextView;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 144
    iget-object v3, p0, Lhdp/player/LivePlayerS;->video_tv:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 145
    iget-object v3, p0, Lhdp/player/LivePlayerS;->video_tv:Landroid/widget/TextView;

    const/16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object v3, p0, Lhdp/player/LivePlayerS;->video_tv:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 149
    .local v1, "layout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v2, "lytp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 151
    iget-object v3, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v3, p0, Lhdp/player/LivePlayerS;->video_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v3, p0, Lhdp/player/LivePlayerS;->video_tv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 155
    new-instance v3, Lhdp/widget/MarqueeTextView;

    invoke-direct {v3, p0}, Lhdp/widget/MarqueeTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lhdp/player/LivePlayerS;->welText:Landroid/widget/TextView;

    .line 156
    iget-object v3, p0, Lhdp/player/LivePlayerS;->welText:Landroid/widget/TextView;

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

    .line 157
    iget-object v3, p0, Lhdp/player/LivePlayerS;->welText:Landroid/widget/TextView;

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 158
    iget-object v3, p0, Lhdp/player/LivePlayerS;->welText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 159
    iget-object v3, p0, Lhdp/player/LivePlayerS;->welText:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 160
    iget-object v3, p0, Lhdp/player/LivePlayerS;->welText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 161
    iget-object v3, p0, Lhdp/player/LivePlayerS;->welText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f080000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v3, p0, Lhdp/player/LivePlayerS;->welText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 163
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    .line 164
    const/16 v4, 0x30

    .line 163
    invoke-direct {v0, v6, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 165
    .local v0, "fptxt":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lhdp/player/LivePlayerS;->welText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-virtual {p0, v1}, Lhdp/player/LivePlayerS;->setContentView(Landroid/view/View;)V

    .line 169
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lhdp/player/LivePlayerS;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lhdp/player/LivePlayerS;->wm:Landroid/view/WindowManager;

    .line 170
    invoke-static {p0}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v3

    iput-object v3, p0, Lhdp/player/LivePlayerS;->dbHelper:Lhdp/util/LiveDataHelper;

    .line 171
    new-instance v3, Landroid/view/GestureDetector;

    invoke-direct {v3, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lhdp/player/LivePlayerS;->detector:Landroid/view/GestureDetector;

    .line 173
    iget-object v3, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    sget-wide v5, Lhdp/http/MyApp;->SHowTime:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    invoke-virtual {p0, p0}, Lhdp/player/LivePlayerS;->setOnNumKeyClickListener(Lhdp/player/BaseActivity$NumKeyClickListener;)V

    .line 177
    invoke-direct {p0}, Lhdp/player/LivePlayerS;->Init_LayoutParams()V

    .line 178
    invoke-direct {p0}, Lhdp/player/LivePlayerS;->initController()V

    .line 179
    invoke-direct {p0}, Lhdp/player/LivePlayerS;->initData()V

    .line 181
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lhdp/player/LivePlayerS;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lhdp/player/LivePlayerS;->mAudioManager:Landroid/media/AudioManager;

    .line 182
    iget-object v3, p0, Lhdp/player/LivePlayerS;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    iput v3, p0, Lhdp/player/LivePlayerS;->maxvol:I

    .line 184
    iget v3, p0, Lhdp/player/LivePlayerS;->maxvol:I

    div-int/lit8 v3, v3, 0xa

    iput v3, p0, Lhdp/player/LivePlayerS;->step:I

    .line 185
    iget v3, p0, Lhdp/player/LivePlayerS;->step:I

    if-nez v3, :cond_0

    .line 186
    iput v7, p0, Lhdp/player/LivePlayerS;->step:I

    .line 189
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Lhdp/player/BaseActivity;->onDestroy()V

    .line 323
    invoke-direct {p0}, Lhdp/player/LivePlayerS;->ClearView()V

    .line 325
    iget-object v0, p0, Lhdp/player/LivePlayerS;->hdpget:Lcom/hdp/HdpGet;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lhdp/player/LivePlayerS;->hdpget:Lcom/hdp/HdpGet;

    invoke-interface {v0}, Lcom/hdp/HdpGet;->StopGet()V

    .line 329
    :cond_0
    const-string v0, "onde"

    const-string v1, "live_ondes"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    invoke-virtual {v0}, Lhdp/widget/SoftVideoView;->stopPlayback()V

    .line 334
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1321
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

    .line 1369
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 1370
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 1371
    .local v1, "y":F
    cmpl-float v2, v0, v4

    if-lez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 1372
    invoke-direct {p0, v5}, Lhdp/player/LivePlayerS;->ChangeSource(I)V

    .line 1380
    :cond_0
    :goto_0
    return v5

    .line 1373
    :cond_1
    cmpg-float v2, v0, v6

    if-gez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 1374
    invoke-direct {p0, v7}, Lhdp/player/LivePlayerS;->ChangeSource(I)V

    goto :goto_0

    .line 1375
    :cond_2
    cmpl-float v2, v1, v4

    if-lez v2, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 1376
    invoke-direct {p0, v5}, Lhdp/player/LivePlayerS;->ChangeChannel(I)V

    goto :goto_0

    .line 1377
    :cond_3
    cmpg-float v2, v1, v6

    if-gez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 1378
    invoke-direct {p0, v7}, Lhdp/player/LivePlayerS;->ChangeChannel(I)V

    goto :goto_0
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

    .line 342
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 343
    const/16 v2, 0x17

    if-eq p1, v2, :cond_0

    const/16 v2, 0x42

    if-ne p1, v2, :cond_2

    .line 344
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 346
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channellist_Pop:Lhdp/player/LiveChannelList;

    .line 347
    iget-object v3, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v3, v3, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget v4, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    invoke-virtual {v2, v3, v4, v1}, Lhdp/player/LiveChannelList;->refreshView(Ljava/lang/String;II)V

    .line 349
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channellist_Pop:Lhdp/player/LiveChannelList;

    iget-object v3, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    invoke-virtual {v2, v3, v6, v5, v5}, Lhdp/player/LiveChannelList;->showAtLocation(Landroid/view/View;III)V

    .line 351
    iget-object v2, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    iget-object v2, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->dismiss()V

    .line 471
    :cond_1
    :goto_0
    return v1

    .line 355
    :cond_2
    const/16 v2, 0x52

    if-ne p1, v2, :cond_6

    .line 357
    iget-object v1, p0, Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;

    invoke-virtual {v1}, Lhdp/player/PlayerMenuContrl;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 358
    iget-object v1, p0, Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;

    invoke-virtual {v1}, Lhdp/player/PlayerMenuContrl;->dismiss()V

    .line 471
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lhdp/player/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 360
    :cond_4
    iget-object v1, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v1}, Lhdp/player/LiveControl;->isShown()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 361
    iget-object v1, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v1}, Lhdp/player/LiveControl;->dismiss()V

    .line 363
    :cond_5
    new-instance v1, Lhdp/player/PlayerMenuContrl;

    invoke-direct {v1, p0}, Lhdp/player/PlayerMenuContrl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhdp/player/LivePlayerS;->menuContrl:Lhdp/player/PlayerMenuContrl;

    .line 364
    invoke-direct {p0}, Lhdp/player/LivePlayerS;->call_openmenu()V

    goto :goto_1

    .line 366
    :cond_6
    const/16 v2, 0x13

    if-ne p1, v2, :cond_7

    .line 367
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 369
    invoke-direct {p0, v1}, Lhdp/player/LivePlayerS;->ChangeChannel(I)V

    goto :goto_0

    .line 372
    :cond_7
    const/16 v2, 0x14

    if-ne p1, v2, :cond_8

    .line 373
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 375
    invoke-direct {p0, v3}, Lhdp/player/LivePlayerS;->ChangeChannel(I)V

    goto :goto_0

    .line 378
    :cond_8
    const/16 v2, 0x15

    if-ne p1, v2, :cond_d

    .line 379
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_d

    .line 380
    invoke-static {}, Lhdp/http/MyApp;->getVolSet()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 381
    iget-object v2, p0, Lhdp/player/LivePlayerS;->mAudioManager:Landroid/media/AudioManager;

    .line 382
    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 383
    .local v0, "currentvol":I
    iget v2, p0, Lhdp/player/LivePlayerS;->step:I

    sub-int/2addr v0, v2

    .line 384
    if-gtz v0, :cond_9

    .line 385
    const/4 v0, 0x0

    .line 387
    :cond_9
    iget-object v2, p0, Lhdp/player/LivePlayerS;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 390
    .end local v0    # "currentvol":I
    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 391
    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 392
    iget-object v2, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->isShown()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 395
    invoke-static {}, Lhdp/util/AppUtils;->isFastDoubleClick()Z

    move-result v2

    if-nez v2, :cond_b

    .line 397
    invoke-direct {p0, v3}, Lhdp/player/LivePlayerS;->ChangeSource(I)V

    goto/16 :goto_0

    .line 400
    :cond_b
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 405
    :cond_c
    iget-object v2, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->show()V

    goto/16 :goto_0

    .line 411
    :cond_d
    const/16 v2, 0x16

    if-ne p1, v2, :cond_12

    .line 412
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_12

    .line 413
    invoke-static {}, Lhdp/http/MyApp;->getVolSet()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 414
    iget-object v2, p0, Lhdp/player/LivePlayerS;->mAudioManager:Landroid/media/AudioManager;

    .line 415
    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 416
    .restart local v0    # "currentvol":I
    iget v2, p0, Lhdp/player/LivePlayerS;->step:I

    add-int/2addr v0, v2

    .line 417
    iget v2, p0, Lhdp/player/LivePlayerS;->maxvol:I

    if-lt v0, v2, :cond_e

    .line 418
    iget v0, p0, Lhdp/player/LivePlayerS;->maxvol:I

    .line 420
    :cond_e
    iget-object v2, p0, Lhdp/player/LivePlayerS;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 423
    .end local v0    # "currentvol":I
    :cond_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 424
    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 425
    iget-object v2, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->isShown()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 428
    invoke-static {}, Lhdp/util/AppUtils;->isFastDoubleClick()Z

    move-result v2

    if-nez v2, :cond_10

    .line 429
    const-string v2, "connor"

    const-string v3, "change source!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0, v1}, Lhdp/player/LivePlayerS;->ChangeSource(I)V

    goto/16 :goto_0

    .line 433
    :cond_10
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 438
    :cond_11
    iget-object v2, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->show()V

    goto/16 :goto_0

    .line 444
    :cond_12
    const/4 v2, 0x7

    if-ne p1, v2, :cond_13

    .line 446
    iget-object v2, p0, Lhdp/player/LivePlayerS;->tipText:Landroid/widget/TextView;

    if-nez v2, :cond_3

    .line 448
    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->Back_LiveNum()V

    goto/16 :goto_0

    .line 453
    :cond_13
    const/16 v2, 0xb7

    if-eq p1, v2, :cond_14

    const/16 v2, 0x11

    if-ne p1, v2, :cond_15

    .line 454
    :cond_14
    iget-object v2, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 455
    iget-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    invoke-virtual {p0, p0, v2}, Lhdp/player/LivePlayerS;->favCurrentChannel(Landroid/content/Context;Lhdp/javabean/LiveChannelInfo;)V

    goto/16 :goto_0

    .line 458
    :cond_15
    const/16 v2, 0xb8

    if-eq p1, v2, :cond_16

    const/16 v2, 0x12

    if-ne p1, v2, :cond_18

    .line 459
    :cond_16
    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 460
    iget-object v2, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->isShown()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 461
    iget-object v2, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->dismiss()V

    goto/16 :goto_0

    .line 463
    :cond_17
    iget-object v2, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v2}, Lhdp/player/LiveControl;->show()V

    goto/16 :goto_0

    .line 467
    :cond_18
    const/16 v1, 0xb9

    if-ne p1, v1, :cond_3

    .line 468
    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->changScale()V

    goto/16 :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1350
    iget-object v1, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v1, v1, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v1, v1, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1352
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lhdp/player/HuiboList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1353
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "huibo"

    iget-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v2, v2, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    const-string v1, "type"

    iget-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v2, v2, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1355
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lhdp/player/LivePlayerS;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1363
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1360
    iget-object v1, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v1}, Lhdp/player/LiveControl;->show()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 299
    invoke-super {p0}, Lhdp/player/BaseActivity;->onPause()V

    .line 300
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V

    .line 301
    return-void
.end method

.method public onPrepared(Lio/vov/vitamio/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Lio/vov/vitamio/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 662
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    invoke-virtual {v0}, Lhdp/widget/SoftVideoView;->start()V

    .line 663
    invoke-direct {p0}, Lhdp/player/LivePlayerS;->initScale()V

    .line 667
    iget-object v0, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhdp/player/LiveControl;->setState(I)V

    .line 669
    iget-object v0, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v0, v0, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    iget-object v0, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v0, v0, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v1, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->vid:I

    invoke-static {v0, v1}, Lhdp/http/MyApp;->setMychannelInfo(Ljava/lang/String;I)V

    .line 673
    :cond_0
    sget-boolean v0, Lhdp/player/LivePlayerS;->IsHuiBo:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v0, v0, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 674
    iget-object v0, p0, Lhdp/player/LivePlayerS;->dbHelper:Lhdp/util/LiveDataHelper;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v2, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v2, v2, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    invoke-virtual {v0, v1, v2}, Lhdp/util/LiveDataHelper;->updateLastSoure(Lhdp/javabean/LiveChannelInfo;I)V

    .line 676
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Lhdp/player/BaseActivity;->onResume()V

    .line 294
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    .line 295
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1344
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1328
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1332
    iget-object v0, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->dismiss()V

    .line 1335
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayerS;->channellist_Pop:Lhdp/player/LiveChannelList;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v1, v1, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget v2, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lhdp/player/LiveChannelList;->refreshView(Ljava/lang/String;II)V

    .line 1336
    iget-object v0, p0, Lhdp/player/LivePlayerS;->channellist_Pop:Lhdp/player/LiveChannelList;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4, v4}, Lhdp/player/LiveChannelList;->showAtLocation(Landroid/view/View;III)V

    .line 1337
    return v4
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Lhdp/player/BaseActivity;->onStart()V

    .line 281
    iget-object v0, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget-object v0, v0, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->vid:I

    invoke-direct {p0, v0, v1}, Lhdp/player/LivePlayerS;->updateData(Ljava/lang/String;I)V

    .line 286
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayerS;->channels:Ljava/util/ArrayList;

    iget v1, p0, Lhdp/player/LivePlayerS;->channelIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/LiveChannelInfo;

    iput-object v0, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    .line 287
    iget-object v0, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v1, p0, Lhdp/player/LivePlayerS;->channel_souces_id:I

    iput v1, v0, Lhdp/javabean/LiveChannelInfo;->lastSource:I

    .line 288
    sget-object v0, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->channelInfo:Lhdp/javabean/LiveChannelInfo;

    iget v1, v1, Lhdp/javabean/LiveChannelInfo;->num:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0}, Lhdp/player/BaseActivity;->onStop()V

    .line 307
    iget-object v0, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lhdp/player/LivePlayerS;->control:Lhdp/player/LiveControl;

    invoke-virtual {v0}, Lhdp/player/LiveControl;->dismiss()V

    .line 311
    :cond_0
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    invoke-virtual {v0}, Lhdp/widget/SoftVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mVideoView:Lhdp/widget/SoftVideoView;

    invoke-virtual {v0}, Lhdp/widget/SoftVideoView;->stopPlayback()V

    .line 315
    :cond_1
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    iget-object v0, p0, Lhdp/player/LivePlayerS;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhdp/player/LivePlayerS;->runnextsource:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1315
    iget-object v0, p0, Lhdp/player/LivePlayerS;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public singleKeyDown(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    const/high16 v2, 0x42700000    # 60.0f

    .line 1276
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x12c

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1277
    iget-object v0, p0, Lhdp/player/LivePlayerS;->wm_layout_tiptext:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1279
    if-nez p1, :cond_1

    .line 1280
    iget v0, p0, Lhdp/player/LivePlayerS;->tvback_num:I

    if-lez v0, :cond_0

    .line 1281
    invoke-virtual {p0}, Lhdp/player/LivePlayerS;->Back_LiveNum()V

    .line 1290
    :goto_0
    return-void

    .line 1283
    :cond_0
    const-string v0, ""

    invoke-direct {p0, v0, v2}, Lhdp/player/LivePlayerS;->TipTextShow(Ljava/lang/String;F)V

    goto :goto_0

    .line 1285
    :cond_1
    const v0, 0xf423f

    if-le p1, v0, :cond_2

    .line 1286
    const-string v0, ""

    invoke-direct {p0, v0, v2}, Lhdp/player/LivePlayerS;->TipTextShow(Ljava/lang/String;F)V

    goto :goto_0

    .line 1288
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lhdp/player/LivePlayerS;->TipTextShow(Ljava/lang/String;F)V

    goto :goto_0
.end method
