.class Lhdp/player/Bangding$1;
.super Landroid/os/Handler;
.source "Bangding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/Bangding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhdp/player/Bangding;


# direct methods
.method constructor <init>(Lhdp/player/Bangding;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 107
    :sswitch_0
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    # getter for: Lhdp/player/Bangding;->i:I
    invoke-static {v0}, Lhdp/player/Bangding;->access$0(Lhdp/player/Bangding;)I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    invoke-static {v0, v2}, Lhdp/player/Bangding;->access$1(Lhdp/player/Bangding;Z)V

    .line 109
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    invoke-virtual {v0}, Lhdp/player/Bangding;->finish()V

    .line 110
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    const-class v3, Lhdp/player/Bangding;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lhdp/player/Bangding;->startActivity(Landroid/content/Intent;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    iget-object v0, v0, Lhdp/player/Bangding;->textView_time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    # getter for: Lhdp/player/Bangding;->i:I
    invoke-static {v2}, Lhdp/player/Bangding;->access$0(Lhdp/player/Bangding;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    const v3, 0x7f060096

    invoke-virtual {v2, v3}, Lhdp/player/Bangding;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :sswitch_1
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    # getter for: Lhdp/player/Bangding;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lhdp/player/Bangding;->access$2(Lhdp/player/Bangding;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    # getter for: Lhdp/player/Bangding;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lhdp/player/Bangding;->access$2(Lhdp/player/Bangding;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 119
    :cond_1
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    invoke-static {v0, v2}, Lhdp/player/Bangding;->access$1(Lhdp/player/Bangding;Z)V

    .line 120
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    iget-object v0, v0, Lhdp/player/Bangding;->layout_ok:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    iget-object v0, v0, Lhdp/player/Bangding;->layout_bd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    iget-object v0, v0, Lhdp/player/Bangding;->textView_user:Landroid/widget/TextView;

    invoke-static {}, Lhdp/http/MyApp;->getgimiuser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    iget-object v0, v0, Lhdp/player/Bangding;->button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 125
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    iget-object v1, v1, Lhdp/player/Bangding;->runnable_get:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 127
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    const v1, 0x7f06001b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 130
    :sswitch_2
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    iget-object v1, v1, Lhdp/player/Bangding;->runnable_time:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    iget-object v1, v1, Lhdp/player/Bangding;->runnable_check:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 132
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    iget-object v0, v0, Lhdp/player/Bangding;->thread_remove:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    iget-object v0, v0, Lhdp/player/Bangding;->layout_bd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    # getter for: Lhdp/player/Bangding;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lhdp/player/Bangding;->access$2(Lhdp/player/Bangding;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 137
    :sswitch_3
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    iget-object v0, v0, Lhdp/player/Bangding;->layout_ok:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    iget-object v0, v0, Lhdp/player/Bangding;->layout_bd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lhdp/player/Bangding$1;->this$0:Lhdp/player/Bangding;

    iget-object v1, v1, Lhdp/player/Bangding;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x63 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_3
    .end sparse-switch
.end method
