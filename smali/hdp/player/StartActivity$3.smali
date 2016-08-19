.class Lhdp/player/StartActivity$3;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/StartActivity;
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
    iput-object p1, p0, Lhdp/player/StartActivity$3;->this$0:Lhdp/player/StartActivity;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 562
    :try_start_0
    sget-object v4, Lhdp/http/MyApp;->BangCheck:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lhdp/http/MyApp;->GetUUID()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 563
    const/4 v6, 0x0

    .line 561
    invoke-static {v4, v5, v6}, Lhdp/http/MyApp;->executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "json":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 565
    .local v3, "object":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 566
    .local v0, "code":I
    if-ne v0, v8, :cond_0

    .line 567
    const-string v4, "username"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhdp/http/MyApp;->setgimiuser(Ljava/lang/String;)V

    .line 568
    const-string v4, "uid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhdp/http/MyApp;->setgimiuid(Ljava/lang/String;)V

    .line 569
    const-string v4, "checkcode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhdp/http/MyApp;->setgimicode(Ljava/lang/String;)V

    .line 578
    .end local v0    # "code":I
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 571
    .restart local v0    # "code":I
    .restart local v2    # "json":Ljava/lang/String;
    .restart local v3    # "object":Lorg/json/JSONObject;
    :cond_0
    const-string v4, "-1"

    invoke-static {v4}, Lhdp/http/MyApp;->setgimiuser(Ljava/lang/String;)V

    .line 572
    const-string v4, "-1"

    invoke-static {v4}, Lhdp/http/MyApp;->setgimiuid(Ljava/lang/String;)V

    .line 573
    const-string v4, "-1"

    invoke-static {v4}, Lhdp/http/MyApp;->setgimicode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v0    # "code":I
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 576
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
