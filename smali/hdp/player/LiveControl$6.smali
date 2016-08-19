.class Lhdp/player/LiveControl$6;
.super Ljava/lang/Object;
.source "LiveControl.java"

# interfaces
.implements Lhdp/http/HttpWorkTask$ParseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/LiveControl;->getEpg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhdp/http/HttpWorkTask$ParseCallBack",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/LiveControl;


# direct methods
.method constructor <init>(Lhdp/player/LiveControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/LiveControl$6;->this$0:Lhdp/player/LiveControl;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParse()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lhdp/player/LiveControl$6;->this$0:Lhdp/player/LiveControl;

    # getter for: Lhdp/player/LiveControl;->EPG:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/LiveControl;->access$8(Lhdp/player/LiveControl;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    :goto_0
    return-object v1

    .line 228
    :cond_0
    :try_start_0
    iget-object v2, p0, Lhdp/player/LiveControl$6;->this$0:Lhdp/player/LiveControl;

    # getter for: Lhdp/player/LiveControl;->context:Landroid/content/Context;
    invoke-static {v2}, Lhdp/player/LiveControl;->access$9(Lhdp/player/LiveControl;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lhdp/player/LiveControl$6;->this$0:Lhdp/player/LiveControl;

    # getter for: Lhdp/player/LiveControl;->EPG:Ljava/lang/String;
    invoke-static {v3}, Lhdp/player/LiveControl;->access$8(Lhdp/player/LiveControl;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhdp/util/LiveBiz;->getLiveEPG(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onParse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lhdp/player/LiveControl$6;->onParse()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
