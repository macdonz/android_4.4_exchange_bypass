.class public Lcom/android/emailsync/MailboxAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MailboxAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 33
    const-string v0, "mailbox"

    #v0=(Reference);
    const-wide/16 v1, -0x1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 35
    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v0, v2

    #v2=(Byte);
    if-nez v2, :cond_0

    .line 36
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-class v1, Lcom/android/emailsync/SyncManager;

    #v1=(Reference);
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 38
    :cond_0
    #v0=(LongLo);v1=(LongHi);
    invoke-static {p1, v0, v1}, Lcom/android/emailsync/SyncManager;->alert(Landroid/content/Context;J)V

    goto :goto_0
.end method
