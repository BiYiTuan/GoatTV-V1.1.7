.class Lhdp/player/Bangding$5;
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
    iput-object p1, p0, Lhdp/player/Bangding$5;->this$0:Lhdp/player/Bangding;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 252
    :try_start_0
    sget-object v1, Lhdp/http/MyApp;->JieBang:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lhdp/http/MyApp;->GetUUID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 253
    invoke-static {}, Lhdp/http/MyApp;->getgimicode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 252
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 253
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 251
    invoke-static {v1, v2, v3}, Lhdp/http/MyApp;->executeHttpGet(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 254
    const-string v1, "-1"

    invoke-static {v1}, Lhdp/http/MyApp;->setgimiuser(Ljava/lang/String;)V

    .line 255
    const-string v1, "-1"

    invoke-static {v1}, Lhdp/http/MyApp;->setgimiuid(Ljava/lang/String;)V

    .line 256
    const-string v1, "-1"

    invoke-static {v1}, Lhdp/http/MyApp;->setgimicode(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lhdp/player/Bangding$5;->this$0:Lhdp/player/Bangding;

    invoke-virtual {v1}, Lhdp/player/Bangding;->finish()V

    .line 258
    iget-object v1, p0, Lhdp/player/Bangding$5;->this$0:Lhdp/player/Bangding;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lhdp/player/Bangding$5;->this$0:Lhdp/player/Bangding;

    const-class v4, Lhdp/player/Bangding;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lhdp/player/Bangding;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
