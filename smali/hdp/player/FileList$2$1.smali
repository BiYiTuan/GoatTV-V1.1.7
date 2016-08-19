.class Lhdp/player/FileList$2$1;
.super Ljava/lang/Object;
.source "FileList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/FileList$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lhdp/player/FileList$2;

.field private final synthetic val$filef:Ljava/io/File;


# direct methods
.method constructor <init>(Lhdp/player/FileList$2;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/FileList$2$1;->this$1:Lhdp/player/FileList$2;

    iput-object p2, p0, Lhdp/player/FileList$2$1;->val$filef:Ljava/io/File;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lhdp/player/FileList$2$1;->this$1:Lhdp/player/FileList$2;

    # getter for: Lhdp/player/FileList$2;->this$0:Lhdp/player/FileList;
    invoke-static {v0}, Lhdp/player/FileList$2;->access$0(Lhdp/player/FileList$2;)Lhdp/player/FileList;

    move-result-object v0

    iget-object v1, p0, Lhdp/player/FileList$2$1;->val$filef:Ljava/io/File;

    # invokes: Lhdp/player/FileList;->MyTv(Ljava/io/File;)V
    invoke-static {v0, v1}, Lhdp/player/FileList;->access$4(Lhdp/player/FileList;Ljava/io/File;)V

    .line 112
    return-void
.end method
