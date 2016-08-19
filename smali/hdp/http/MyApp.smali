.class public Lhdp/http/MyApp;
.super Landroid/app/Application;
.source "MyApp.java"


# static fields
.field public static AUTO_CHANGE_ENCODE_MODEL:Z

.field public static AutoLive:Z

.field public static BangCheck:Ljava/lang/String;

.field public static BangDingCode:Ljava/lang/String;

.field public static BanglistUrl:Ljava/lang/String;

.field public static ErrorUrl:Ljava/lang/String;

.field public static ExitPicMd5:Ljava/lang/String;

.field public static ExitPicUrl:Ljava/lang/String;

.field public static ExitPicaddr:Ljava/lang/String;

.field public static IsFirst:Ljava/lang/String;

.field public static IsGiMiDevice:Z

.field public static JieBang:Ljava/lang/String;

.field public static LiveArea:Ljava/lang/String;

.field public static LiveCity:Ljava/lang/String;

.field public static LiveCookie:Ljava/lang/String;

.field public static LiveEpg:Ljava/lang/String;

.field public static LiveNextEpg:Ljava/lang/String;

.field public static LiveNextUrl:Ljava/lang/String;

.field public static LiveSeek:Ljava/lang/String;

.field public static Live_Range:Ljava/lang/String;

.field public static Live_Referer:Ljava/lang/String;

.field public static Livedist:Ljava/lang/String;

.field public static Passok:Z

.field public static Picaddr:Ljava/lang/String;

.field public static SDKEY:Ljava/lang/String;

.field public static SHowTime:J

.field public static SHowTxt:Ljava/lang/String;

.field public static SHowTxt_b:Ljava/lang/String;

.field public static TuMd5:Ljava/lang/String;

.field public static UpdateApk:Ljava/lang/String;

.field public static UpdateTxt:Ljava/lang/String;

.field public static UpdateTxtTime:Ljava/lang/String;

.field public static UpdateUrl:Ljava/lang/String;

.field public static User_Agent:Ljava/lang/String;

.field public static User_Mac:Ljava/lang/String;

.field public static User_Ver:Ljava/lang/String;

.field public static VLC_SO_DIR:Ljava/lang/String;

.field public static aCache:Lhdp/util/ACache;

.field public static appMarketInfo:Ljava/lang/String;

.field public static app_save_adress:Ljava/lang/String;

.field public static appname:Ljava/lang/String;

.field public static backnumlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static bgImg:Landroid/widget/ImageView;

.field public static budingUrl:Ljava/lang/String;

.field public static dataHelper:Lhdp/util/LiveDataHelper;

.field public static hasStartp2p:Z

