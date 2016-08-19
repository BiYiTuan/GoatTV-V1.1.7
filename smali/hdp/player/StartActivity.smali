.class public Lhdp/player/StartActivity;
.super Landroid/app/Activity;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/player/StartActivity$ConnectionChangeReceiver;
    }
.end annotation


# static fields
.field private static final CHANGE_CEHCK_UPDATE_FLAG:I = 0x9

.field private static final CHECK:I = 0x1

.field private static final CHECKUID:I = 0x7

.field private static final FINISH_THIS:I = 0x0

.field private static final FIRSTGETLISTCATCH:I = 0x6

.field private static final INIT_ERROR:I = 0x11

.field public static Pw1:Z = false

.field public static Pw2:Z = false

.field public static Pw3:Z = false

.field private static final RECOMMEND_APP:I = 0x8

.field private static final STARTLOAD_TV_COMPLETE:I = 0x10

.field private static final STARTLOAD_TV_DIYLIST:I = 0xd

.field private static final STARTLOAD_TV_GETLISTFAIL:I = 0xf

.field private static final STARTLOAD_TV_GETLISTUPDATE:I = 0xe

.field private static final STARTLOAD_TV_LAUNCH:I = 0xb

.field private static final STARTLOAD_TV_UPDATE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "StartActivity"

.field private static final UPDATE:I = 0x5

.field private static final UPDATE_DOWNLOADING:I = 0x2

.field private static final UPDATE_DOWNLOAD_COMPLETED:I = 0x4

.field private static final UPDATE_DOWNLOAD_ERROR:I = 0x3

.field private static final UPDATE_DOWNLOAD_NO_PACKAGE:I = 0xa

.field public static final _DPPLAY_SERVER_DIR:Ljava/io/File;

.field public static final __CONTEXTS_DIR:Ljava/lang/String; = "contexts"

.field public static final __ETC_DIR:Ljava/lang/String; = "etc"

.field public static final __TMP_DIR:Ljava/lang/String; = "tmp"

.field public static final __WEBAPP_DIR:Ljava/lang/String; = "webapps"


# instance fields
.field private StartTuPath:Ljava/lang/String;

.field public Tv_Version:Landroid/widget/TextView;

.field private apkInfoUrl:Ljava/lang/String;

.field private channelInfoUrl:Ljava/lang/String;

.field private checkUpdateFlag:Z

.field private createFileThread:Ljava/lang/Thread;

.field private curVersionCode:I

.field private delayForAd:Z

.field private delayedTime:J

.field private handler:Landroid/os/Handler;

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private newVersion:Ljava/lang/String;

.field private newVersionCode:I

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private pauseForRecommendApp:Z

.field private progress:I

.field private quit:Z

.field private recommendAppPackageName:Ljava/lang/String;

.field private recommendAppSaveUrl:Ljava/lang/String;

.field public root:Landroid/view/View;

.field runnable:Ljava/lang/Runnable;

.field runnable_check:Ljava/lang/Runnable;

.field runnable_get:Ljava/lang/Runnable;

.field private savefolder:Ljava/lang/String;

.field private sinaProvinceUrl:Ljava/lang/String;

.field public start_load_tv:Landroid/widget/TextView;

.field private updateProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    sput-boolean v0, Lhdp/player/StartActivity;->Pw1:Z

    .line 115
    sput-boolean v0, Lhdp/player/StartActivity;->Pw2:Z

    .line 116
    sput-boolean v0, Lhdp/player/StartActivity;->Pw3:Z

    .line 151
    new-instance v0, Ljava/io/File;

    .line 152
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "dpplayserver"

    .line 151
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lhdp/player/StartActivity;->_DPPLAY_SERVER_DIR:Ljava/io/File;

    .line 154
    const-string v0, "org.eclipse.jetty.xml.XmlParser.Validating"

    .line 155
    const-string v1, "false"

    .line 154
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    const-string v0, "org.eclipse.jetty.util.log.class"

    .line 158
    const-string v1, "org.mortbay.ijetty.AndroidLog"

    .line 157
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    new-instance v0, Lorg/mortbay/ijetty/log/AndroidLog;

    invoke-direct {v0}, Lorg/mortbay/ijetty/log/AndroidLog;-><init>()V

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->setLog(Lorg/eclipse/jetty/util/log/Logger;)V

    .line 160
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/StartActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lhdp/player/StartActivity;->apkInfoUrl:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lhdp/player/StartActivity;->channelInfoUrl:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lhdp/player/StartActivity;->StartTuPath:Ljava/lang/String;

    .line 101
    const-string v0, "http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=json"

    iput-object v0, p0, Lhdp/player/StartActivity;->sinaProvinceUrl:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lhdp/player/StartActivity;->recommendAppPackageName:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lhdp/player/StartActivity;->recommendAppSaveUrl:Ljava/lang/String;

    .line 104
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lhdp/player/StartActivity;->delayedTime:J

    .line 106
    iput-boolean v2, p0, Lhdp/player/StartActivity;->checkUpdateFlag:Z

    .line 107
    iput-boolean v2, p0, Lhdp/player/StartActivity;->pauseForRecommendApp:Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/player/StartActivity;->delayForAd:Z

    .line 111
    iput-boolean v2, p0, Lhdp/player/StartActivity;->quit:Z

    .line 375
    new-instance v0, Lhdp/player/StartActivity$1;

    invoke-direct {v0, p0}, Lhdp/player/StartActivity$1;-><init>(Lhdp/player/StartActivity;)V

    iput-object v0, p0, Lhdp/player/StartActivity;->handler:Landroid/os/Handler;

    .line 533
    new-instance v0, Lhdp/player/StartActivity$2;

    invoke-direct {v0, p0}, Lhdp/player/StartActivity$2;-><init>(Lhdp/player/StartActivity;)V

    iput-object v0, p0, Lhdp/player/StartActivity;->runnable_get:Ljava/lang/Runnable;

    .line 556
    new-instance v0, Lhdp/player/StartActivity$3;

    invoke-direct {v0, p0}, Lhdp/player/StartActivity$3;-><init>(Lhdp/player/StartActivity;)V

    iput-object v0, p0, Lhdp/player/StartActivity;->runnable_check:Ljava/lang/Runnable;

    .line 581
    new-instance v0, Lhdp/player/StartActivity$4;

    invoke-direct {v0, p0}, Lhdp/player/StartActivity$4;-><init>(Lhdp/player/StartActivity;)V

    iput-object v0, p0, Lhdp/player/StartActivity;->runnable:Ljava/lang/Runnable;

    .line 81
    return-void
