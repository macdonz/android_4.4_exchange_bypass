.class Lcom/android/email/service/ImapService$1;
.super Lcom/android/email/service/EmailServiceStub;
.source "ImapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/ImapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/ImapService;


# direct methods
.method constructor <init>(Lcom/android/email/service/ImapService;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/email/service/ImapService$1;->this$0:Lcom/android/email/service/ImapService;

    invoke-direct {p0}, Lcom/android/email/service/EmailServiceStub;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getCapabilities(Lcom/android/emailcommon/provider/Account;)I
    .locals 1
    .parameter "acct"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    const v0, 0x104041

    #v0=(Integer);
    return v0
.end method

.method public loadMore(J)V
    .locals 0
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    return-void
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 6
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/ImapService$1;->this$0:Lcom/android/email/service/ImapService;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/service/ImapService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-wide v1, p1

    #v1=(LongLo);v2=(LongHi);
    move-object v3, p3

    #v3=(Reference);
    move-wide v4, p4

    #v4=(LongLo);v5=(LongHi);
    invoke-static/range {v0 .. v5}, Lcom/android/email/service/ImapService;->access$000(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 129
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v0

    .line 126
    :catch_0
    move-exception v0

    .line 129
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public serviceUpdated(Ljava/lang/String;)V
    .locals 0
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    return-void
.end method
