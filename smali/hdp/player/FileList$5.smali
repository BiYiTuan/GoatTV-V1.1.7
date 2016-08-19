.class Lhdp/player/FileList$5;
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

.field private final synthetic val$inputServer:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lhdp/player/FileList;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/FileList$5;->this$0:Lhdp/player/FileList;

    iput-object p2, p0, Lhdp/player/FileList$5;->val$inputServer:Landroid/widget/EditText;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 268
    iget-object v1, p0, Lhdp/player/FileList$5;->val$inputServer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "password":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 272
    iget-object v1, p0, Lhdp/player/FileList$5;->this$0:Lhdp/player/FileList;

    invoke-virtual {v1}, Lhdp/player/FileList;->finish()V

    .line 273
    return-void
.end method
