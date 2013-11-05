.class Lcom/android/emailsync/SyncManager$MailboxObserver;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxObserver"
.end annotation


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 710
    if-nez p1, :cond_0

    .line 711
    const-string v0, "mailbox changed"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    .line 713
    :cond_0
    #v0=(Conflicted);
    return-void
.end method
