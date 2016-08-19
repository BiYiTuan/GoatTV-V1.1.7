.class Lhdp/player/FileList$1;
.super Landroid/os/Handler;
.source "FileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/FileList;
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
    iput-object p1, p0, Lhdp/player/FileList$1;->this$0:Lhdp/player/FileList;

    .line 194
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 197
    iget-object v0, p0, Lhdp/player/FileList$1;->this$0:Lhdp/player/FileList;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhdp/player/FileList$1;->this$0:Lhdp/player/FileList;

    const v3, 0x7f060067

    invoke-virtual {v2, v3}, Lhdp/player/FileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lhdp/player/FileList$1;->this$0:Lhdp/player/FileList;

    const v3, 0x7f060068

    invoke-virtual {v2, v3}, Lhdp/player/FileList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    const/4 v2, 0x0

    .line 196
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    iget-object v0, p0, Lhdp/player/FileList$1;->this$0:Lhdp/player/FileList;

    invoke-virtual {v0}, Lhdp/player/FileList;->finish()V

    .line 201
    return-void
.end method
