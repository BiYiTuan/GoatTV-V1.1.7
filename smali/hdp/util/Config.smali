.class public Lhdp/util/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/util/Config$CpuType;
    }
.end annotation


# static fields
.field public static final DELEL_CURRENT_CHANNELID:Ljava/lang/String; = "DELEL_CURRENT_CHANNELID"

.field public static final HAS_INI_ADTVBUS:Ljava/lang/String; = "HAS_INI_ADTVBUS"

.field public static final KEY_LASTTEST_P2P:Ljava/lang/String; = "KEY_LASTTEST_P2P"

.field public static LAST_CHANNEL_LATEST:Ljava/lang/String; = null

.field public static final SHOW_ADS_CHANNELS:Ljava/lang/String; = "SHOW_ADS_CHANNELS"

.field private static config:Lhdp/util/Config;


# instance fields
.field private KEY_CPU_TYPE:Ljava/lang/String;

.field private KEY_PLAYER_DECODE_TYPE:Ljava/lang/String;

.field private KEY_PREFERENCE_UPDATE_FLAG:Ljava/lang/String;

.field private PREFS_NAME:Ljava/lang/String;

.field private autoChangeChannelWhenPlayFail:Z

.field cacheVod:Landroid/content/SharedPreferences;

.field private cpuType:Ljava/lang/String;

.field private preferenceUpdateFlag:I

.field private sp:Landroid/content/SharedPreferences;

.field private videoSourceTryTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 472
    const-string v0, "LAST_CHANNEL_LATEST"

    sput-object v0, Lhdp/util/Config;->LAST_CHANNEL_LATEST:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "settingSPF"

    iput-object v0, p0, Lhdp/util/Config;->PREFS_NAME:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    .line 37
    const-string v0, "cpu_type"

    iput-object v0, p0, Lhdp/util/Config;->KEY_CPU_TYPE:Ljava/lang/String;

    .line 40
    const-string v0, "player_decode_type"

    iput-object v0, p0, Lhdp/util/Config;->KEY_PLAYER_DECODE_TYPE:Ljava/lang/String;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lhdp/util/Config;->preferenceUpdateFlag:I

    .line 43
    const-string v0, "preference_update_flag"

    iput-object v0, p0, Lhdp/util/Config;->KEY_PREFERENCE_UPDATE_FLAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lhdp/util/Config;->videoSourceTryTime:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/util/Config;->autoChangeChannelWhenPlayFail:Z

    .line 107
    iput-object v1, p0, Lhdp/util/Config;->cacheVod:Landroid/content/SharedPreferences;

    .line 56
    invoke-static {}, Lhdp/http/MyApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lhdp/util/Config;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public static getConfig()Lhdp/util/Config;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lhdp/util/Config;->config:Lhdp/util/Config;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lhdp/util/Config;

    invoke-direct {v0}, Lhdp/util/Config;-><init>()V

    sput-object v0, Lhdp/util/Config;->config:Lhdp/util/Config;

    .line 104
    :cond_0
    sget-object v0, Lhdp/util/Config;->config:Lhdp/util/Config;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "app"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lhdp/util/Config;->initSharedPre(Landroid/content/Context;)V

    .line 95
    invoke-direct {p0}, Lhdp/util/Config;->updatePreference()V

    .line 99
    return-void
.end method

.method private updatePreference()V
    .locals 4

    .prologue
    .line 68
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lhdp/util/Config;->KEY_PREFERENCE_UPDATE_FLAG:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lhdp/util/Config;->preferenceUpdateFlag:I

    .line 69
    iget v1, p0, Lhdp/util/Config;->preferenceUpdateFlag:I

    if-lez v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lhdp/util/Config;->KEY_PREFERENCE_UPDATE_FLAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public ClearPre()V
    .locals 2

    .prologue
    .line 863
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 864
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 865
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 866
    return-void
.end method

