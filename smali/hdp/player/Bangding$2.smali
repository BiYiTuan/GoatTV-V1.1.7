.class Lhdp/player/Bangding$2;
.super Ljava/lang/Object;
.source "Bangding.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/Bangding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/Bangding;


# direct methods
.method constructor <init>(Lhdp/player/Bangding;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/Bangding$2;->this$0:Lhdp/player/Bangding;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 151
    :try_start_0
    sget-object v4, Lhdp/http/MyApp;->BangDingCode:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lhdp/http/MyApp;->GetUUID()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 152
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, " "

    const-string v9, "-"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 150
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 152
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 150
    invoke-static {v4, v5, v6}, Lhdp/http/MyApp;->executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "json":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    .local v3, "object":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, "code":I
    if-nez v0, :cond_1

    .line 156
    iget-object v4, p0, Lhdp/player/Bangding$2;->this$0:Lhdp/player/Bangding;

    const-string v5, "checkcode"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhdp/player/Bangding;->access$3(Lhdp/player/Bangding;Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lhdp/player/Bangding$2;->this$0:Lhdp/player/Bangding;

    iget-object v4, v4, Lhdp/player/Bangding;->textView_code:Landroid/widget/TextView;

    iget-object v5, p0, Lhdp/player/Bangding$2;->this$0:Lhdp/player/Bangding;

    # getter for: Lhdp/player/Bangding;->checkcode:Ljava/lang/String;
    invoke-static {v5}, Lhdp/player/Bangding;->access$4(Lhdp/player/Bangding;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v4, p0, Lhdp/player/Bangding$2;->this$0:Lhdp/player/Bangding;

    iget-object v4, v4, Lhdp/player/Bangding;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    .end local v0    # "code":I
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v0    # "code":I
    .restart local v2    # "json":Ljava/lang/String;
    .restart local v3    # "object":Lorg/json/JSONObject;
    :cond_1
    if-ne v0, v10, :cond_0

    .line 160
    iget-object v4, p0, Lhdp/player/Bangding$2;->this$0:Lhdp/player/Bangding;

    iget-object v4, v4, Lhdp/player/Bangding;->handler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v0    # "code":I
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