.end method

.method private BackUpCustomlist()V
    .locals 2

    .prologue
    .line 530
    sget-object v0, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    sget-object v1, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v1}, Lhdp/util/LiveDataHelper;->GetCustomList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhdp/util/LiveDataHelper;->insertCustomForUp(Ljava/util/ArrayList;)V

    .line 531
    return-void
.end method

.method private CheckBoot()V
    .locals 4

    .prologue
    .line 1194
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "AutoBoot"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1197
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1198
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1199
    new-instance v1, Lhdp/player/StartActivity$ConnectionChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lhdp/player/StartActivity$ConnectionChangeReceiver;-><init>(Lhdp/player/StartActivity;Lhdp/player/StartActivity$ConnectionChangeReceiver;)V

    invoke-virtual {p0, v1, v0}, Lhdp/player/StartActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1210
    .end local v0    # "mFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 1202
    :cond_0
    invoke-static {p0}, Lhdp/http/NetWorkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1203
    invoke-direct {p0}, Lhdp/player/StartActivity;->NetDiaShow()V

    goto :goto_0

    .line 1206
    :cond_1
    iget-object v1, p0, Lhdp/player/StartActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1207
    invoke-direct {p0}, Lhdp/player/StartActivity;->CheckUpdate()V

    goto :goto_0
.end method

.method private CheckData()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 195
    invoke-static {}, Lhdp/http/DecodeKey;->GetList()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lhdp/player/StartActivity;->apkInfoUrl:Ljava/lang/String;

    .line 196
    const/4 v2, 0x0

    .line 198
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lhdp/player/StartActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 199
    const-string v7, "channelInfoUrl.txt"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 198
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 201
    .local v4, "tempStr":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    if-nez v4, :cond_2

    .line 209
    if-eqz v3, :cond_4

    .line 211
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 218
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "tempStr":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    iget-object v5, p0, Lhdp/player/StartActivity;->channelInfoUrl:Ljava/lang/String;

    invoke-static {v5}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    invoke-static {}, Lhdp/http/MyApp;->getChannelInfoUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lhdp/player/StartActivity;->channelInfoUrl:Ljava/lang/String;

    .line 222
    :cond_1
    iget-object v5, p0, Lhdp/player/StartActivity;->channelInfoUrl:Ljava/lang/String;

    invoke-static {v5}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 223
    invoke-direct {p0}, Lhdp/player/StartActivity;->getChannelInfoUrlFailedDiaShow()V

    .line 249
    :goto_2
    return-void

    .line 202
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tempStr":Ljava/lang/String;
    :cond_2
    :try_start_3
    iput-object v4, p0, Lhdp/player/StartActivity;->channelInfoUrl:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 206
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "tempStr":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    const-string v5, ""

    iput-object v5, p0, Lhdp/player/StartActivity;->channelInfoUrl:Ljava/lang/String;

    .line 207
    const-string v5, "StartActivity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 209
    if-eqz v2, :cond_0

    .line 211
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 212
    :catch_1
    move-exception v1

    .line 213
    .local v1, "e1":Ljava/io/IOException;
    const-string v5, "StartActivity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 209
    :goto_4
    if-eqz v2, :cond_3

    .line 211
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 216
    :cond_3
    :goto_5
    throw v5

    .line 212
    :catch_2
    move-exception v1

    .line 213
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v6, "StartActivity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 212
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tempStr":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 213
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v5, "StartActivity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e1":Ljava/io/IOException;
    :cond_4
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 227
    .end local v4    # "tempStr":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lhdp/player/StartActivity;->channelInfoUrl:Ljava/lang/String;

    invoke-static {v5}, Lhdp/http/MyApp;->setChannelInfoUrl(Ljava/lang/String;)V

    .line 229
    iget-object v5, p0, Lhdp/player/StartActivity;->channelInfoUrl:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lhdp/http/DecodeKey;->StringFromJni(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v5, "http://www.iaarc.com/tvlist.json"

    iput-object v5, p0, Lhdp/player/StartActivity;->channelInfoUrl:Ljava/lang/String;

    .line 235
    const-string v5, "StartActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "channel info url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lhdp/player/StartActivity;->channelInfoUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0}, Lhdp/player/StartActivity;->getCurVersion()V

    .line 239
    invoke-static {}, Lhdp/http/MyApp;->getgimiuid()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lhdp/http/MyApp;->GetUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_6

    .line 240
    new-instance v5, Ljava/lang/Thread;

    iget-object v6, p0, Lhdp/player/StartActivity;->runnable_check:Ljava/lang/Runnable;

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 243
    :cond_6
    sput-boolean v8, Lhdp/player/StartActivity;->Pw1:Z

    .line 244
    sput-boolean v8, Lhdp/player/StartActivity;->Pw2:Z

    .line 245
    sput-boolean v8, Lhdp/player/StartActivity;->Pw3:Z

    .line 247
    invoke-direct {p0}, Lhdp/player/StartActivity;->CheckBoot()V

    goto/16 :goto_2

    .line 208
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tempStr":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 204
    .end local v4    # "tempStr":Ljava/lang/String;
    :catch_4
    move-exception v0

    goto/16 :goto_3
