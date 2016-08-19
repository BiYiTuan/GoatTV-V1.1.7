.class Lhdp/player/FileList$2;
.super Ljava/lang/Object;
.source "FileList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/FileList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/FileList;


# direct methods
.method constructor <init>(Lhdp/player/FileList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/FileList$2;->this$0:Lhdp/player/FileList;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lhdp/player/FileList$2;)Lhdp/player/FileList;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lhdp/player/FileList$2;->this$0:Lhdp/player/FileList;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lhdp/player/FileList$2;->this$0:Lhdp/player/FileList;

    const v1, 0x7f0a0032

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v2, v1}, Lhdp/player/FileList;->access$0(Lhdp/player/FileList;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhdp/player/FileList$2;->this$0:Lhdp/player/FileList;

    # getter for: Lhdp/player/FileList;->currentpath:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/FileList;->access$1(Lhdp/player/FileList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/FileList$2;->this$0:Lhdp/player/FileList;

    # getter for: Lhdp/player/FileList;->folder:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/FileList;->access$2(Lhdp/player/FileList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "filef":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lhdp/player/FileList$2;->this$0:Lhdp/player/FileList;

    invoke-virtual {v1, v0}, Lhdp/player/FileList;->init(Ljava/io/File;)V

    .line 99
    iget-object v1, p0, Lhdp/player/FileList$2;->this$0:Lhdp/player/FileList;

    invoke-static {v1, p3}, Lhdp/player/FileList;->access$3(Lhdp/player/FileList;I)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lhdp/player/FileList$2;->this$0:Lhdp/player/FileList;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    iget-object v2, p0, Lhdp/player/FileList$2;->this$0:Lhdp/player/FileList;

    const v3, 0x7f060065

    invoke-virtual {v2, v3}, Lhdp/player/FileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lhdp/player/FileList$2;->this$0:Lhdp/player/FileList;

    const v3, 0x7f060066

    invoke-virtual {v2, v3}, Lhdp/player/FileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lhdp/player/FileList$2;->this$0:Lhdp/player/FileList;

    const v3, 0x7f06004e

    invoke-virtual {v2, v3}, Lhdp/player/FileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    new-instance v3, Lhdp/player/FileList$2$1;

    invoke-direct {v3, p0, v0}, Lhdp/player/FileList$2$1;-><init>(Lhdp/player/FileList$2;Ljava/io/File;)V

    .line 104
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lhdp/player/FileList$2;->this$0:Lhdp/player/FileList;

    const v3, 0x7f06004f

    invoke-virtual {v2, v3}, Lhdp/player/FileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
