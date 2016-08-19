.class Lio/vov/vitamio/activity/InitActivity$1;
.super Landroid/os/AsyncTask;
.source "InitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vov/vitamio/activity/InitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/vov/vitamio/activity/InitActivity;


# direct methods
.method constructor <init>(Lio/vov/vitamio/activity/InitActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/vov/vitamio/activity/InitActivity$1;->this$0:Lio/vov/vitamio/activity/InitActivity;

    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v0, p0, Lio/vov/vitamio/activity/InitActivity$1;->this$0:Lio/vov/vitamio/activity/InitActivity;

    sget-object v1, Lio/vov/vitamio/Vitamio;->LIBS_DIR:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/vov/vitamio/Vitamio;->initialize(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/vov/vitamio/activity/InitActivity$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "inited"    # Ljava/lang/Boolean;

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lio/vov/vitamio/activity/InitActivity$1;->this$0:Lio/vov/vitamio/activity/InitActivity;

    # getter for: Lio/vov/vitamio/activity/InitActivity;->uiHandler:Lio/vov/vitamio/activity/InitActivity$UIHandler;
    invoke-static {v0}, Lio/vov/vitamio/activity/InitActivity;->access$2(Lio/vov/vitamio/activity/InitActivity;)Lio/vov/vitamio/activity/InitActivity$UIHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/vov/vitamio/activity/InitActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 64
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/vov/vitamio/activity/InitActivity$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lio/vov/vitamio/activity/InitActivity$1;->this$0:Lio/vov/vitamio/activity/InitActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lio/vov/vitamio/activity/InitActivity$1;->this$0:Lio/vov/vitamio/activity/InitActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lio/vov/vitamio/activity/InitActivity;->access$1(Lio/vov/vitamio/activity/InitActivity;Landroid/app/ProgressDialog;)V

    .line 48
    iget-object v0, p0, Lio/vov/vitamio/activity/InitActivity$1;->this$0:Lio/vov/vitamio/activity/InitActivity;

    # getter for: Lio/vov/vitamio/activity/InitActivity;->mPD:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lio/vov/vitamio/activity/InitActivity;->access$0(Lio/vov/vitamio/activity/InitActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 49
    iget-object v0, p0, Lio/vov/vitamio/activity/InitActivity$1;->this$0:Lio/vov/vitamio/activity/InitActivity;

    # getter for: Lio/vov/vitamio/activity/InitActivity;->mPD:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lio/vov/vitamio/activity/InitActivity;->access$0(Lio/vov/vitamio/activity/InitActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lio/vov/vitamio/activity/InitActivity$1;->this$0:Lio/vov/vitamio/activity/InitActivity;

    sget v2, Lio/vov/vitamio/R$string;->vitamio_init_decoders:I

    invoke-virtual {v1, v2}, Lio/vov/vitamio/activity/InitActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lio/vov/vitamio/activity/InitActivity$1;->this$0:Lio/vov/vitamio/activity/InitActivity;

    # getter for: Lio/vov/vitamio/activity/InitActivity;->mPD:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lio/vov/vitamio/activity/InitActivity;->access$0(Lio/vov/vitamio/activity/InitActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 51
    return-void
.end method