.field public static final jiemaContent:[Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static macAddress:Ljava/lang/String;

.field public static sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    sput-boolean v3, Lhdp/http/MyApp;->AutoLive:Z

    .line 72
    sput-boolean v3, Lhdp/http/MyApp;->Passok:Z

    .line 74
    sput-boolean v2, Lhdp/http/MyApp;->AUTO_CHANGE_ENCODE_MODEL:Z

    .line 75
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->SDKEY:Ljava/lang/String;

    .line 76
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->LiveArea:Ljava/lang/String;

    .line 77
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->LiveCity:Ljava/lang/String;

    .line 78
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->Livedist:Ljava/lang/String;

    .line 79
    const-string v0, "0"

    sput-object v0, Lhdp/http/MyApp;->LiveSeek:Ljava/lang/String;

    .line 80
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->LiveCookie:Ljava/lang/String;

    .line 81
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->User_Mac:Ljava/lang/String;

    .line 82
    const-string v0, "-"

    sput-object v0, Lhdp/http/MyApp;->LiveEpg:Ljava/lang/String;

    .line 83
    const-string v0, "-"

    sput-object v0, Lhdp/http/MyApp;->LiveNextEpg:Ljava/lang/String;

    .line 84
    const-string v0, "-"

    sput-object v0, Lhdp/http/MyApp;->LiveNextUrl:Ljava/lang/String;

    .line 85
    const-string v0, "-"

    sput-object v0, Lhdp/http/MyApp;->TuMd5:Ljava/lang/String;

    .line 86
    const-string v0, "-"

    sput-object v0, Lhdp/http/MyApp;->ExitPicMd5:Ljava/lang/String;

    .line 87
    const-string v0, "-"

    sput-object v0, Lhdp/http/MyApp;->ExitPicUrl:Ljava/lang/String;

    .line 88
    const-string v0, "-"

    sput-object v0, Lhdp/http/MyApp;->Picaddr:Ljava/lang/String;

    .line 89
    const-string v0, "-"

    sput-object v0, Lhdp/http/MyApp;->ExitPicaddr:Ljava/lang/String;

    .line 90
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->ErrorUrl:Ljava/lang/String;

    .line 92
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->app_save_adress:Ljava/lang/String;

    .line 93
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->appname:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HdpLive ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhdp/http/MyApp;->User_Ver:Ljava/lang/String;

    .line 95
    const-string v0, "live.gslb.letv.com/gslb"

    sput-object v0, Lhdp/http/MyApp;->Live_Range:Ljava/lang/String;

    .line 96
    const-string v0, "Mozilla/5.0 (Linux; U; Android 4.0; en-us; Nexus One Build/ERD62; iPad; CPU iPad OS 7_0_0 like Mac OS X) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17"

    sput-object v0, Lhdp/http/MyApp;->User_Agent:Ljava/lang/String;

    .line 97
    const-string v0, "iaarc.com.tv"

    sput-object v0, Lhdp/http/MyApp;->Live_Referer:Ljava/lang/String;

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HARD"

    aput-object v1, v0, v3

    const-string v1, "AUTO"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    .line 99
    const-string v2, "SOFT"

    aput-object v2, v0, v1

    .line 98
    sput-object v0, Lhdp/http/MyApp;->jiemaContent:[Ljava/lang/String;

    .line 100
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->macAddress:Ljava/lang/String;

    .line 102
    const-string v0, "                              "

    sput-object v0, Lhdp/http/MyApp;->SHowTxt_b:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lhdp/http/MyApp;->SHowTxt:Ljava/lang/String;

    .line 105
    const-wide/16 v0, 0x0

    sput-wide v0, Lhdp/http/MyApp;->SHowTime:J

    .line 107
    sput-boolean v3, Lhdp/http/MyApp;->IsGiMiDevice:Z

    .line 109
    sput-boolean v3, Lhdp/http/MyApp;->hasStartp2p:Z

    .line 111
    const-string v0, "http://hdp.sfcdn.org/dpplay.apk"

    sput-object v0, Lhdp/http/MyApp;->UpdateApk:Ljava/lang/String;

    .line 112
    const-string v0, "apkurl"

    sput-object v0, Lhdp/http/MyApp;->UpdateUrl:Ljava/lang/String;

    .line 113
    const-string v0, "txt"

    sput-object v0, Lhdp/http/MyApp;->UpdateTxt:Ljava/lang/String;

    .line 114
    const-string v0, "txtime"

    sput-object v0, Lhdp/http/MyApp;->UpdateTxtTime:Ljava/lang/String;

    .line 117
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->BanglistUrl:Ljava/lang/String;

    .line 118
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->BangCheck:Ljava/lang/String;

    .line 119
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->BangDingCode:Ljava/lang/String;

    .line 120
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->JieBang:Ljava/lang/String;

    .line 123
    const-string v0, "/data/data/iaarc.com.tv/libs"

    sput-object v0, Lhdp/http/MyApp;->VLC_SO_DIR:Ljava/lang/String;

    .line 124
    const-string v0, "http://121.201.14.53/app.txt"

    sput-object v0, Lhdp/http/MyApp;->appMarketInfo:Ljava/lang/String;

    .line 125
    const-string v0, "http://api.buding.tv/v2/base/playlink/get_playinfo?platform=%s&source=%s&url=%s"

    sput-object v0, Lhdp/http/MyApp;->budingUrl:Ljava/lang/String;

    .line 127
    const-string v0, ""

    sput-object v0, Lhdp/http/MyApp;->IsFirst:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lhdp/http/MyApp;->backnumlist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static ClearPre()V
    .locals 2

    .prologue
    .line 615
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 616
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 617
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 618
    return-void
.end method

.method public static GetIPkey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 495
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "IPkey"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 554
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "uuidx"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetUpkey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 480
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "upkey"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Getcodeing(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1101
    const-string v3, "xxx"

    .line 1102
    .local v3, "encoding":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1104
    .local v4, "fis":Ljava/io/FileInputStream;
    const/16 v7, 0x1000

    :try_start_0
    new-array v0, v7, [B

    .line 1105
    .local v0, "buf":[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    .line 1110
    .local v1, "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "nread":I
    if-lez v6, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->isDone()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1113
    :cond_0
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    .line 1114
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 1119
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    move-object v4, v5

    .line 1121
    .end local v0    # "buf":[B
    .end local v1    # "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "nread":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_1
    return-object v3

    .line 1111
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "nread":I
    :cond_1
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v1, v0, v7, v6}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1115
    .end local v1    # "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    .end local v6    # "nread":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 1116
    .end local v0    # "buf":[B
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    const-string v7, "error"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const-string v3, "xxx"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1119
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 1118
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1119
    :goto_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1120
    throw v7

    .line 1118
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buf":[B
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1115
    .end local v0    # "buf":[B
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static HttpGetData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 898
    const-string v4, ""

    .line 900
    .local v4, "rev":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 902
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 903
    const-string v6, "http.connection.timeout"

    const/16 v7, 0x2710

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 902
    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 905
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 906
    const-string v6, "http.socket.timeout"

    const/16 v7, 0x1388

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 905
    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 908
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 910
    .local v1, "get":Lorg/apache/http/client/methods/HttpGet;
    const-string v5, "User-Agent"

    sget-object v6, Lhdp/http/MyApp;->User_Agent:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 912
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 916
    .end local v1    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v4

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static MyTVFileDel()V
    .locals 3

    .prologue
    .line 1252
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 1253
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/mytv.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1252
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1255
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1257
    :cond_0
    return-void
.end method

.method public static SetIPkey(Ljava/lang/String;)V
    .locals 2
    .param p0, "upkey"    # Ljava/lang/String;

    .prologue
    .line 489
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 490
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IPkey"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 491
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 492
    return-void
.end method

.method public static SetUUID(Ljava/lang/String;)V
    .locals 2
    .param p0, "uuidx"    # Ljava/lang/String;

    .prologue
    .line 558
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 559
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "uuidx"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 560
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 561
    return-void
.end method

.method public static SetUpkey(Ljava/lang/String;)V
    .locals 2
    .param p0, "upkey"    # Ljava/lang/String;

    .prologue
    .line 474
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 475
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "upkey"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 476
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 477
    return-void
.end method

.method public static curl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 689
    const/4 v1, 0x4

    new-array v0, v1, [Lorg/apache/http/Header;

    const/4 v1, 0x0

    .line 690
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "User-Agent"

    sget-object v4, Lhdp/http/MyApp;->User_Agent:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 691
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "User-Key"

    invoke-static {}, Lhdp/http/MyApp;->get_livekey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 692
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "User-Ver"

    sget-object v4, Lhdp/http/MyApp;->User_Ver:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 694
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Accept"

    const-string v4, "*/*"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 695
    .local v0, "extra":[Lorg/apache/http/Header;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lhdp/http/NetWorkHelper;->getContent(Ljava/lang/String;[Lorg/apache/http/Header;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static detectLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "rex"    # Ljava/lang/String;
    .param p1, "originStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1066
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, "strs":[Ljava/lang/String;
    array-length v3, v0

    if-eq v3, v4, :cond_1

    .line 1068
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v7

    const-string v3, ""

    aput-object v3, v2, v6

    .local v2, "temp":[Ljava/lang/String;
    move-object v1, v2

    .line 1089
    .end local v2    # "temp":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1071
    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v7

    const-string v3, ""

    aput-object v3, v1, v6

    .line 1072
    .local v1, "strs_b":[Ljava/lang/String;
    const-string v3, "DIY"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "strs[0]="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "strs[1]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    aget-object v3, v0, v7

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    .line 1074
    aget-object v3, v0, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1075
    aget-object v3, v1, v6

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v1, v6

    const-string v4, "rtmp://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1076
    aget-object v3, v1, v6

    const-string v4, "p2p://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1077
    aget-object v3, v1, v6

    const-string v4, "cctv://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1078
    aget-object v3, v1, v6

    const-string v4, "cdtv://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1079
    aget-object v3, v1, v6

    const-string v4, "sdtv://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1080
    aget-object v3, v1, v6

    const-string v4, "qqtv://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1081
    aget-object v3, v1, v6

    const-string v4, "sohu://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1082
    aget-object v3, v1, v6

    const-string v4, "qq://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1083
    aget-object v3, v1, v6

    const-string v4, "sohutv://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1084
    aget-object v3, v1, v6

    const-string v4, "letv://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1085
    aget-object v3, v1, v6

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0


    .line 1087
    const-string v3, "DIY"

    const-string v4, "strs_b[1] start error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const-string v3, ""

    aput-object v3, v1, v6

    goto/16 :goto_0
.end method

.method public static executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 11
    .param p0, "httpurl"    # Ljava/lang/String;
    .param p1, "brk"    # Z
    .param p2, "keepEnter"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    const-string v9, "---------"

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v6, 0x0

    .line 858
    .local v6, "result":Ljava/lang/String;
    const/4 v8, 0x0

    .line 859
    .local v8, "url":Ljava/net/URL;
    const/4 v1, 0x0

    .line 860
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 861
    .local v3, "in":Ljava/io/InputStreamReader;
    new-instance v8, Ljava/net/URL;

    .end local v8    # "url":Ljava/net/URL;
    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 862
    .restart local v8    # "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 863
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    if-eqz p1, :cond_0

    .line 864
    const/16 v9, 0x2710

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 866
    :cond_0
    const/16 v9, 0x1388

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 867
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 870
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 872
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    .end local v3    # "in":Ljava/io/InputStreamReader;
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 873
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 874
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 875
    .local v7, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 876
    .local v5, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 883
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 884
    if-eqz v1, :cond_1

    .line 885
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 887
    :cond_1
    if-eqz v3, :cond_2

    .line 889
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :cond_2
    :goto_1
    return-object v6

    .line 877
    :cond_3
    if-eqz p2, :cond_4

    .line 878
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 880
    :cond_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 890
    :catch_0
    move-exception v2

    .line 891
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "error"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p0, "httpurl"    # Ljava/lang/String;
    .param p1, "brk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 735
    const-string v8, "x---"

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v5, 0x0

    .line 737
    .local v5, "result":Ljava/lang/String;
    const/4 v7, 0x0

    .line 738
    .local v7, "url":Ljava/net/URL;
    const/4 v1, 0x0

    .line 739
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 740
    .local v3, "in":Ljava/io/InputStreamReader;
    new-instance v7, Ljava/net/URL;

    .end local v7    # "url":Ljava/net/URL;
    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 741
    .restart local v7    # "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 742
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    if-eqz p1, :cond_0

    .line 743
    const/16 v8, 0x4e20

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 746
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 747
    new-instance v3, Ljava/io/InputStreamReader;

    .end local v3    # "in":Ljava/io/InputStreamReader;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 748
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 749
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 750
    .local v6, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 751
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 754
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 755
    if-eqz v1, :cond_1

    .line 756
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 758
    :cond_1
    if-eqz v3, :cond_2

    .line 760
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :cond_2
    :goto_1
    return-object v5

    .line 752
    :cond_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 761
    :catch_0
    move-exception v2

    .line 762
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "error"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static executeHttpPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "httpurl"    # Ljava/lang/String;

    .prologue
    .line 776
    const/4 v8, 0x0

    .line 777
    .local v8, "result":Ljava/lang/String;
    const/4 v10, 0x0

    .line 778
    .local v10, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 779
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 781
    .local v5, "in":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    .end local v10    # "url":Ljava/net/URL;
    .local v11, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 783
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 784
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 785
    const-string v12, "POST"

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 786
    const-string v12, "Content-Type"

    .line 787
    const-string v13, "application/x-www-form-urlencoded"

    .line 786
    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v12, "Charset"

    const-string v13, "utf-8"

    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    new-instance v3, Ljava/io/DataOutputStream;

    .line 790
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 789
    invoke-direct {v3, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 791
    .local v3, "dop":Ljava/io/DataOutputStream;
    const-string v12, "token=alexzhou"

    invoke-virtual {v3, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 793
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 794
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 795
    .end local v5    # "in":Ljava/io/InputStreamReader;
    .local v6, "in":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 796
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 797
    .local v9, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 798
    .local v7, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 801
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 806
    if-eqz v2, :cond_0

    .line 807
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 809
    :cond_0
    if-eqz v6, :cond_6

    .line 811
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    move-object v10, v11

    .line 818
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "dop":Ljava/io/DataOutputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "strBuffer":Ljava/lang/StringBuffer;
    .end local v11    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_1
    :goto_1
    return-object v8

    .line 799
    .end local v5    # "in":Ljava/io/InputStreamReader;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "dop":Ljava/io/DataOutputStream;
    .restart local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "strBuffer":Ljava/lang/StringBuffer;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_2
    :try_start_4
    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 802
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "strBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    move-object v10, v11

    .line 803
    .end local v3    # "dop":Ljava/io/DataOutputStream;
    .end local v11    # "url":Ljava/net/URL;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v10    # "url":Ljava/net/URL;
    :goto_2
    :try_start_5
    const-string v12, "error"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 806
    if-eqz v2, :cond_3

    .line 807
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 809
    :cond_3
    if-eqz v5, :cond_1

    .line 811
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 812
    :catch_1
    move-exception v4

    .line 813
    .local v4, "e":Ljava/io/IOException;
    const-string v12, "error"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 805
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 806
    :goto_3
    if-eqz v2, :cond_4

    .line 807
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 809
    :cond_4
    if-eqz v5, :cond_5

    .line 811
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 817
    :cond_5
    :goto_4
    throw v12

    .line 812
    :catch_2
    move-exception v4

    .line 813
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v13, "error"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 812
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/InputStreamReader;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "dop":Ljava/io/DataOutputStream;
    .restart local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "strBuffer":Ljava/lang/StringBuffer;
    .restart local v11    # "url":Ljava/net/URL;
    :catch_3
    move-exception v4

    .line 813
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "error"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    goto :goto_1

    .line 805
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "dop":Ljava/io/DataOutputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "strBuffer":Ljava/lang/StringBuffer;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v12

    move-object v10, v11

    .end local v11    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    goto :goto_3

    .end local v5    # "in":Ljava/io/InputStreamReader;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v3    # "dop":Ljava/io/DataOutputStream;
    .restart local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v11    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v12

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    goto :goto_3

    .line 802
    .end local v3    # "dop":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v4

    goto :goto_2

    .end local v10    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    :catch_5
    move-exception v4

    move-object v10, v11

    .end local v11    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    goto :goto_2
.end method

.method public static getAppInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lhdp/adapter/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1181
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lhdp/adapter/LocalAppInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1183
    .local v14, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    .line 1184
    .local v13, "packageInfo_list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v13

    .line 1185
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    .line 1186
    .local v15, "t":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-lt v10, v15, :cond_0

    .line 1205
    return-object v11

    .line 1187
    :cond_0
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    .line 1188
    .local v12, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1189
    .local v3, "packageName":Ljava/lang/String;
    iget-object v9, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1190
    .local v9, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v9, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1191
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1192
    .local v2, "appName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1193
    .local v7, "isUserApp":Z
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-gtz v0, :cond_1

    .line 1196
    const/4 v7, 0x1

    .line 1198
    :cond_1
    iget v8, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1199
    .local v8, "vercode":I
    iget-object v4, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1200
    .local v4, "versionName":Ljava/lang/String;
    iget-wide v5, v12, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 1201
    .local v5, "firstInstallTime":J
    invoke-virtual {v9, v14}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1202
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lhdp/adapter/LocalAppInfo;

    .line 1203
    invoke-direct/range {v0 .. v8}, Lhdp/adapter/LocalAppInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZI)V

    .line 1202
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public static getAutoLive()Z
    .locals 3

    .prologue
    .line 191
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "AutoLive"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhdp/http/MyApp;->AutoLive:Z

    .line 192
    sget-boolean v0, Lhdp/http/MyApp;->AutoLive:Z

    return v0
.end method

.method public static getChannelInfoUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 608
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "channelInfoUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDptvtime()J
    .locals 4

    .prologue
    .line 465
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "dpTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getExitPicmd5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 389
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "exitpicmd5"

    const-string v2, "1991"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFloatArray(Landroid/content/SharedPreferences;Ljava/lang/String;)[F
    .locals 7
    .param p0, "pref"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1225
    const/4 v0, 0x0

    .line 1226
    .local v0, "array":[F
    const/4 v5, 0x0

    invoke-interface {p0, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1227
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1229
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1230
    .local v3, "json":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v0, v5, [F

    .line 1231
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-lt v2, v5, :cond_1

    .line 1237
    .end local v2    # "i":I
    .end local v3    # "json":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-object v0

    .line 1232
    .restart local v2    # "i":I
    .restart local v3    # "json":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v0, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1233
    .end local v2    # "i":I
    .end local v3    # "json":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 1234
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getIsfirst()Z
    .locals 3

    .prologue
    .line 593
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    sget-object v1, Lhdp/http/MyApp;->IsFirst:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getJiemaType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "JieMaType"

    const-string v2, "HARD"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLiveArea()Ljava/lang/String;
    .locals 3

    .prologue
    .line 533
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "LiveArea"

    const-string v2, "-"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhdp/http/MyApp;->LiveArea:Ljava/lang/String;

    .line 534
    sget-object v0, Lhdp/http/MyApp;->LiveArea:Ljava/lang/String;

    return-object v0
.end method

.method public static getMychannelInfotid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 578
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "TID"

    const-string v2, "custom02"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMychannelInfovid()I
    .locals 3

    .prologue
    .line 574
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "VID"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMytvtime()J
    .locals 4

    .prologue
    .line 449
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sdTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPassWord(I)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 270
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pw"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShowFav()Z
    .locals 3

    .prologue
    .line 303
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ShowFav"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getShowLast()Z
    .locals 3

    .prologue
    .line 292
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ShowLast"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getShowLocal()Z
    .locals 3

    .prologue
    .line 281
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ShowLocal"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getTimeout(Z)I
    .locals 3
    .param p0, "p2p"    # Z

    .prologue
    .line 354
    if-eqz p0, :cond_0

    .line 355
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "Timeout_p2p"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 357
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "Timeout_del"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getTumd5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 374
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "picmd5"

    const-string v2, "1991"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTurn()Z
    .locals 3

    .prologue
    .line 316
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ChannelTurn"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getTvScale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "TvScale"

    const-string v2, "quanping"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTvSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 231
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "TvSize"

    const-string v2, "middle"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVitamioStatic()Z
    .locals 3

    .prologue
    .line 519
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sook"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getVolSet()Z
    .locals 3

    .prologue
    .line 1221
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "VolSet"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getWifiMacAddress(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1136
    const/4 v4, 0x0

    .line 1137
    .local v4, "mac":[B
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1140
    .local v7, "sb":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 1141
    .local v5, "netInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_2

    .line 1162
    .end local v5    # "netInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_1
    if-eqz v4, :cond_1

    .line 1163
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v8, v4

    if-lt v2, v8, :cond_5

    .line 1166
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lhdp/http/MyApp;->macAddress:Ljava/lang/String;

    .line 1167
    sget-object v8, Lhdp/http/MyApp;->macAddress:Ljava/lang/String;

    invoke-static {v8}, Lhdp/http/MyApp;->setmacAddress(Ljava/lang/String;)V

    .line 1170
    .end local v2    # "i":I
    :cond_1
    const-wide/16 v8, 0x1f4

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1174
    :goto_3
    return-void

    .line 1142
    .restart local v5    # "netInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    :try_start_2
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 1143
    .local v6, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .line 1145
    .local v0, "address":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1146
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1147
    .local v3, "ip":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v8

    if-nez v8, :cond_3

    instance-of v8, v3, Ljava/net/Inet4Address;

    if-eqz v8, :cond_3

    .line 1148
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1150
    invoke-virtual {v3}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1151
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    goto :goto_4

    .line 1152
    :cond_4
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1153
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getHardwareAddress()[B
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 1154
    goto :goto_0

    .line 1158
    .end local v0    # "address":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "ip":Ljava/net/InetAddress;
    .end local v5    # "netInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v6    # "ni":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v1

    .line 1159
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1

    .line 1164
    .end local v1    # "e":Ljava/net/SocketException;
    .restart local v2    # "i":I
    :cond_5
    aget-byte v8, v4, v2

    invoke-static {v8}, Lhdp/http/MyApp;->parseByte(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1163
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1171
    .end local v2    # "i":I
    :catch_1
    move-exception v1

    .line 1172
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method public static get_livekey()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "time-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 177
    const/16 v2, 0x8

    .line 176
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    const-string v1, "/key-52itvlive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lhdp/http/MD5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const/16 v1, 0x10

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 174
    return-object v0
.end method

.method public static getgimicode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 434
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "gimicode"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getgimiuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 404
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "gimiuid"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getgimiuser()Ljava/lang/String;
    .locals 3

    .prologue
    .line 419
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "gimiuser"

    const-string v2, "Error:\u91cd\u542f\u518d\u8bd5!"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getmacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 541
    sget-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    const-string v1, "macAddress"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static is_str(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "strUrl"    # Ljava/lang/String;
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 711
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    const/4 v0, 0x1

    .line 714
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseByte(B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseTxt(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, -0x2

    const/4 v10, -0x1

    .line 946
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 950
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 951
    .local v3, "in":Ljava/io/BufferedInputStream;
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 952
    const/4 v8, 0x3

    new-array v1, v8, [B

    .line 953
    .local v1, "first3bytes":[B
    invoke-virtual {v3, v1}, Ljava/io/BufferedInputStream;->read([B)I

    .line 954
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->reset()V

    .line 955
    const/4 v8, 0x0

    aget-byte v8, v1, v8

    const/16 v9, -0x11

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    aget-byte v8, v1, v8

    const/16 v9, -0x45

    if-ne v8, v9, :cond_1

    .line 956
    const/4 v8, 0x2

    aget-byte v8, v1, v8

    const/16 v9, -0x41

    if-ne v8, v9, :cond_1

    .line 957
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "utf-8"

    invoke-direct {v8, v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 981
    .local v6, "reader":Ljava/io/BufferedReader;
    :goto_0
    const/4 v4, 0x0

    .line 982
    .local v4, "line":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 1004
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1011
    .end local v1    # "first3bytes":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_2
    return-object v5

    .line 958
    .restart local v1    # "first3bytes":[B
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :cond_1
    const/4 v8, 0x0

    aget-byte v8, v1, v8

    if-ne v8, v10, :cond_2

    .line 959
    const/4 v8, 0x1

    aget-byte v8, v1, v8

    if-ne v8, v11, :cond_2

    .line 960
    new-instance v6, Ljava/io/BufferedReader;

    .line 961
    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "unicode"

    invoke-direct {v8, v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 960
    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 962
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_2
    const/4 v8, 0x0

    aget-byte v8, v1, v8

    if-ne v8, v11, :cond_3

    .line 963
    const/4 v8, 0x1

    aget-byte v8, v1, v8

    if-ne v8, v10, :cond_3

    .line 964
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    .line 965
    const-string v9, "utf-16be"

    invoke-direct {v8, v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 964
    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 966
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_3
    const/4 v8, 0x0

    aget-byte v8, v1, v8

    if-ne v8, v10, :cond_4

    .line 967
    const/4 v8, 0x1

    aget-byte v8, v1, v8

    if-ne v8, v10, :cond_4

    .line 968
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    .line 969
    const-string v9, "utf-16le"

    invoke-direct {v8, v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 968
    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 970
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 971
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_4
    invoke-static {p0}, Lhdp/http/MyApp;->Getcodeing(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 972
    invoke-static {p0}, Lhdp/http/MyApp;->Getcodeing(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 973
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    .line 974
    const-string v9, "utf-8"

    invoke-direct {v8, v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 973
    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 975
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 976
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_5
    new-instance v6, Ljava/io/BufferedReader;

    .line 977
    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "GBK"

    invoke-direct {v8, v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 976
    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 983
    .restart local v4    # "line":Ljava/lang/String;
    :cond_6
    const-string v8, "DIY"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "line="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 988
    const-string v8, "\uff0c"

    invoke-static {v8, v4}, Lhdp/http/MyApp;->detectLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 990
    .local v7, "result":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 991
    const-string v8, ","

    invoke-static {v8, v4}, Lhdp/http/MyApp;->detectLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 993
    :cond_7
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 994
    const-string v8, "\\|"

    invoke-static {v8, v4}, Lhdp/http/MyApp;->detectLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 996
    :cond_8
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 997
    const-string v8, " "

    invoke-static {v8, v4}, Lhdp/http/MyApp;->detectLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 999
    :cond_9
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1000
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 1006
    .end local v1    # "first3bytes":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v8, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1008
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static putFloatArray(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;[F)V
    .locals 7
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "array"    # [F

    .prologue
    .line 1242
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1243
    .local v2, "json":Lorg/json/JSONArray;
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 1245
    const-string v3, "equalizer_values"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1249
    .end local v2    # "json":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 1243
    .restart local v2    # "json":Lorg/json/JSONArray;
    :cond_0
    aget v1, p2, v3

    .line 1244
    .local v1, "f":F
    float-to-double v5, v1

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1246
    .end local v1    # "f":F
    .end local v2    # "json":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 1247
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static readJson(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v10, -0x2

    const/4 v9, -0x1

    .line 1015
    const-string v6, ""

    .line 1018
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1019
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1020
    .local v3, "in":Ljava/io/BufferedInputStream;
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 1021
    const/4 v7, 0x3

    new-array v1, v7, [B

    .line 1022
    .local v1, "first3bytes":[B
    invoke-virtual {v3, v1}, Ljava/io/BufferedInputStream;->read([B)I

    .line 1023
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->reset()V

    .line 1024
    const/4 v7, 0x0

    aget-byte v7, v1, v7

    const/16 v8, -0x11

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    const/16 v8, -0x45

    if-ne v7, v8, :cond_0

    .line 1025
    const/4 v7, 0x2

    aget-byte v7, v1, v7

    const/16 v8, -0x41

    if-ne v7, v8, :cond_0

    .line 1026
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "utf-8"

    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1050
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_0
    const/4 v4, 0x0

    .line 1051
    .local v4, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1055
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1062
    .end local v1    # "first3bytes":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_2
    return-object v6

    .line 1027
    .restart local v1    # "first3bytes":[B
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :cond_0
    const/4 v7, 0x0

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_1

    .line 1028
    const/4 v7, 0x1

    aget-byte v7, v1, v7

    if-ne v7, v10, :cond_1

    .line 1029
    new-instance v5, Ljava/io/BufferedReader;

    .line 1030
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "unicode"

    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1029
    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1031
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_1
    const/4 v7, 0x0

    aget-byte v7, v1, v7

    if-ne v7, v10, :cond_2

    .line 1032
    const/4 v7, 0x1

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_2

    .line 1033
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 1034
    const-string v8, "utf-16be"

    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1033
    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1035
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    const/4 v7, 0x0

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_3

    .line 1036
    const/4 v7, 0x1

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_3

    .line 1037
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 1038
    const-string v8, "utf-16le"

    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1037
    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1039
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 1040
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_3
    invoke-static {p0}, Lhdp/http/MyApp;->Getcodeing(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1041
    invoke-static {p0}, Lhdp/http/MyApp;->Getcodeing(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1042
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 1043
    const-string v8, "utf-8"

    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1042
    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1044
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 1045
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_4
    new-instance v5, Ljava/io/BufferedReader;

    .line 1046
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "GBK"

    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1045
    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 1052
    .restart local v4    # "line":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto/16 :goto_1

    .line 1057
    .end local v1    # "first3bytes":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v7, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1059
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static saveDpplayTvFile(Ljava/lang/String;Z)V
    .locals 9
    .param p0, "httpurl"    # Ljava/lang/String;
    .param p1, "brk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 823
    const/4 v6, 0x0

    .line 824
    .local v6, "url":Ljava/net/URL;
    const/4 v1, 0x0

    .line 825
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 826
    .local v3, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/net/URL;

    .end local v6    # "url":Ljava/net/URL;
    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 827
    .restart local v6    # "url":Ljava/net/URL;
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lhdp/http/MyApp;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dpplay_tv.txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 828
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 829
    .local v5, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 830
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    if-eqz p1, :cond_0

    .line 831
    const/16 v7, 0x2710

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 833
    :cond_0
    const/16 v7, 0x1388

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 834
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 835
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 836
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 837
    .local v0, "buff":[B
    const/4 v4, 0x0

    .line 838
    .local v4, "len":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    .line 841
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 842
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 843
    return-void

    .line 839
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static setAutoLive(Z)V
    .locals 2
    .param p0, "str"    # Z

    .prologue
    .line 184
    sput-boolean p0, Lhdp/http/MyApp;->AutoLive:Z

    .line 185
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "AutoLive"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    return-void
.end method

.method public static setChannelInfoUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 602
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 603
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "channelInfoUrl"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 604
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 605
    return-void
.end method

.method public static setDptvtime(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 459
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 460
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "dpTime"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 461
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 462
    return-void
.end method

.method public static setErrorUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 624
    sput-object p0, Lhdp/http/MyApp;->ErrorUrl:Ljava/lang/String;

    .line 625
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 626
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ErrorUrl"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 627
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 628
    return-void
.end method

.method public static setExitPicmd5(Ljava/lang/String;)V
    .locals 2
    .param p0, "md5"    # Ljava/lang/String;

    .prologue
    .line 383
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 384
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "exitpicmd5"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    return-void
.end method

.method public static setIsfirst(Z)V
    .locals 2
    .param p0, "str"    # Z

    .prologue
    .line 587
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 588
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lhdp/http/MyApp;->IsFirst:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 589
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 590
    return-void
.end method

.method public static setJiemaType(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 212
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "JieMaType"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void
.end method

.method public static setLiveArea(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 526
    sput-object p0, Lhdp/http/MyApp;->LiveArea:Ljava/lang/String;

    .line 527
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 528
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LiveArea"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 529
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 530
    return-void
.end method

.method public static setLiveEpg(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 666
    sput-object p0, Lhdp/http/MyApp;->LiveEpg:Ljava/lang/String;

    .line 667
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 668
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LiveEpg"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 669
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 670
    return-void
.end method

.method public static setLiveNextEpg(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 673
    sput-object p0, Lhdp/http/MyApp;->LiveNextEpg:Ljava/lang/String;

    .line 674
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 675
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LiveNextEpg"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 676
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 677
    return-void
.end method

.method public static setLiveNextUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 680
    sput-object p0, Lhdp/http/MyApp;->LiveNextUrl:Ljava/lang/String;

    .line 681
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 682
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LiveNextUrl"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 683
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 684
    return-void
.end method

.method public static setLiveSeek(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 652
    sput-object p0, Lhdp/http/MyApp;->LiveSeek:Ljava/lang/String;

    .line 653
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 654
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LiveSeek"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 655
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 656
    return-void
.end method

.method public static setLive_Cookie(Ljava/lang/String;)V
    .locals 2
    .param p0, "Cookie"    # Ljava/lang/String;

    .prologue
    .line 631
    sput-object p0, Lhdp/http/MyApp;->LiveCookie:Ljava/lang/String;

    .line 632
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 633
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LiveCookie"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 634
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 635
    return-void
.end method

.method public static setLive_Range(Ljava/lang/String;)V
    .locals 2
    .param p0, "range"    # Ljava/lang/String;

    .prologue
    .line 645
    sput-object p0, Lhdp/http/MyApp;->Live_Range:Ljava/lang/String;

    .line 646
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 647
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Live_Range"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 648
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 649
    return-void
.end method

.method public static setLive_Referer(Ljava/lang/String;)V
    .locals 2
    .param p0, "referer"    # Ljava/lang/String;

    .prologue
    .line 638
    sput-object p0, Lhdp/http/MyApp;->Live_Referer:Ljava/lang/String;

    .line 639
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 640
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Live_Referer"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 641
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 642
    return-void
.end method

.method public static setMychannelInfo(Ljava/lang/String;I)V
    .locals 2
    .param p0, "tid"    # Ljava/lang/String;
    .param p1, "vid"    # I

    .prologue
    .line 567
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 568
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TID"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 569
    const-string v1, "VID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 570
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 571
    return-void
.end method

.method public static setMytvtime(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 443
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 444
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sdTime"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 445
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 446
    return-void
.end method

.method public static setPassWord(ILjava/lang/String;)V
    .locals 3
    .param p0, "i"    # I
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 257
    if-ne p0, v2, :cond_1

    .line 258
    sput-boolean v2, Lhdp/player/StartActivity;->Pw1:Z

    .line 264
    :cond_0
    :goto_0
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pw"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    return-void

    .line 259
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 260
    sput-boolean v2, Lhdp/player/StartActivity;->Pw2:Z

    goto :goto_0

    .line 261
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 262
    sput-boolean v2, Lhdp/player/StartActivity;->Pw3:Z

    goto :goto_0
.end method

.method public static setShowFav(Z)V
    .locals 2
    .param p0, "str"    # Z

    .prologue
    .line 297
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 298
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ShowFav"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 300
    return-void
.end method

.method public static setShowLast(Z)V
    .locals 2
    .param p0, "str"    # Z

    .prologue
    .line 286
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ShowLast"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return-void
.end method

.method public static setShowLocal(Z)V
    .locals 2
    .param p0, "str"    # Z

    .prologue
    .line 275
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ShowLocal"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    return-void
.end method

.method public static setTimeout(IZ)V
    .locals 2
    .param p0, "time"    # I
    .param p1, "p2p"    # Z

    .prologue
    .line 344
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 346
    const-string v1, "Timeout_p2p"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 350
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 351
    return-void

    .line 348
    :cond_0
    const-string v1, "Timeout_del"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setTumd5(Ljava/lang/String;)V
    .locals 2
    .param p0, "md5"    # Ljava/lang/String;

    .prologue
    .line 368
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 369
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "picmd5"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 370
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    return-void
.end method

.method public static setTurn(Z)V
    .locals 2
    .param p0, "str"    # Z

    .prologue
    .line 310
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ChannelTurn"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 313
    return-void
.end method

.method public static setTvScale(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 239
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 240
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TvScale"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    return-void
.end method

.method public static setTvSize(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 225
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TvSize"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    return-void
.end method

.method public static setUserMac(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 659
    sput-object p0, Lhdp/http/MyApp;->User_Mac:Ljava/lang/String;

    .line 660
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 661
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "User_Mac"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 662
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 663
    return-void
.end method

.method public static setVitamioStatic(Z)V
    .locals 2
    .param p0, "str"    # Z

    .prologue
    .line 513
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 514
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sook"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 515
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 516
    return-void
.end method

.method public static setVolSet(Z)V
    .locals 2
    .param p0, "str"    # Z

    .prologue
    .line 1212
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1213
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "VolSet"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1215
    return-void
.end method

.method public static setgimicode(Ljava/lang/String;)V
    .locals 2
    .param p0, "md5"    # Ljava/lang/String;

    .prologue
    .line 428
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 429
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "gimicode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 430
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 431
    return-void
.end method

.method public static setgimiuid(Ljava/lang/String;)V
    .locals 2
    .param p0, "md5"    # Ljava/lang/String;

    .prologue
    .line 398
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "gimiuid"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 401
    return-void
.end method

.method public static setgimiuser(Ljava/lang/String;)V
    .locals 2
    .param p0, "md5"    # Ljava/lang/String;

    .prologue
    .line 413
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 414
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "gimiuser"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    return-void
.end method

.method public static setmacAddress(Ljava/lang/String;)V
    .locals 2
    .param p0, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 545
    sget-object v1, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 546
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "macAddress"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 547
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 548
    return-void
.end method

.method public static startP2p()V
    .locals 3

    .prologue
    .line 921
    invoke-static {}, Lcom/forcetech/android/ForceTV;->isP2PStart()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 924
    :try_start_0
    invoke-static {}, Lcom/forcetech/android/ForceTV;->initForceClient()V

    .line 926
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 927
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 928
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 926
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 929
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 930
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "p2p"

    const-string v2, "start p2p try_catch"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static vst_jq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .prologue
    .line 699
    const-string v0, ""

    .line 700
    .local v0, "retstr":Ljava/lang/String;
    invoke-static {p0, p1}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 701
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "string":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-static {v1, p2}, Lhdp/http/MyApp;->is_str(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    invoke-virtual {v1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 707
    :cond_1
    return-object v1
.end method


# virtual methods
.method public TwoDevice(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 159
    const-string v0, "http://211.149.150.195/live/gimitv.apk"

    sput-object v0, Lhdp/http/MyApp;->UpdateApk:Ljava/lang/String;

    .line 160
    sget-object v0, Lhdp/http/MyApp;->UpdateUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "gimi"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhdp/http/MyApp;->UpdateUrl:Ljava/lang/String;

    .line 161
    sget-object v0, Lhdp/http/MyApp;->UpdateTxt:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "gimi"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhdp/http/MyApp;->UpdateTxt:Ljava/lang/String;

    .line 162
    sget-object v0, Lhdp/http/MyApp;->UpdateTxtTime:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "gimi"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhdp/http/MyApp;->UpdateTxtTime:Ljava/lang/String;

    .line 171
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 136
    sput-object p0, Lhdp/http/MyApp;->mContext:Landroid/content/Context;

    .line 137
    sget-object v0, Lhdp/http/MyApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhdp/util/AppUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhdp/http/MyApp;->IsFirst:Ljava/lang/String;

    .line 138
    sget-object v0, Lhdp/http/MyApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhdp/util/ACache;->get(Landroid/content/Context;)Lhdp/util/ACache;

    move-result-object v0

    sput-object v0, Lhdp/http/MyApp;->aCache:Lhdp/util/ACache;

    .line 140
    invoke-virtual {p0}, Lhdp/http/MyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settingSPF"

    .line 141
    const/4 v2, 0x0

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lhdp/http/MyApp;->sp:Landroid/content/SharedPreferences;

    .line 143
    sget-object v0, Lhdp/http/MyApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhdp/util/LiveDataHelper;->getInstance(Landroid/content/Context;)Lhdp/util/LiveDataHelper;

    move-result-object v0

    sput-object v0, Lhdp/http/MyApp;->dataHelper:Lhdp/util/LiveDataHelper;

    .line 146
    invoke-static {}, Lhdp/http/CrashHandler;->getCrashHandler()Lhdp/http/CrashHandler;

    move-result-object v0

    .line 145
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 148
    sget-boolean v0, Lhdp/http/MyApp;->IsGiMiDevice:Z

    invoke-virtual {p0, v0}, Lhdp/http/MyApp;->TwoDevice(Z)V

    .line 150
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 722
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 723
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 718
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 719
    return-void
.end method
