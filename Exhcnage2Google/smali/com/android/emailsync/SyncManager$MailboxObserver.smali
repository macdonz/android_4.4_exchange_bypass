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


# instance fields
.field final synthetic this$0:Lcom/android/emailsync/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/emailsync/SyncManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/emailsync/SyncManager$MailboxObserver;->this$0:Lcom/android/emailsync/SyncManager;

    .line 704
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 705
    #p0=(Reference);
    return-void
.end method


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
