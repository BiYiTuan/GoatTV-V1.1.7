.class Lhdp/player/LiveControl$7;
.super Ljava/lang/Object;
.source "LiveControl.java"

# interfaces
.implements Lhdp/http/HttpWorkTask$PostCallBack;


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
        "Lhdp/http/HttpWorkTask$PostCallBack",
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
    iput-object p1, p0, Lhdp/player/LiveControl$7;->this$0:Lhdp/player/LiveControl;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPost(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f06003a

    .line 237
    if-nez p1, :cond_1

    .line 238
    sget-object v0, Lhdp/http/MyApp;->LiveEpg:Ljava/lang/String;

    const-string v1, "-"

    if-eq v0, v1, :cond_0

    sget-object v0, Lhdp/http/MyApp;->LiveNextEpg:Ljava/lang/String;

    const-string v1, "-"

    if-eq v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lhdp/player/LiveControl$7;->this$0:Lhdp/player/LiveControl;

    iget-object v0, v0, Lhdp/player/LiveControl;->channleEPG1:Landroid/widget/TextView;

    sget-object v1, Lhdp/http/MyApp;->LiveEpg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lhdp/player/LiveControl$7;->this$0:Lhdp/player/LiveControl;

    iget-object v0, v0, Lhdp/player/LiveControl;->channleEPG2:Landroid/widget/TextView;

    sget-object v1, Lhdp/http/MyApp;->LiveNextEpg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lhdp/player/LiveControl$7;->this$0:Lhdp/player/LiveControl;

    iget-object v0, v0, Lhdp/player/LiveControl;->channleEPG1:Landroid/widget/TextView;

    iget-object v1, p0, Lhdp/player/LiveControl$7;->this$0:Lhdp/player/LiveControl;

    # getter for: Lhdp/player/LiveControl;->context:Landroid/content/Context;
    invoke-static {v1}, Lhdp/player/LiveControl;->access$9(Lhdp/player/LiveControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lhdp/player/LiveControl$7;->this$0:Lhdp/player/LiveControl;

    iget-object v0, v0, Lhdp/player/LiveControl;->channleEPG2:Landroid/widget/TextView;

    iget-object v1, p0, Lhdp/player/LiveControl$7;->this$0:Lhdp/player/LiveControl;

    # getter for: Lhdp/player/LiveControl;->context:Landroid/content/Context;
    invoke-static {v1}, Lhdp/player/LiveControl;->access$9(Lhdp/player/LiveControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lhdp/player/LiveControl$7;->this$0:Lhdp/player/LiveControl;

    iget-object v0, v0, Lhdp/player/LiveControl;->channleEPG1:Landroid/widget/TextView;

    const-string v1, "dqjm"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lhdp/player/LiveControl$7;->this$0:Lhdp/player/LiveControl;

    iget-object v0, v0, Lhdp/player/LiveControl;->channleEPG2:Landroid/widget/TextView;

    const-string v1, "xgjm"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic onPost(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lhdp/player/LiveControl$7;->onPost(Landroid/os/Bundle;)V

    return-void
.end method