.end method

.method private CheckUpdate()V
    .locals 1

    .prologue
    .line 801
    new-instance v0, Lhdp/player/StartActivity$9;

    invoke-direct {v0, p0}, Lhdp/player/StartActivity$9;-><init>(Lhdp/player/StartActivity;)V

    .line 921
    invoke-virtual {v0}, Lhdp/player/StartActivity$9;->start()V

    .line 922
    return-void
.end method

.method private CreatDownDialog(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "saveFile"    # Ljava/io/File;

    .prologue
    .line 692
    const-string v1, "StartActivity"

    const-string v2, "show download app process bar"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v0, Lhdp/widget/DownProgressDialog;

    .line 694
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-direct {v0, p0, p1, v1}, Lhdp/widget/DownProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    .local v0, "progressDialog":Lhdp/widget/DownProgressDialog;
    new-instance v1, Lhdp/player/StartActivity$5;

    invoke-direct {v1, p0, v0, p2}, Lhdp/player/StartActivity$5;-><init>(Lhdp/player/StartActivity;Lhdp/widget/DownProgressDialog;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lhdp/widget/DownProgressDialog;->setOnDownloadListening(Lhdp/widget/DownProgressDialog$OnDownloadListening;)V

    .line 720
    const v1, 0x7f06004f

    invoke-virtual {p0, v1}, Lhdp/player/StartActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 721
    new-instance v2, Lhdp/player/StartActivity$6;

    invoke-direct {v2, p0, v0}, Lhdp/player/StartActivity$6;-><init>(Lhdp/player/StartActivity;Lhdp/widget/DownProgressDialog;)V

    .line 720
    invoke-virtual {v0, v1, v2}, Lhdp/widget/DownProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 729
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhdp/widget/DownProgressDialog;->setCancelable(Z)V

    .line 731
    invoke-virtual {v0}, Lhdp/widget/DownProgressDialog;->show()V

    .line 732
    return-void
.end method

.method private Dialog_DownApp(Lhdp/javabean/AppInfo$NetApp;)V
    .locals 14
    .param p1, "netApp"    # Lhdp/javabean/AppInfo$NetApp;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const v11, 0x7f02003e

    .line 738
    const-string v9, "StartActivity"

    const-string v10, "show download app dialog"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 744
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 745
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 746
    .local v7, "screenWidth":I
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 747
    .local v6, "screenHeight":I
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 748
    const v10, 0x7f030008

    .line 747
    invoke-virtual {v9, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 749
    .local v3, "downloadRecommendAppDialog":Landroid/view/View;
    div-int/lit8 v9, v6, 0x4

    invoke-virtual {v3, v9}, Landroid/view/View;->setMinimumHeight(I)V

    .line 750
    div-int/lit8 v9, v7, 0x4

    invoke-virtual {v3, v9}, Landroid/view/View;->setMinimumWidth(I)V

    .line 751
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 752
    const v10, 0x7f030009

    .line 751
    invoke-virtual {v9, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 754
    .local v1, "customTitleView":Landroid/view/View;
    const v9, 0x7f0a0029

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 753
    check-cast v4, Landroid/widget/ImageView;

    .line 756
    .local v4, "imageView":Landroid/widget/ImageView;
    new-instance v9, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v9}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 757
    invoke-virtual {v9, v11}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v9

    .line 758
    invoke-virtual {v9, v11}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v9

    .line 759
    invoke-virtual {v9, v11}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v9

    .line 760
    invoke-virtual {v9, v12}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v9

    new-instance v10, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/16 v11, 0x19

    invoke-direct {v10, v11}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v9, v10}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v9

    .line 761
    invoke-virtual {v9}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v9

    .line 756
    iput-object v9, p0, Lhdp/player/StartActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 762
    iget-object v9, p0, Lhdp/player/StartActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 763
    invoke-static {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v10

    .line 762
    invoke-virtual {v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 764
    iget-object v9, p0, Lhdp/player/StartActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v10, p1, Lhdp/javabean/AppInfo$NetApp;->icon:Ljava/lang/String;

    iget-object v11, p0, Lhdp/player/StartActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v9, v10, v4, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 767
    const v9, 0x7f0a002b

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 766
    check-cast v8, Landroid/widget/TextView;

    .line 768
    .local v8, "textView":Landroid/widget/TextView;
    iget-object v9, p1, Lhdp/javabean/AppInfo$NetApp;->description:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    const v9, 0x7f0a002a

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 769
    check-cast v5, Landroid/widget/TextView;

    .line 771
    .local v5, "nameTextView":Landroid/widget/TextView;
    iget-object v9, p1, Lhdp/javabean/AppInfo$NetApp;->name:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 773
    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 774
    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 775
    const v10, 0x7f060061

    .line 776
    new-instance v11, Lhdp/player/StartActivity$7;

    invoke-direct {v11, p0, p1}, Lhdp/player/StartActivity$7;-><init>(Lhdp/player/StartActivity;Lhdp/javabean/AppInfo$NetApp;)V

    .line 775
    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 788
    const v10, 0x7f06004f

    .line 789
    new-instance v11, Lhdp/player/StartActivity$8;

    invoke-direct {v11, p0}, Lhdp/player/StartActivity$8;-><init>(Lhdp/player/StartActivity;)V

    .line 788
    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 795
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 796
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 797
    return-void
.end method

.method private GetImages(Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1226
    :try_start_0
    const-string v3, "start"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lhdp/player/StartActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_bk.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1228
    .local v1, "local_pic":Ljava/lang/String;
    const-string v3, "StartActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "login_pic_url--"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lhdp/http/MyApp;->Picaddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    sget-object v3, Lhdp/http/MyApp;->Picaddr:Ljava/lang/String;

    invoke-static {v1, v3}, Lhdp/util/WkUtil;->Download(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lhdp/player/StartActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1232
    .local v2, "pic":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1233
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1236
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1237
    sget-object v3, Lhdp/http/MyApp;->TuMd5:Ljava/lang/String;

    invoke-static {v3}, Lhdp/http/MyApp;->setTumd5(Ljava/lang/String;)V

    .line 1256
    .end local v1    # "local_pic":Ljava/lang/String;
    .end local v2    # "pic":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 1239
    :cond_2
    const-string v3, "exitpic"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lhdp/player/StartActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_bk.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1241
    .restart local v1    # "local_pic":Ljava/lang/String;
    const-string v3, "StartActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exit_pic_url--"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lhdp/http/MyApp;->ExitPicaddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    sget-object v3, Lhdp/http/MyApp;->ExitPicaddr:Ljava/lang/String;

    invoke-static {v1, v3}, Lhdp/util/WkUtil;->Download(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lhdp/player/StartActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1245
    .restart local v2    # "pic":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1246
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1249
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1250
    sget-object v3, Lhdp/http/MyApp;->ExitPicMd5:Ljava/lang/String;

    invoke-static {v3}, Lhdp/http/MyApp;->setExitPicmd5(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1253
    .end local v1    # "local_pic":Ljava/lang/String;
    .end local v2    # "pic":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1254
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private GetPlugin(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/UpdateInfo$Plugin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1364
    .local p1, "plugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/UpdateInfo$Plugin;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1382
    sget-object v5, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v5, p1}, Lhdp/util/LiveDataHelper;->insertPlugins(Ljava/util/ArrayList;)V

    .line 1383
    return-void

    .line 1364
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhdp/javabean/UpdateInfo$Plugin;

    .line 1366
    .local v4, "plugin":Lhdp/javabean/UpdateInfo$Plugin;
    sget-object v6, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    iget-object v7, v4, Lhdp/javabean/UpdateInfo$Plugin;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lhdp/util/LiveDataHelper;->getPlugin(Ljava/lang/String;)Lhdp/javabean/UpdateInfo$Plugin;

    move-result-object v2

    .line 1368
    .local v2, "local_Plugin":Lhdp/javabean/UpdateInfo$Plugin;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lhdp/player/StartActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1369
    iget-object v7, v4, Lhdp/javabean/UpdateInfo$Plugin;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jar"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1368
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1370
    .local v3, "locatpath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1372
    .local v1, "file":Ljava/io/File;
    if-eqz v2, :cond_2

    iget-object v6, v2, Lhdp/javabean/UpdateInfo$Plugin;->time:Ljava/lang/String;

    iget-object v7, v4, Lhdp/javabean/UpdateInfo$Plugin;->time:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1373
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1375
    :cond_2
    :try_start_0
    iget-object v6, v4, Lhdp/javabean/UpdateInfo$Plugin;->url:Ljava/lang/String;

    invoke-static {v3, v6}, Lhdp/util/WkUtil;->Download(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private MyTv()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1311
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    .line 1312
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/mytv.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1311
    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1313
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 1315
    .local v6, "modifiedTime":J
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lhdp/http/MyApp;->getMytvtime()J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-nez v10, :cond_1

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    invoke-static {v1}, Lhdp/http/MyApp;->parseTxt(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1320
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const-string v10, "StartActivity"

    const-string v11, "mytv()"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .local v0, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_3

    .line 1347
    invoke-static {p0}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v10

    .line 1348
    const-string v11, "custom01"

    .line 1347
    invoke-virtual {v10, v11}, Lhdp/util/LiveDataHelper;->deleteChannels(Ljava/lang/String;)V

    .line 1349
    invoke-static {p0}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v10

    invoke-virtual {v10, v0}, Lhdp/util/LiveDataHelper;->insertChannels(Ljava/util/ArrayList;)V

    .line 1353
    .end local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .end local v2    # "i":I
    :cond_2
    const/4 v3, 0x0

    .line 1354
    invoke-static {v6, v7}, Lhdp/http/MyApp;->setMytvtime(J)V

    goto :goto_0

    .line 1325
    .restart local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .restart local v2    # "i":I
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    aget-object v8, v10, v13

    .line 1326
    .local v8, "url_1":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    aget-object v10, v10, v14

    const-string v11, ";"

    const-string v12, "#"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1328
    .local v9, "url_2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1336
    new-instance v4, Lhdp/javabean/LiveChannelInfo;

    invoke-direct {v4}, Lhdp/javabean/LiveChannelInfo;-><init>()V

    .line 1337
    .local v4, "live":Lhdp/javabean/LiveChannelInfo;
    add-int/lit16 v10, v2, 0x4e21

    iput v10, v4, Lhdp/javabean/LiveChannelInfo;->num:I

    .line 1338
    iget v10, v4, Lhdp/javabean/LiveChannelInfo;->num:I

    iput v10, v4, Lhdp/javabean/LiveChannelInfo;->vid:I

    .line 1339
    iput-object v8, v4, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    .line 1340
    new-array v10, v14, [Ljava/lang/String;

    aput-object v9, v10, v13

    iput-object v10, v4, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    .line 1341
    new-array v10, v14, [Ljava/lang/String;

    const-string v11, "custom01"

    aput-object v11, v10, v13

    iput-object v10, v4, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    .line 1342
    const-string v10, "custom01"

    iput-object v10, v4, Lhdp/javabean/LiveChannelInfo;->epgid:Ljava/lang/String;

    .line 1343
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    .end local v4    # "live":Lhdp/javabean/LiveChannelInfo;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1328
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhdp/javabean/LiveChannelInfo;

    .line 1329
    .local v5, "liveChannelInfo":Lhdp/javabean/LiveChannelInfo;
    iget-object v11, v5, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1330
    new-array v10, v14, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v5, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    aget-object v12, v12, v13

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1331
    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1330
    iput-object v10, v5, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    goto :goto_2
.end method

.method private NetDiaShow()V
    .locals 3

    .prologue
    .line 1128
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1129
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1130
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1131
    new-instance v2, Lhdp/player/StartActivity$15;

    invoke-direct {v2, p0}, Lhdp/player/StartActivity$15;-><init>(Lhdp/player/StartActivity;)V

    .line 1130
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1140
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1141
    new-instance v2, Lhdp/player/StartActivity$16;

    invoke-direct {v2, p0}, Lhdp/player/StartActivity$16;-><init>(Lhdp/player/StartActivity;)V

    .line 1140
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1150
    return-void
.end method

.method private ShowDia()V
    .locals 3

    .prologue
    .line 925
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 926
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/StartActivity;->newVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 927
    const v1, 0x7f060010

    .line 928
    new-instance v2, Lhdp/player/StartActivity$10;

    invoke-direct {v2, p0}, Lhdp/player/StartActivity$10;-><init>(Lhdp/player/StartActivity;)V

    .line 927
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 942
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 943
    return-void
.end method

.method static synthetic access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lhdp/player/StartActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lhdp/player/StartActivity;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lhdp/player/StartActivity;->quit:Z

    return v0
.end method

.method static synthetic access$10(Lhdp/player/StartActivity;Ljava/lang/Boolean;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1085
    invoke-direct {p0, p1, p2}, Lhdp/player/StartActivity;->downloadCompleted(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$11(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 1055
    invoke-direct {p0}, Lhdp/player/StartActivity;->downloadCompleted()V

    return-void
.end method

.method static synthetic access$12(Lhdp/player/StartActivity;Lhdp/javabean/AppInfo$NetApp;)V
    .locals 0

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lhdp/player/StartActivity;->Dialog_DownApp(Lhdp/javabean/AppInfo$NetApp;)V

    return-void
.end method

.method static synthetic access$13(Lhdp/player/StartActivity;Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lhdp/player/StartActivity;->checkUpdateFlag:Z

    return-void
.end method

.method static synthetic access$14(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 1169
    invoke-direct {p0}, Lhdp/player/StartActivity;->initErrorDiaShow()V

    return-void
.end method

.method static synthetic access$15(Lhdp/player/StartActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lhdp/player/StartActivity;->sinaProvinceUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lhdp/player/StartActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lhdp/player/StartActivity;->channelInfoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lhdp/player/StartActivity;)Z
    .locals 1

    .prologue
    .line 1385
    invoke-direct {p0}, Lhdp/player/StartActivity;->insertDpPlayTypes()Z

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 1261
    invoke-direct {p0}, Lhdp/player/StartActivity;->insertDpplayChannelInfo()V

    return-void
.end method

.method static synthetic access$19(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0}, Lhdp/player/StartActivity;->CheckUpdate()V

    return-void
.end method

.method static synthetic access$2(Lhdp/player/StartActivity;Z)V
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lhdp/player/StartActivity;->quit:Z

    return-void
.end method

.method static synthetic access$20(Lhdp/player/StartActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lhdp/player/StartActivity;->recommendAppSaveUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lhdp/player/StartActivity;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0, p1, p2}, Lhdp/player/StartActivity;->CreatDownDialog(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$22(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 1310
    invoke-direct {p0}, Lhdp/player/StartActivity;->MyTv()V

    return-void
.end method

.method static synthetic access$23(Lhdp/player/StartActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1224
    invoke-direct {p0, p1}, Lhdp/player/StartActivity;->GetImages(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24(Lhdp/player/StartActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lhdp/player/StartActivity;->apkInfoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lhdp/player/StartActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lhdp/player/StartActivity;->recommendAppPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26(Lhdp/player/StartActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lhdp/player/StartActivity;->recommendAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$27(Lhdp/player/StartActivity;Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lhdp/player/StartActivity;->pauseForRecommendApp:Z

    return-void
.end method

.method static synthetic access$28(Lhdp/player/StartActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lhdp/player/StartActivity;->recommendAppSaveUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29(Lhdp/player/StartActivity;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lhdp/player/StartActivity;->checkUpdateFlag:Z

    return v0
.end method

.method static synthetic access$3(Lhdp/player/StartActivity;Z)V
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lhdp/player/StartActivity;->delayForAd:Z

    return-void
.end method

.method static synthetic access$30(Lhdp/player/StartActivity;I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lhdp/player/StartActivity;->newVersionCode:I

    return-void
.end method

.method static synthetic access$31(Lhdp/player/StartActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lhdp/player/StartActivity;->newVersion:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$32(Lhdp/player/StartActivity;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lhdp/player/StartActivity;->newVersionCode:I

    return v0
.end method

.method static synthetic access$33(Lhdp/player/StartActivity;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lhdp/player/StartActivity;->curVersionCode:I

    return v0
.end method

.method static synthetic access$34(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 945
    invoke-direct {p0}, Lhdp/player/StartActivity;->downloadPackage()V

    return-void
.end method

.method static synthetic access$35(Lhdp/player/StartActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lhdp/player/StartActivity;->savefolder:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$36(Lhdp/player/StartActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lhdp/player/StartActivity;->savefolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$37(Lhdp/player/StartActivity;I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lhdp/player/StartActivity;->progress:I

    return-void
.end method

.method static synthetic access$4(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0}, Lhdp/player/StartActivity;->BackUpCustomlist()V

    return-void
.end method

.method static synthetic access$5(Lhdp/player/StartActivity;)Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lhdp/player/StartActivity;->delayForAd:Z

    return v0
.end method

.method static synthetic access$6(Lhdp/player/StartActivity;)J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lhdp/player/StartActivity;->delayedTime:J

    return-wide v0
.end method

.method static synthetic access$7(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0}, Lhdp/player/StartActivity;->ShowDia()V

    return-void
.end method

.method static synthetic access$8(Lhdp/player/StartActivity;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lhdp/player/StartActivity;->progress:I

    return v0
.end method

.method static synthetic access$9(Lhdp/player/StartActivity;I)V
    .locals 0

    .prologue
    .line 1043
    invoke-direct {p0, p1}, Lhdp/player/StartActivity;->downloadProgressChanged(I)V

    return-void
.end method

.method private downloadCompleted()V
    .locals 3

    .prologue
    .line 1057
    iget-object v1, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 1059
    iget-object v1, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1065
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1066
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1067
    const v2, 0x7f060018

    .line 1066
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1068
    const v1, 0x7f060014

    .line 1069
    new-instance v2, Lhdp/player/StartActivity$12;

    invoke-direct {v2, p0}, Lhdp/player/StartActivity$12;-><init>(Lhdp/player/StartActivity;)V

    .line 1068
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1082
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1083
    return-void
.end method

.method private downloadCompleted(Ljava/lang/Boolean;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "sucess"    # Ljava/lang/Boolean;
    .param p2, "errorMsg"    # Ljava/lang/CharSequence;

    .prologue
    .line 1087
    iget-object v2, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 1089
    iget-object v2, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1091
    iget-object v2, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1095
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1096
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lhdp/player/StartActivity;->savefolder:Ljava/lang/String;

    const-string v4, "update.apk"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 1099
    const-string v3, "application/vnd.android.package-archive"

    .line 1097
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    invoke-virtual {p0, v1}, Lhdp/player/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 1101
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 1102
    invoke-virtual {p0}, Lhdp/player/StartActivity;->finish()V

    .line 1125
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1105
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1106
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060016

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1107
    const v3, 0x7f060017

    .line 1106
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1108
    const v2, 0x7f060014

    .line 1109
    new-instance v3, Lhdp/player/StartActivity$13;

    invoke-direct {v3, p0}, Lhdp/player/StartActivity$13;-><init>(Lhdp/player/StartActivity;)V

    .line 1108
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1115
    const v3, 0x7f060015

    .line 1116
    new-instance v4, Lhdp/player/StartActivity$14;

    invoke-direct {v4, p0}, Lhdp/player/StartActivity$14;-><init>(Lhdp/player/StartActivity;)V

    .line 1115
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private downloadPackage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 947
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    .line 949
    iget-object v0, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    .line 950
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lhdp/player/StartActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 952
    iget-object v0, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 954
    iget-object v0, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    .line 956
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 958
    iget-object v0, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 960
    iget-object v0, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 962
    iget-object v0, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 964
    new-instance v0, Lhdp/player/StartActivity$11;

    invoke-direct {v0, p0}, Lhdp/player/StartActivity$11;-><init>(Lhdp/player/StartActivity;)V

    .line 1040
    invoke-virtual {v0}, Lhdp/player/StartActivity$11;->start()V

    .line 1041
    return-void
.end method

.method private downloadProgressChanged(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 1045
    iget-object v0, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lhdp/player/StartActivity;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1053
    :cond_0
    return-void
.end method

.method private getChannelInfoUrlFailedDiaShow()V
    .locals 3

    .prologue
    .line 1153
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1155
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1156
    const v2, 0x7f06001f

    .line 1155
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1154
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1157
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1158
    new-instance v2, Lhdp/player/StartActivity$17;

    invoke-direct {v2, p0}, Lhdp/player/StartActivity$17;-><init>(Lhdp/player/StartActivity;)V

    .line 1157
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1167
    return-void
.end method

.method private getCurVersion()V
    .locals 5

    .prologue
    .line 253
    :try_start_0
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 254
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 253
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 255
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lhdp/player/StartActivity;->curVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v2, 0x3e7

    iput v2, p0, Lhdp/player/StartActivity;->curVersionCode:I

    .line 258
    const-string v2, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/StartActivity;->root:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lhdp/player/StartActivity;->root:Landroid/view/View;

    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhdp/player/StartActivity;->Tv_Version:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lhdp/player/StartActivity;->root:Landroid/view/View;

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhdp/player/StartActivity;->start_load_tv:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lhdp/player/StartActivity;->Tv_Version:Landroid/widget/TextView;

    const v1, 0x7f060051

    invoke-virtual {p0, v1}, Lhdp/player/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lhdp/player/StartActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "start.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhdp/player/StartActivity;->StartTuPath:Ljava/lang/String;

    .line 184
    invoke-static {}, Lhdp/http/MyApp;->getIsfirst()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lhdp/player/StartActivity;->StartTuPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget-boolean v0, Lhdp/http/MyApp;->IsGiMiDevice:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lhdp/player/StartActivity;->root:Landroid/view/View;

    iget-object v1, p0, Lhdp/player/StartActivity;->StartTuPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lhdp/player/StartActivity;->root:Landroid/view/View;

    invoke-virtual {p0, v0}, Lhdp/player/StartActivity;->setContentView(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method private initErrorDiaShow()V
    .locals 3

    .prologue
    .line 1170
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1171
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1180
    invoke-virtual {p0}, Lhdp/player/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1181
    new-instance v2, Lhdp/player/StartActivity$18;

    invoke-direct {v2, p0}, Lhdp/player/StartActivity$18;-><init>(Lhdp/player/StartActivity;)V

    .line 1180
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1188
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1190
    return-void
.end method

.method private insertDpPlayTypes()Z
    .locals 7

    .prologue
    .line 1387
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1388
    .local v1, "result":Ljava/lang/Boolean;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1406
    .local v4, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveTypeInfo;>;"
    new-instance v2, Lhdp/javabean/LiveTypeInfo;

    invoke-direct {v2}, Lhdp/javabean/LiveTypeInfo;-><init>()V

    .line 1407
    .local v2, "typec1":Lhdp/javabean/LiveTypeInfo;
    const-string v5, "custom01"

    iput-object v5, v2, Lhdp/javabean/LiveTypeInfo;->tid:Ljava/lang/String;

    .line 1408
    const-string v5, "\u81ea\u5b9a\u4e49\u9891\u9053"

    iput-object v5, v2, Lhdp/javabean/LiveTypeInfo;->tname:Ljava/lang/String;

    .line 1409
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    new-instance v3, Lhdp/javabean/LiveTypeInfo;

    invoke-direct {v3}, Lhdp/javabean/LiveTypeInfo;-><init>()V

    .line 1412
    .local v3, "typec2":Lhdp/javabean/LiveTypeInfo;
    const-string v5, "custom02"

    iput-object v5, v3, Lhdp/javabean/LiveTypeInfo;->tid:Ljava/lang/String;

    .line 1413
    const-string v5, "\u6211\u7684\u9891\u9053"

    iput-object v5, v3, Lhdp/javabean/LiveTypeInfo;->tname:Ljava/lang/String;

    .line 1414
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1428
    :try_start_0
    sget-object v5, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    invoke-virtual {v5, v4}, Lhdp/util/LiveDataHelper;->insertTypes(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 1429
    :catch_0
    move-exception v0

    .line 1431
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1432
    const-string v5, "StartActivity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private insertDpplayChannelInfo()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1262
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lhdp/player/StartActivity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1263
    const-string v11, "dpplay_tv.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1262
    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 1266
    .local v6, "modifiedTime":J
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lhdp/http/MyApp;->getDptvtime()J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-nez v10, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    invoke-static {v1}, Lhdp/http/MyApp;->parseTxt(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1271
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const-string v10, "StartActivity"

    const-string v11, "dpplay_tv()"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    .local v0, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_3

    .line 1298
    invoke-static {p0}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v10

    .line 1299
    const-string v11, "custom02"

    .line 1298
    invoke-virtual {v10, v11}, Lhdp/util/LiveDataHelper;->deleteChannels(Ljava/lang/String;)V

    .line 1300
    invoke-static {p0}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v10

    invoke-virtual {v10, v0}, Lhdp/util/LiveDataHelper;->insertChannels(Ljava/util/ArrayList;)V

    .line 1303
    .end local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .end local v2    # "i":I
    :cond_2
    const/4 v3, 0x0

    .line 1304
    invoke-static {v6, v7}, Lhdp/http/MyApp;->setDptvtime(J)V

    goto :goto_0

    .line 1276
    .restart local v0    # "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    .restart local v2    # "i":I
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    aget-object v8, v10, v13

    .line 1277
    .local v8, "url_1":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    aget-object v10, v10, v14

    const-string v11, ";"

    const-string v12, "#"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1279
    .local v9, "url_2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1287
    new-instance v4, Lhdp/javabean/LiveChannelInfo;

    invoke-direct {v4}, Lhdp/javabean/LiveChannelInfo;-><init>()V

    .line 1288
    .local v4, "live":Lhdp/javabean/LiveChannelInfo;
    add-int/lit8 v10, v2, 0x1

    iput v10, v4, Lhdp/javabean/LiveChannelInfo;->num:I

    .line 1289
    iget v10, v4, Lhdp/javabean/LiveChannelInfo;->num:I

    iput v10, v4, Lhdp/javabean/LiveChannelInfo;->vid:I

    .line 1290
    iput-object v8, v4, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    .line 1291
    new-array v10, v14, [Ljava/lang/String;

    aput-object v9, v10, v13

    iput-object v10, v4, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    .line 1292
    new-array v10, v14, [Ljava/lang/String;

    const-string v11, "custom02"

    aput-object v11, v10, v13

    iput-object v10, v4, Lhdp/javabean/LiveChannelInfo;->tid:[Ljava/lang/String;

    .line 1293
    const-string v10, "custom02"

    iput-object v10, v4, Lhdp/javabean/LiveChannelInfo;->epgid:Ljava/lang/String;

    .line 1294
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    .end local v4    # "live":Lhdp/javabean/LiveChannelInfo;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1279
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhdp/javabean/LiveChannelInfo;

    .line 1280
    .local v5, "liveChannelInfo":Lhdp/javabean/LiveChannelInfo;
    iget-object v11, v5, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1281
    new-array v10, v14, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v5, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    aget-object v12, v12, v13

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1282
    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1281
    iput-object v10, v5, Lhdp/javabean/LiveChannelInfo;->liveSources:[Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhdp/player/StartActivity;->quit:Z

    .line 289
    invoke-static {}, Lhdp/http/AppManager;->getAppManager()Lhdp/http/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhdp/http/AppManager;->AppExit(Landroid/content/Context;)V

    .line 290
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-static {}, Lhdp/http/AppManager;->getAppManager()Lhdp/http/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhdp/http/AppManager;->addActivity(Landroid/app/Activity;)V

    .line 168
    invoke-direct {p0}, Lhdp/player/StartActivity;->init()V

    .line 170
    invoke-direct {p0}, Lhdp/player/StartActivity;->CheckData()V

    .line 171
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 281
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V

    .line 282
    iget-object v0, p0, Lhdp/player/StartActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 265
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    .line 272
    iget-boolean v0, p0, Lhdp/player/StartActivity;->pauseForRecommendApp:Z

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "StartActivity"

    const-string v1, "send message to check update"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lhdp/player/StartActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    :cond_0
    return-void
.end method
