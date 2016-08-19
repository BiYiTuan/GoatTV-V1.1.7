.class Lhdp/widget/VitamioSoDownloadDialog$2;
.super Ljava/lang/Object;
.source "VitamioSoDownloadDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/widget/VitamioSoDownloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/widget/VitamioSoDownloadDialog;


# direct methods
.method constructor <init>(Lhdp/widget/VitamioSoDownloadDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/widget/VitamioSoDownloadDialog$2;->this$0:Lhdp/widget/VitamioSoDownloadDialog;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lhdp/widget/VitamioSoDownloadDialog$2;->this$0:Lhdp/widget/VitamioSoDownloadDialog;

    iget-object v1, p0, Lhdp/widget/VitamioSoDownloadDialog$2;->this$0:Lhdp/widget/VitamioSoDownloadDialog;

    # getter for: Lhdp/widget/VitamioSoDownloadDialog;->down_url:Ljava/lang/String;
    invoke-static {v1}, Lhdp/widget/VitamioSoDownloadDialog;->access$2(Lhdp/widget/VitamioSoDownloadDialog;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lhdp/widget/VitamioSoDownloadDialog;->download(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lhdp/widget/VitamioSoDownloadDialog;->access$3(Lhdp/widget/VitamioSoDownloadDialog;Ljava/lang/String;)V

    .line 127
    return-void
.end method
