.class Lhdp/player/StartActivity$9;
.super Ljava/lang/Thread;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/StartActivity;->CheckUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/StartActivity;


# direct methods
.method constructor <init>(Lhdp/player/StartActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    .line 801
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 805
    :try_start_0
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xc

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 806
    const-string v8, "StartActivity"

    const-string v9, "\u66f4\u65b0\u68c0\u67e51"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 809
    .local v4, "gson":Lcom/google/gson/Gson;
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->apkInfoUrl:Ljava/lang/String;
    invoke-static {v8}, Lhdp/player/StartActivity;->access$24(Lhdp/player/StartActivity;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    .line 810
    const/4 v10, 0x0

    .line 809
    invoke-static {v8, v9, v10}, Lhdp/http/MyApp;->executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 812
    .local v5, "jsontxt":Ljava/lang/String;
    const-class v8, Lhdp/javabean/UpdateInfo;

    .line 811
    invoke-virtual {v4, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/UpdateInfo;

    .line 813
    .local v0, "apkInfo":Lhdp/javabean/UpdateInfo;
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    iget-object v9, v0, Lhdp/javabean/UpdateInfo;->recommendapp:Lhdp/javabean/AppInfo$NetApp;

    iget-object v9, v9, Lhdp/javabean/AppInfo$NetApp;->packagename:Ljava/lang/String;

    invoke-static {v8, v9}, Lhdp/player/StartActivity;->access$25(Lhdp/player/StartActivity;Ljava/lang/String;)V

    .line 814
    sget-object v8, Lhdp/http/MyApp;->aCache:Lhdp/util/ACache;

    const-string v9, "json"

    invoke-virtual {v8, v9, v5}, Lhdp/util/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    invoke-static {v8}, Lhdp/http/MyApp;->getAppInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 823
    .local v6, "localAppInfos":Ljava/util/List;, "Ljava/util/List<Lhdp/adapter/LocalAppInfo;>;"
    invoke-static {}, Lhdp/http/MyApp;->getIsfirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 824
    const-string v8, "null"

    .line 825
    iget-object v9, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->recommendAppPackageName:Ljava/lang/String;
    invoke-static {v9}, Lhdp/player/StartActivity;->access$26(Lhdp/player/StartActivity;)Ljava/lang/String;

    move-result-object v9

    .line 824
    invoke-static {v6, v9}, Lhdp/util/AppUtils;->IsInstall(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 825
    if-eqz v8, :cond_2

    .line 826
    const-string v8, "HDP"

    .line 827
    const-string v9, "BaiduMobAd_CHANNEL"

    invoke-static {v9}, Lhdp/util/AppUtils;->getMetaDataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 826
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 827
    if-eqz v8, :cond_0

    iget v8, v0, Lhdp/javabean/UpdateInfo;->channelpush:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    :cond_0
    iget v8, v0, Lhdp/javabean/UpdateInfo;->channelpush:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 828
    :cond_1
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lhdp/player/StartActivity;->access$27(Lhdp/player/StartActivity;Z)V

    .line 829
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    const-string v11, "Net_App"

    .line 830
    const/4 v12, 0x0

    .line 829
    invoke-virtual {v10, v11, v12}, Lhdp/player/StartActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    .line 830
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 831
    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lhdp/javabean/UpdateInfo;->recommendapp:Lhdp/javabean/AppInfo$NetApp;

    iget-object v10, v10, Lhdp/javabean/AppInfo$NetApp;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 829
    invoke-static {v8, v9}, Lhdp/player/StartActivity;->access$28(Lhdp/player/StartActivity;Ljava/lang/String;)V

    .line 832
    const-string v8, "StartActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "recommend app save url: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 833
    iget-object v10, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->recommendAppSaveUrl:Ljava/lang/String;
    invoke-static {v10}, Lhdp/player/StartActivity;->access$20(Lhdp/player/StartActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 832
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 835
    .local v7, "msg":Landroid/os/Message;
    const/16 v8, 0x8

    iput v8, v7, Landroid/os/Message;->what:I

    .line 836
    iget-object v8, v0, Lhdp/javabean/UpdateInfo;->recommendapp:Lhdp/javabean/AppInfo$NetApp;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 837
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 840
    :goto_0
    const-string v8, "StartActivity"

    const-string v9, "sleep!!!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->checkUpdateFlag:Z
    invoke-static {v8}, Lhdp/player/StartActivity;->access$29(Lhdp/player/StartActivity;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 842
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->recommendAppSaveUrl:Ljava/lang/String;
    invoke-static {v8}, Lhdp/player/StartActivity;->access$20(Lhdp/player/StartActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 843
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 844
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 852
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    iget v9, v0, Lhdp/javabean/UpdateInfo;->verCode:I

    invoke-static {v8, v9}, Lhdp/player/StartActivity;->access$30(Lhdp/player/StartActivity;I)V

    .line 853
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    iget-object v9, v0, Lhdp/javabean/UpdateInfo;->verName:Ljava/lang/String;

    invoke-static {v8, v9}, Lhdp/player/StartActivity;->access$31(Lhdp/player/StartActivity;Ljava/lang/String;)V

    .line 854
    iget-object v8, v0, Lhdp/javabean/UpdateInfo;->exitpicmd5:Ljava/lang/String;

    sput-object v8, Lhdp/http/MyApp;->ExitPicMd5:Ljava/lang/String;

    .line 855
    iget-object v8, v0, Lhdp/javabean/UpdateInfo;->exitpicurl:Ljava/lang/String;

    sput-object v8, Lhdp/http/MyApp;->ExitPicUrl:Ljava/lang/String;

    .line 856
    iget-object v8, v0, Lhdp/javabean/UpdateInfo;->picaddr:Ljava/lang/String;

    sput-object v8, Lhdp/http/MyApp;->Picaddr:Ljava/lang/String;

    .line 857
    iget-object v8, v0, Lhdp/javabean/UpdateInfo;->exitpicaddr:Ljava/lang/String;

    sput-object v8, Lhdp/http/MyApp;->ExitPicaddr:Ljava/lang/String;

    .line 858
    iget-object v8, v0, Lhdp/javabean/UpdateInfo;->picmd5:Ljava/lang/String;

    sput-object v8, Lhdp/http/MyApp;->TuMd5:Ljava/lang/String;

    .line 869
    iget-object v8, v0, Lhdp/javabean/UpdateInfo;->txt:Ljava/lang/String;

    sput-object v8, Lhdp/http/MyApp;->SHowTxt:Ljava/lang/String;

    .line 870
    iget v8, v0, Lhdp/javabean/UpdateInfo;->txtime:I

    int-to-long v8, v8

    sput-wide v8, Lhdp/http/MyApp;->SHowTime:J

    .line 872
    const-string v8, "BaiduMobAd_CHANNEL"

    const-string v9, "HDP"

    .line 871
    invoke-static {v8, v9}, Lhdp/util/AppUtils;->getMetaDataValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "appPackageName":Ljava/lang/String;
    const-string v8, "dpplay"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 875
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v0, Lhdp/javabean/UpdateInfo;->apkurl:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "dpplay_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 876
    iget-object v9, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->newVersionCode:I
    invoke-static {v9}, Lhdp/player/StartActivity;->access$32(Lhdp/player/StartActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 875
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lhdp/http/MyApp;->UpdateApk:Ljava/lang/String;

    .line 877
    const-string v8, "StartActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "UpdateApk url is:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lhdp/http/MyApp;->UpdateApk:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :goto_1
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->newVersionCode:I
    invoke-static {v8}, Lhdp/player/StartActivity;->access$32(Lhdp/player/StartActivity;)I

    move-result v8

    iget-object v9, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->curVersionCode:I
    invoke-static {v9}, Lhdp/player/StartActivity;->access$33(Lhdp/player/StartActivity;)I

    move-result v9

    if-le v8, v9, :cond_a

    .line 888
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x5

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    :goto_2
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xd

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 909
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # invokes: Lhdp/player/StartActivity;->MyTv()V
    invoke-static {v8}, Lhdp/player/StartActivity;->access$22(Lhdp/player/StartActivity;)V

    .line 910
    invoke-static {}, Lhdp/http/MyApp;->MyTVFileDel()V

    .line 911
    sget-object v8, Lhdp/http/MyApp;->ExitPicMd5:Ljava/lang/String;

    invoke-static {}, Lhdp/http/MyApp;->getExitPicmd5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 912
    sget-boolean v8, Lhdp/http/MyApp;->IsGiMiDevice:Z

    if-nez v8, :cond_3

    .line 913
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    const-string v9, "exitpic"

    # invokes: Lhdp/player/StartActivity;->GetImages(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lhdp/player/StartActivity;->access$23(Lhdp/player/StartActivity;Ljava/lang/String;)V

    .line 915
    :cond_3
    sget-object v8, Lhdp/http/MyApp;->TuMd5:Ljava/lang/String;

    invoke-static {}, Lhdp/http/MyApp;->getTumd5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 916
    sget-boolean v8, Lhdp/http/MyApp;->IsGiMiDevice:Z

    if-nez v8, :cond_4

    .line 917
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    const-string v9, "start"

    # invokes: Lhdp/player/StartActivity;->GetImages(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lhdp/player/StartActivity;->access$23(Lhdp/player/StartActivity;Ljava/lang/String;)V

    .line 920
    .end local v0    # "apkInfo":Lhdp/javabean/UpdateInfo;
    .end local v1    # "appPackageName":Ljava/lang/String;
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v5    # "jsontxt":Ljava/lang/String;
    .end local v6    # "localAppInfos":Ljava/util/List;, "Ljava/util/List<Lhdp/adapter/LocalAppInfo;>;"
    :cond_4
    :goto_3
    return-void

    .line 848
    .restart local v0    # "apkInfo":Lhdp/javabean/UpdateInfo;
    .restart local v4    # "gson":Lcom/google/gson/Gson;
    .restart local v5    # "jsontxt":Ljava/lang/String;
    .restart local v6    # "localAppInfos":Ljava/util/List;, "Ljava/util/List<Lhdp/adapter/LocalAppInfo;>;"
    .restart local v7    # "msg":Landroid/os/Message;
    :cond_5
    const-wide/16 v8, 0x1f4

    :try_start_1
    invoke-static {v8, v9}, Lhdp/player/StartActivity$9;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 903
    .end local v0    # "apkInfo":Lhdp/javabean/UpdateInfo;
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v5    # "jsontxt":Ljava/lang/String;
    .end local v6    # "localAppInfos":Ljava/util/List;, "Ljava/util/List<Lhdp/adapter/LocalAppInfo;>;"
    .end local v7    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 904
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "error"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-string v8, "StartActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "checkupdatedown:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x1

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 908
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xd

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 909
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # invokes: Lhdp/player/StartActivity;->MyTv()V
    invoke-static {v8}, Lhdp/player/StartActivity;->access$22(Lhdp/player/StartActivity;)V

    .line 910
    invoke-static {}, Lhdp/http/MyApp;->MyTVFileDel()V

    .line 911
    sget-object v8, Lhdp/http/MyApp;->ExitPicMd5:Ljava/lang/String;

    invoke-static {}, Lhdp/http/MyApp;->getExitPicmd5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 912
    sget-boolean v8, Lhdp/http/MyApp;->IsGiMiDevice:Z

    if-nez v8, :cond_6

    .line 913
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    const-string v9, "exitpic"

    # invokes: Lhdp/player/StartActivity;->GetImages(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lhdp/player/StartActivity;->access$23(Lhdp/player/StartActivity;Ljava/lang/String;)V

    .line 915
    :cond_6
    sget-object v8, Lhdp/http/MyApp;->TuMd5:Ljava/lang/String;

    invoke-static {}, Lhdp/http/MyApp;->getTumd5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 916
    sget-boolean v8, Lhdp/http/MyApp;->IsGiMiDevice:Z

    if-nez v8, :cond_4

    .line 917
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    const-string v9, "start"

    # invokes: Lhdp/player/StartActivity;->GetImages(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lhdp/player/StartActivity;->access$23(Lhdp/player/StartActivity;Ljava/lang/String;)V

    goto :goto_3

    .line 879
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "apkInfo":Lhdp/javabean/UpdateInfo;
    .restart local v1    # "appPackageName":Ljava/lang/String;
    .restart local v4    # "gson":Lcom/google/gson/Gson;
    .restart local v5    # "jsontxt":Ljava/lang/String;
    .restart local v6    # "localAppInfos":Ljava/util/List;, "Ljava/util/List<Lhdp/adapter/LocalAppInfo;>;"
    :cond_7
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v0, Lhdp/javabean/UpdateInfo;->apkurl:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 880
    const-string v9, "/dpplay_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 881
    iget-object v9, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->newVersionCode:I
    invoke-static {v9}, Lhdp/player/StartActivity;->access$32(Lhdp/player/StartActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 879
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lhdp/http/MyApp;->UpdateApk:Ljava/lang/String;

    .line 882
    const-string v8, "StartActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "UpdateApk url is:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lhdp/http/MyApp;->UpdateApk:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 907
    .end local v0    # "apkInfo":Lhdp/javabean/UpdateInfo;
    .end local v1    # "appPackageName":Ljava/lang/String;
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v5    # "jsontxt":Ljava/lang/String;
    .end local v6    # "localAppInfos":Ljava/util/List;, "Ljava/util/List<Lhdp/adapter/LocalAppInfo;>;"
    :catchall_0
    move-exception v8

    .line 908
    iget-object v9, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xd

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 909
    iget-object v9, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # invokes: Lhdp/player/StartActivity;->MyTv()V
    invoke-static {v9}, Lhdp/player/StartActivity;->access$22(Lhdp/player/StartActivity;)V

    .line 910
    invoke-static {}, Lhdp/http/MyApp;->MyTVFileDel()V

    .line 911
    sget-object v9, Lhdp/http/MyApp;->ExitPicMd5:Ljava/lang/String;

    invoke-static {}, Lhdp/http/MyApp;->getExitPicmd5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 912
    sget-boolean v9, Lhdp/http/MyApp;->IsGiMiDevice:Z

    if-nez v9, :cond_8

    .line 913
    iget-object v9, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    const-string v10, "exitpic"

    # invokes: Lhdp/player/StartActivity;->GetImages(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lhdp/player/StartActivity;->access$23(Lhdp/player/StartActivity;Ljava/lang/String;)V

    .line 915
    :cond_8
    sget-object v9, Lhdp/http/MyApp;->TuMd5:Ljava/lang/String;

    invoke-static {}, Lhdp/http/MyApp;->getTumd5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 916
    sget-boolean v9, Lhdp/http/MyApp;->IsGiMiDevice:Z

    if-nez v9, :cond_9

    .line 917
    iget-object v9, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    const-string v10, "start"

    # invokes: Lhdp/player/StartActivity;->GetImages(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lhdp/player/StartActivity;->access$23(Lhdp/player/StartActivity;Ljava/lang/String;)V

    .line 919
    :cond_9
    throw v8

    .line 891
    .restart local v0    # "apkInfo":Lhdp/javabean/UpdateInfo;
    .restart local v1    # "appPackageName":Ljava/lang/String;
    .restart local v4    # "gson":Lcom/google/gson/Gson;
    .restart local v5    # "jsontxt":Ljava/lang/String;
    .restart local v6    # "localAppInfos":Ljava/util/List;, "Ljava/util/List<Lhdp/adapter/LocalAppInfo;>;"
    :cond_a
    :try_start_4
    iget-object v8, p0, Lhdp/player/StartActivity$9;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lhdp/player/StartActivity;->access$0(Lhdp/player/StartActivity;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x1

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method
