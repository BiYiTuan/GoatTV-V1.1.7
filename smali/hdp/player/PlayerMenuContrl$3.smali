.class Lhdp/player/PlayerMenuContrl$3;
.super Ljava/lang/Object;
.source "PlayerMenuContrl.java"

# interfaces
.implements Lhdp/widget/DownProgressDialog$OnDownloadListening;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/PlayerMenuContrl;->CreatDownDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/PlayerMenuContrl;

.field private final synthetic val$progressDialog:Lhdp/widget/DownProgressDialog;


# direct methods
.method constructor <init>(Lhdp/player/PlayerMenuContrl;Lhdp/widget/DownProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/PlayerMenuContrl$3;->this$0:Lhdp/player/PlayerMenuContrl;

    iput-object p2, p0, Lhdp/player/PlayerMenuContrl$3;->val$progressDialog:Lhdp/widget/DownProgressDialog;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DownloadListening(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    const/4 v4, 0x1

    .line 533
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 534
    const/4 v1, 0x0

    .line 538
    .local v1, "libs_check":Z
    :try_start_0
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl$3;->this$0:Lhdp/player/PlayerMenuContrl;

    # getter for: Lhdp/player/PlayerMenuContrl;->context:Landroid/content/Context;
    invoke-static {v2}, Lhdp/player/PlayerMenuContrl;->access$0(Lhdp/player/PlayerMenuContrl;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lio/vov/vitamio/LibsChecker;->checkVitamioLibs(Landroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 558
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lhdp/player/PlayerMenuContrl$3;->this$0:Lhdp/player/PlayerMenuContrl;

    iget-boolean v2, v2, Lhdp/player/PlayerMenuContrl;->check_lib:Z

    if-nez v2, :cond_0

    .line 559
    invoke-static {v4}, Lhdp/http/MyApp;->setVitamioStatic(Z)V

    .line 561
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl$3;->val$progressDialog:Lhdp/widget/DownProgressDialog;

    invoke-virtual {v2}, Lhdp/widget/DownProgressDialog;->dismiss()V

    .line 563
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl$3;->this$0:Lhdp/player/PlayerMenuContrl;

    # invokes: Lhdp/player/PlayerMenuContrl;->ChangeJiemaDialog()V
    invoke-static {v2}, Lhdp/player/PlayerMenuContrl;->access$3(Lhdp/player/PlayerMenuContrl;)V

    .line 565
    iget-object v2, p0, Lhdp/player/PlayerMenuContrl$3;->this$0:Lhdp/player/PlayerMenuContrl;

    iput-boolean v4, v2, Lhdp/player/PlayerMenuContrl;->check_lib:Z

    .line 572
    .end local v1    # "libs_check":Z
    :cond_0
    return-void

    .line 555
    .restart local v1    # "libs_check":Z
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "connor"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
