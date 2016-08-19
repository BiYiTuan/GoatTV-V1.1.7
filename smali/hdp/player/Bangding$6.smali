.class Lhdp/player/Bangding$6;
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
    iput-object p1, p0, Lhdp/player/Bangding$6;->this$0:Lhdp/player/Bangding;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 269
    :try_start_0
    iget-object v4, p0, Lhdp/player/Bangding$6;->this$0:Lhdp/player/Bangding;

    iget-object v4, v4, Lhdp/player/Bangding;->button:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 271
    sget-object v4, Lhdp/http/MyApp;->BanglistUrl:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lhdp/http/MyApp;->getgimiuid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 272
    const/4 v5, 0x1

    .line 270
    invoke-static {v4, v5}, Lhdp/http/MyApp;->executeHttpGet01(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "json":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 274
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v4, Lhdp/javabean/BangDataInfo;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhdp/javabean/BangDataInfo;

    .line 276
    .local v2, "info":Lhdp/javabean/BangDataInfo;
    iget-object v4, p0, Lhdp/player/Bangding$6;->this$0:Lhdp/player/Bangding;

    iget-object v4, v4, Lhdp/player/Bangding;->button:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 277
    const/4 v4, 0x1

    sput-boolean v4, Lhdp/player/LiveChannelList;->NewType:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "info":Lhdp/javabean/BangDataInfo;
    .end local v3    # "json":Ljava/lang/String;
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lhdp/player/Bangding$6;->this$0:Lhdp/player/Bangding;

    iget-object v4, v4, Lhdp/player/Bangding;->button:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 280
    const-string v4, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
