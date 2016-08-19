.class public Lhdp/player/TimeActivity;
.super Landroid/app/Activity;
.source "TimeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field delayout:Landroid/widget/LinearLayout;

.field deleft:Landroid/widget/ImageView;

.field deright:Landroid/widget/ImageView;

.field detv:Landroid/widget/TextView;

.field playout:Landroid/widget/LinearLayout;

.field pleft:Landroid/widget/ImageView;

.field pright:Landroid/widget/ImageView;

.field ptv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x64

    const/4 v1, 0x5

    const v4, 0x7f060047

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 67
    :pswitch_1
    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 70
    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-static {v0, v2}, Lhdp/http/MyApp;->setTimeout(IZ)V

    .line 71
    iget-object v0, p0, Lhdp/player/TimeActivity;->detv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lhdp/player/TimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 74
    :pswitch_2
    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 77
    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-static {v0, v2}, Lhdp/http/MyApp;->setTimeout(IZ)V

    .line 78
    iget-object v0, p0, Lhdp/player/TimeActivity;->detv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lhdp/player/TimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :pswitch_3
    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 84
    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-static {v0, v3}, Lhdp/http/MyApp;->setTimeout(IZ)V

    .line 85
    iget-object v0, p0, Lhdp/player/TimeActivity;->ptv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lhdp/player/TimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 88
    :pswitch_4
    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 91
    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-static {v0, v3}, Lhdp/http/MyApp;->setTimeout(IZ)V

    .line 92
    iget-object v0, p0, Lhdp/player/TimeActivity;->ptv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lhdp/player/TimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x7f0a0083
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f060047

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lhdp/player/TimeActivity;->setContentView(I)V

    .line 32
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lhdp/player/TimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lhdp/player/TimeActivity;->delayout:Landroid/widget/LinearLayout;

    .line 33
    const v0, 0x7f0a0086

    invoke-virtual {p0, v0}, Lhdp/player/TimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lhdp/player/TimeActivity;->playout:Landroid/widget/LinearLayout;

    .line 34
    const v0, 0x7f0a0084

    invoke-virtual {p0, v0}, Lhdp/player/TimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhdp/player/TimeActivity;->detv:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Lhdp/player/TimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhdp/player/TimeActivity;->ptv:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0a0083

    invoke-virtual {p0, v0}, Lhdp/player/TimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhdp/player/TimeActivity;->deleft:Landroid/widget/ImageView;

    .line 37
    const v0, 0x7f0a0085

    invoke-virtual {p0, v0}, Lhdp/player/TimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhdp/player/TimeActivity;->deright:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f0a0087

    invoke-virtual {p0, v0}, Lhdp/player/TimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhdp/player/TimeActivity;->pleft:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f0a0089

    invoke-virtual {p0, v0}, Lhdp/player/TimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhdp/player/TimeActivity;->pright:Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lhdp/player/TimeActivity;->deleft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lhdp/player/TimeActivity;->deright:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lhdp/player/TimeActivity;->pleft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lhdp/player/TimeActivity;->pright:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lhdp/player/TimeActivity;->delayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 45
    iget-object v0, p0, Lhdp/player/TimeActivity;->playout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 47
    iget-object v0, p0, Lhdp/player/TimeActivity;->detv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lhdp/player/TimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lhdp/player/TimeActivity;->ptv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lhdp/player/TimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x64

    const/4 v1, 0x5

    const v4, 0x7f060047

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 100
    const/16 v0, 0x15

    if-ne p2, v0, :cond_1

    .line 101
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return v3

    .line 104
    :sswitch_0
    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 107
    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-static {v0, v3}, Lhdp/http/MyApp;->setTimeout(IZ)V

    .line 108
    iget-object v0, p0, Lhdp/player/TimeActivity;->detv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lhdp/player/TimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :sswitch_1
    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 114
    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-static {v0, v2}, Lhdp/http/MyApp;->setTimeout(IZ)V

    .line 115
    iget-object v0, p0, Lhdp/player/TimeActivity;->ptv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lhdp/player/TimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :cond_1
    const/16 v0, 0x16

    if-ne p2, v0, :cond_0

    .line 119
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 122
    :sswitch_2
    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 125
    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-static {v0, v3}, Lhdp/http/MyApp;->setTimeout(IZ)V

    .line 126
    iget-object v0, p0, Lhdp/player/TimeActivity;->detv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lhdp/player/TimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 129
    :sswitch_3
    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 132
    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-static {v0, v2}, Lhdp/http/MyApp;->setTimeout(IZ)V

    .line 133
    iget-object v0, p0, Lhdp/player/TimeActivity;->ptv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lhdp/http/MyApp;->getTimeout(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lhdp/player/TimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x7f0a0082 -> :sswitch_0
        0x7f0a0086 -> :sswitch_1
    .end sparse-switch

    .line 120
    :sswitch_data_1
    .sparse-switch
        0x7f0a0082 -> :sswitch_2
        0x7f0a0086 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 54
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    .line 61
    return-void
.end method
