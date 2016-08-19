.class Lhdp/player/StartActivity$5;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Lhdp/widget/DownProgressDialog$OnDownloadListening;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/StartActivity;->CreatDownDialog(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/StartActivity;

.field private final synthetic val$progressDialog:Lhdp/widget/DownProgressDialog;

.field private final synthetic val$saveFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lhdp/player/StartActivity;Lhdp/widget/DownProgressDialog;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/StartActivity$5;->this$0:Lhdp/player/StartActivity;

    iput-object p2, p0, Lhdp/player/StartActivity$5;->val$progressDialog:Lhdp/widget/DownProgressDialog;

    iput-object p3, p0, Lhdp/player/StartActivity$5;->val$saveFile:Ljava/io/File;

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DownloadListening(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 701
    const/16 v4, 0x64

    if-ne p1, v4, :cond_0

    .line 702
    iget-object v4, p0, Lhdp/player/StartActivity$5;->val$progressDialog:Lhdp/widget/DownProgressDialog;

    invoke-virtual {v4}, Lhdp/widget/DownProgressDialog;->dismiss()V

    .line 704
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "chmod 777 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    iget-object v5, p0, Lhdp/player/StartActivity$5;->val$saveFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 704
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 707
    .local v3, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "runtime":Ljava/lang/Runtime;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lhdp/player/StartActivity$5;->val$saveFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 714
    const-string v5, "application/vnd.android.package-archive"

    .line 713
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    iget-object v4, p0, Lhdp/player/StartActivity$5;->this$0:Lhdp/player/StartActivity;

    invoke-virtual {v4, v2}, Lhdp/player/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 717
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 708
    :catch_0
    move-exception v1

    .line 709
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