.method public GetChannelTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 693
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "channelTime"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetIPkey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 738
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "IPkey"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSokey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sokey"

    const-string v2, "hdp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 822
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "uuidx"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUpkey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 708
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "upkey"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetChannelTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "upkey"    # Ljava/lang/String;

    .prologue
    .line 687
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 688
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "channelTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 689
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 690
    return-void
.end method

.method public SetIPkey(Ljava/lang/String;)V
    .locals 2
    .param p1, "upkey"    # Ljava/lang/String;

    .prologue
    .line 732
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 733
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IPkey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 734
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 735
    return-void
.end method

.method public SetSokey(Ljava/lang/String;)V
    .locals 2
    .param p1, "sokey"    # Ljava/lang/String;

    .prologue
    .line 717
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 718
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sokey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 719
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 720
    return-void
.end method

.method public SetUUID(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuidx"    # Ljava/lang/String;

    .prologue
    .line 826
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 827
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "uuidx"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 828
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 829
    return-void
.end method

.method public SetUpkey(Ljava/lang/String;)V
    .locals 2
    .param p1, "upkey"    # Ljava/lang/String;

    .prologue
    .line 702
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 703
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "upkey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 704
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 705
    return-void
.end method

.method public VodClearCache()V
    .locals 2

    .prologue
    .line 509
    :try_start_0
    iget-object v0, p0, Lhdp/util/Config;->cacheVod:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 510
    const-string v0, "Config"

    const-string v1, "clear--vod--data-cache!"

    invoke-static {v0, v1}, Lhdp/util/HdpLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public VodgetValueStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 495
    iget-object v0, p0, Lhdp/util/Config;->cacheVod:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public VodsaveValueStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 500
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lhdp/util/Config;->cacheVod:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 504
    :cond_0
    return-void
.end method

.method public deletePluginMust(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 963
    const-string v2, "httpsp"

    .line 964
    const/4 v3, 0x0

    .line 963
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 965
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 966
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 967
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 968
    return-void
.end method

.method public getAutoLive()Z
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "AutoLive"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhdp/http/MyApp;->AutoLive:Z

    .line 241
    sget-boolean v0, Lhdp/http/MyApp;->AutoLive:Z

    return v0
.end method

.method public getCanListTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "UpTimeok"

    const-string v2, "1991"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCloseDiy()Z
    .locals 4

    .prologue
    .line 252
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v2, "setCloseAutoLiveDiy"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 253
    .local v0, "isColse":Z
    return v0
.end method

.method public getCpuType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lhdp/util/Config;->cpuType:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "crashEmail"

    const-string v2, "hdplive@gmail.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEpgShow()Z
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "EpgShow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getExitPicmd5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "exitpicmd5"

    const-string v2, "1991"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusHistory()I
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "setFocusHistory"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHBWSJM()Z
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "HBWSJM"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getJiemaType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "JieMaType"

    const-string v2, "HARD"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLiveArea()Ljava/lang/String;
    .locals 3

    .prologue
    .line 801
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "LiveArea"

    const-string v2, "\u81ea\u52a8"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhdp/http/MyApp;->LiveArea:Ljava/lang/String;

    .line 802
    sget-object v0, Lhdp/http/MyApp;->LiveArea:Ljava/lang/String;

    return-object v0
.end method

.method public getMychannelInfotid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 848
    invoke-virtual {p0}, Lhdp/util/Config;->resetWhenDelCollect()V

    .line 849
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "TID"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMychannelInfovid()I
    .locals 3

    .prologue
    .line 843
    invoke-virtual {p0}, Lhdp/util/Config;->resetWhenDelCollect()V

    .line 844
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "VID"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMytvtime()J
    .locals 4

    .prologue
    .line 678
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sdTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPassWord(I)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pw"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayTypeId()I
    .locals 3

    .prologue
    .line 663
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "playCurrentType_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "proxy"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSateTimeShilft()Z
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "getSateTimeShilft"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShilftTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 535
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "setShilftTime"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowFav()Z
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ShowFav"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowLast()Z
    .locals 3

    .prologue
    .line 419
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ShowLast"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowLocal()Z
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ShowLocal"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTimeout(Z)I
    .locals 3
    .param p1, "p2p"    # Z

    .prologue
    .line 573
    if-eqz p1, :cond_0

    .line 574
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "Timeout_p2p"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 576
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "Timeout_del"

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getTumd5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "picmd5"

    const-string v2, "1991"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTurn()Z
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ChannelTurn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTvScale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "TvScale"

    const-string v2, "quanping"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTvSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "TvSize"

    const-string v2, "middle"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getValueInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 455
    :cond_0
    return v0
.end method

.method public getValueIntFlag(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 464
    :cond_0
    return v0
.end method

.method public getValueStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSourceTryTime()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lhdp/util/Config;->videoSourceTryTime:I

    return v0
.end method

.method public getVitamio422Downloaded()Z
    .locals 3

    .prologue
    .line 777
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "vitamio422"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVitamioStatic()Z
    .locals 3

    .prologue
    .line 762
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sook"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVolSet()Z
    .locals 3

    .prologue
    .line 947
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "VolSet"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getgimicode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "gimicode"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getgimiuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "gimiuid"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getgimiuser()Ljava/lang/String;
    .locals 3

    .prologue
    .line 638
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "gimiuser"

    const-string v2, "Error:\u91cd\u542f\u518d\u8bd5!"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 809
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "macAddress"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBaiduT5So()Z
    .locals 3

    .prologue
    .line 787
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v1, "hasBaiduTSo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public initSharedPre(Landroid/content/Context;)V
    .locals 2
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 110
    .line 111
    iget-object v0, p0, Lhdp/util/Config;->PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    iput-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    .line 112
    const-string v0, "vod_cache_hdpfans"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lhdp/util/Config;->cacheVod:Landroid/content/SharedPreferences;

    .line 114
    return-void
.end method

.method public isAutoChangeChannelWhenPlayFail()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lhdp/util/Config;->autoChangeChannelWhenPlayFail:Z

    return v0
.end method

.method public resetP2pHistory()V
    .locals 2

    .prologue
    .line 971
    const-string v0, "KEY_LASTTEST_P2P"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lhdp/util/Config;->saveValueStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method public resetWhenDelCollect()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 854
    const-string v0, "DELEL_CURRENT_CHANNELID"

    invoke-virtual {p0, v0}, Lhdp/util/Config;->getValueInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    const-string v2, "VID"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 855
    const-string v0, "2"

    invoke-virtual {p0, v0, v3}, Lhdp/util/Config;->setMychannelInfo(Ljava/lang/String;I)V

    .line 857
    :cond_0
    return-void
.end method

.method public saveP2pPlay(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 977
    const-string v0, "KEY_LASTTEST_P2P"

    invoke-virtual {p0, v0, p1}, Lhdp/util/Config;->saveValueStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public saveValueInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 469
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 470
    return-void
.end method

.method public saveValueStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 487
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 491
    :cond_0
    return-void
.end method

.method public setAutoLive(Z)V
    .locals 2
    .param p1, "str"    # Z

    .prologue
    .line 233
    sput-boolean p1, Lhdp/http/MyApp;->AutoLive:Z

    .line 234
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "AutoLive"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    return-void
.end method

.method public setBaiduT5So(Z)V
    .locals 2
    .param p1, "str"    # Z

    .prologue
    .line 781
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 782
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "hasBaiduTSo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 783
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 784
    return-void
.end method

.method public setCanListTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 545
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 546
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "UpTimeok"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 547
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 548
    return-void
.end method

.method public setCloseAutoLiveDiy(Z)V
    .locals 2
    .param p1, "str"    # Z

    .prologue
    .line 245
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 246
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "setCloseAutoLiveDiy"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    return-void
.end method

.method public setCrashEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 294
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "crashEmail"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    return-void
.end method

.method public setEpgShow(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 319
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 320
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "EpgShow"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    return-void
.end method

.method public setErrorUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 872
    sput-object p1, Lhdp/http/MyApp;->ErrorUrl:Ljava/lang/String;

    .line 873
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 874
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ErrorUrl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 875
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 876
    return-void
.end method

.method public setExitPicmd5(Ljava/lang/String;)V
    .locals 2
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 602
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 603
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "exitpicmd5"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 604
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 605
    return-void
.end method

.method public setFocusHistory(I)V
    .locals 2
    .param p1, "indeFocus"    # I

    .prologue
    .line 346
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 347
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "setFocusHistory"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 348
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    return-void
.end method

.method public setHBWSJM(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 332
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "HBWSJM"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    return-void
.end method

.method public setJiemaType(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 274
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "JieMaType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 276
    return-void
.end method

.method public setLiveArea(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 794
    sput-object p1, Lhdp/http/MyApp;->LiveArea:Ljava/lang/String;

    .line 795
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 796
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LiveArea"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 797
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 798
    return-void
.end method

.method public setLiveEpg(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 914
    sput-object p1, Lhdp/http/MyApp;->LiveEpg:Ljava/lang/String;

    .line 915
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 916
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LiveEpg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 917
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 918
    return-void
.end method

.method public setLiveNextEpg(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 921
    sput-object p1, Lhdp/http/MyApp;->LiveNextEpg:Ljava/lang/String;

    .line 922
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 923
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LiveNextEpg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 924
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 925
    return-void
.end method

.method public setLiveNextUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 928
    sput-object p1, Lhdp/http/MyApp;->LiveNextUrl:Ljava/lang/String;

    .line 929
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 930
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LiveNextUrl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 931
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 932
    return-void
.end method

.method public setLiveSeek(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 900
    sput-object p1, Lhdp/http/MyApp;->LiveSeek:Ljava/lang/String;

    .line 901
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 902
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LiveSeek"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 903
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 904
    return-void
.end method

.method public setLive_Cookie(Ljava/lang/String;)V
    .locals 2
    .param p1, "Cookie"    # Ljava/lang/String;

    .prologue
    .line 879
    sput-object p1, Lhdp/http/MyApp;->LiveCookie:Ljava/lang/String;

    .line 880
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 881
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LiveCookie"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 882
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 883
    return-void
.end method

.method public setLive_Range(Ljava/lang/String;)V
    .locals 2
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 893
    sput-object p1, Lhdp/http/MyApp;->Live_Range:Ljava/lang/String;

    .line 894
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 895
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Live_Range"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 896
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 897
    return-void
.end method

.method public setLive_Referer(Ljava/lang/String;)V
    .locals 2
    .param p1, "referer"    # Ljava/lang/String;

    .prologue
    .line 886
    sput-object p1, Lhdp/http/MyApp;->Live_Referer:Ljava/lang/String;

    .line 887
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 888
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Live_Referer"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 889
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 890
    return-void
.end method

.method public declared-synchronized setMychannelInfo(Ljava/lang/String;I)V
    .locals 4
    .param p1, "tid"    # Ljava/lang/String;
    .param p2, "vid"    # I

    .prologue
    .line 835
    monitor-enter p0

    :try_start_0
    const-string v1, "Config"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",vid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhdp/util/HdpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 837
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 838
    const-string v1, "VID"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 839
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    monitor-exit p0

    return-void

    .line 835
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setMytvtime(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 672
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 673
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sdTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 674
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 675
    return-void
.end method

.method public setPassWord(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "isOpenData"    # Z

    .prologue
    const/4 v2, 0x1

    .line 381
    if-eqz p3, :cond_0

    .line 382
    if-ne p1, v2, :cond_1

    .line 383
    sput-boolean v2, Lhdp/player/StartActivity;->Pw1:Z

    .line 391
    :cond_0
    :goto_0
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 392
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pw"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 393
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    return-void

    .line 384
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 385
    sput-boolean v2, Lhdp/player/StartActivity;->Pw2:Z

    goto :goto_0

    .line 386
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 387
    sput-boolean v2, Lhdp/player/StartActivity;->Pw3:Z

    goto :goto_0
.end method

.method public setPlayTypeId(I)V
    .locals 2
    .param p1, "typeId"    # I

    .prologue
    .line 657
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 658
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "playCurrentType_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 659
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 660
    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 284
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "proxy"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 285
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    return-void
.end method

.method public setSateTimeShilft(Z)V
    .locals 2
    .param p1, "isTimeShlft"    # Z

    .prologue
    .line 522
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 523
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "getSateTimeShilft"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 524
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 525
    return-void
.end method

.method public setShilftTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 529
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 530
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "setShilftTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 531
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 532
    return-void
.end method

.method public setShowFav(Z)V
    .locals 2
    .param p1, "str"    # Z

    .prologue
    .line 424
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ShowFav"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    return-void
.end method

.method public setShowLast(Z)V
    .locals 2
    .param p1, "str"    # Z

    .prologue
    .line 413
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 414
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ShowLast"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    return-void
.end method

.method public setShowLocal(Z)V
    .locals 2
    .param p1, "str"    # Z

    .prologue
    .line 402
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 403
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ShowLocal"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 405
    return-void
.end method

.method public setTimeout(IZ)V
    .locals 2
    .param p1, "time"    # I
    .param p2, "p2p"    # Z

    .prologue
    .line 563
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 564
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_0

    .line 565
    const-string v1, "Timeout_p2p"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 569
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 570
    return-void

    .line 567
    :cond_0
    const-string v1, "Timeout_del"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setTumd5(Ljava/lang/String;)V
    .locals 2
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 587
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 588
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "picmd5"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 589
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 590
    return-void
.end method

.method public setTurn(Z)V
    .locals 2
    .param p1, "str"    # Z

    .prologue
    .line 437
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 438
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ChannelTurn"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 439
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 440
    return-void
.end method

.method public setTvScale(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 361
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TvScale"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 363
    return-void
.end method

.method public setTvSize(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 307
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TvSize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 308
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    return-void
.end method

.method public setUserMac(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 907
    sput-object p1, Lhdp/http/MyApp;->User_Mac:Ljava/lang/String;

    .line 908
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 909
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "User_Mac"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 910
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 911
    return-void
.end method

.method public setValueBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 483
    iget-object v0, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 484
    return-void
.end method

.method public setVitamio422Downloaded(Z)V
    .locals 2
    .param p1, "str"    # Z

    .prologue
    .line 771
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 772
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "vitamio422"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 773
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 774
    return-void
.end method

.method public setVitamioStatic(Z)V
    .locals 2
    .param p1, "str"    # Z

    .prologue
    .line 756
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 757
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sook"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 758
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 759
    return-void
.end method

.method public setVolSet(Z)V
    .locals 2
    .param p1, "str"    # Z

    .prologue
    .line 938
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 939
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "VolSet"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 940
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 941
    return-void
.end method

.method public setgimicode(Ljava/lang/String;)V
    .locals 2
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 647
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 648
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "gimicode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 649
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 650
    return-void
.end method

.method public setgimiuid(Ljava/lang/String;)V
    .locals 2
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 617
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 618
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "gimiuid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 619
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 620
    return-void
.end method

.method public setgimiuser(Ljava/lang/String;)V
    .locals 2
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 632
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 633
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "gimiuser"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 634
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 635
    return-void
.end method

.method public setmacAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 813
    iget-object v1, p0, Lhdp/util/Config;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 814
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "macAddress"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 815
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 816
    return-void
.end method
