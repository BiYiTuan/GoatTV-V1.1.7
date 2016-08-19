.class Lhdp/player/StartActivity$7;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/StartActivity;->Dialog_DownApp(Lhdp/javabean/AppInfo$NetApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/StartActivity;

.field private final synthetic val$netApp:Lhdp/javabean/AppInfo$NetApp;


# direct methods
.method constructor <init>(Lhdp/player/StartActivity;Lhdp/javabean/AppInfo$NetApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/StartActivity$7;->this$0:Lhdp/player/StartActivity;

    iput-object p2, p0, Lhdp/player/StartActivity$7;->val$netApp:Lhdp/javabean/AppInfo$NetApp;

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 781
    iget-object v0, p0, Lhdp/player/StartActivity$7;->this$0:Lhdp/player/StartActivity;

    .line 782
    const-string v1, "download_recommend_app"

    .line 783
    const-string v2, "download"

    const/4 v3, 0x1

    .line 781
    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 784
    iget-object v0, p0, Lhdp/player/StartActivity$7;->this$0:Lhdp/player/StartActivity;

    iget-object v1, p0, Lhdp/player/StartActivity$7;->val$netApp:Lhdp/javabean/AppInfo$NetApp;

    iget-object v1, v1, Lhdp/javabean/AppInfo$NetApp;->downloadurl:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    .line 785
    iget-object v3, p0, Lhdp/player/StartActivity$7;->this$0:Lhdp/player/StartActivity;

    # getter for: Lhdp/player/StartActivity;->recommendAppSaveUrl:Ljava/lang/String;
    invoke-static {v3}, Lhdp/player/StartActivity;->access$20(Lhdp/player/StartActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 784
    # invokes: Lhdp/player/StartActivity;->CreatDownDialog(Ljava/lang/String;Ljava/io/File;)V
    invoke-static {v0, v1, v2}, Lhdp/player/StartActivity;->access$21(Lhdp/player/StartActivity;Ljava/lang/String;Ljava/io/File;)V

    .line 786
    return-void
.end method
