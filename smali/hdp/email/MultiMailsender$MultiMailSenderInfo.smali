.class public Lhdp/email/MultiMailsender$MultiMailSenderInfo;
.super Lhdp/email/MailSenderInfo;
.source "MultiMailsender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/email/MultiMailsender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiMailSenderInfo"
.end annotation


# instance fields
.field private ccs:[Ljava/lang/String;

.field private receivers:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lhdp/email/MailSenderInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getCcs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->ccs:[Ljava/lang/String;

    return-object v0
.end method

.method public getReceivers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->receivers:[Ljava/lang/String;

    return-object v0
.end method

.method public setCcs([Ljava/lang/String;)V
    .locals 0
    .param p1, "ccs"    # [Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->ccs:[Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setReceivers([Ljava/lang/String;)V
    .locals 0
    .param p1, "receivers"    # [Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lhdp/email/MultiMailsender$MultiMailSenderInfo;->receivers:[Ljava/lang/String;

    .line 161
    return-void
.end method
