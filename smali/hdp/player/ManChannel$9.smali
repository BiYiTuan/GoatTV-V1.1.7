.class Lhdp/player/ManChannel$9;
.super Ljava/lang/Object;
.source "ManChannel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdp/player/ManChannel;->CustomPass(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/ManChannel;

.field private final synthetic val$inputServer:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lhdp/player/ManChannel;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/ManChannel$9;->this$0:Lhdp/player/ManChannel;

    iput-object p2, p0, Lhdp/player/ManChannel$9;->val$inputServer:Landroid/widget/EditText;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 346
    iget-object v2, p0, Lhdp/player/ManChannel$9;->val$inputServer:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "password":Ljava/lang/String;
    invoke-static {v1}, Lhdp/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "index":I
    iget-object v2, p0, Lhdp/player/ManChannel$9;->this$0:Lhdp/player/ManChannel;

    # getter for: Lhdp/player/ManChannel;->retid:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/ManChannel;->access$4(Lhdp/player/ManChannel;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "custom01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    const/4 v0, 0x1

    .line 356
    :cond_0
    :goto_0
    iget-object v2, p0, Lhdp/player/ManChannel$9;->this$0:Lhdp/player/ManChannel;

    iget-object v2, v2, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 357
    iget-object v3, p0, Lhdp/player/ManChannel$9;->this$0:Lhdp/player/ManChannel;

    const v4, 0x7f060074

    invoke-virtual {v3, v4}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 357
    if-eqz v2, :cond_4

    .line 359
    invoke-static {v0}, Lhdp/http/MyApp;->getPassWord(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    invoke-static {v0, v1}, Lhdp/http/MyApp;->setPassWord(ILjava/lang/String;)V

    .line 361
    iget-object v2, p0, Lhdp/player/ManChannel$9;->this$0:Lhdp/player/ManChannel;

    iget-object v3, p0, Lhdp/player/ManChannel$9;->this$0:Lhdp/player/ManChannel;

    # getter for: Lhdp/player/ManChannel;->retid:Ljava/lang/String;
    invoke-static {v3}, Lhdp/player/ManChannel;->access$4(Lhdp/player/ManChannel;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lhdp/player/ManChannel;->refreshView(Ljava/lang/String;I)V

    .line 371
    .end local v0    # "index":I
    :cond_1
    :goto_1
    return-void

    .line 351
    .restart local v0    # "index":I
    :cond_2
    iget-object v2, p0, Lhdp/player/ManChannel$9;->this$0:Lhdp/player/ManChannel;

    # getter for: Lhdp/player/ManChannel;->retid:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/ManChannel;->access$4(Lhdp/player/ManChannel;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "custom02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 352
    const/4 v0, 0x2

    .line 353
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lhdp/player/ManChannel$9;->this$0:Lhdp/player/ManChannel;

    # getter for: Lhdp/player/ManChannel;->retid:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/ManChannel;->access$4(Lhdp/player/ManChannel;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "custom03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    const/4 v0, 0x3

    goto :goto_0

    .line 365
    :cond_4
    invoke-static {v0, v1}, Lhdp/http/MyApp;->setPassWord(ILjava/lang/String;)V

    .line 366
    iget-object v2, p0, Lhdp/player/ManChannel$9;->this$0:Lhdp/player/ManChannel;

    iget-object v2, v2, Lhdp/player/ManChannel;->custompass:Landroid/widget/Button;

    .line 367
    iget-object v3, p0, Lhdp/player/ManChannel$9;->this$0:Lhdp/player/ManChannel;

    const v4, 0x7f060073

    invoke-virtual {v3, v4}, Lhdp/player/ManChannel;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
