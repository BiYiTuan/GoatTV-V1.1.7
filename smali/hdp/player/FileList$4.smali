.class Lhdp/player/FileList$4;
.super Ljava/lang/Object;
.source "FileList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/FileList;->CustomPass()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/FileList;


# direct methods
.method constructor <init>(Lhdp/player/FileList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/FileList$4;->this$0:Lhdp/player/FileList;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lhdp/player/FileList$4;->this$0:Lhdp/player/FileList;

    invoke-virtual {v0}, Lhdp/player/FileList;->finish()V

    .line 263
    return-void
.end method
