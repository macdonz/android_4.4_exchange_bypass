.class Lcom/android/emailsync/SyncManager$SyncedMessageObserver;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncedMessageObserver"
.end annotation


# instance fields
.field alarmManager:Landroid/app/AlarmManager;

.field syncAlarmIntent:Landroid/content/Intent;

.field syncAlarmPendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/emailsync/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/emailsync/SyncManager;Landroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 722
    #v3=(Null);
    iput-object p1, p0, Lcom/android/emailsync/SyncManager$SyncedMessageObserver;->this$0:Lcom/android/emailsync/SyncManager;

    .line 723
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 717
    #p0=(Reference);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    sget-object v1, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    #v1=(Reference);
    const-class v2, Lcom/android/emailsync/EmailSyncAlarmReceiver;

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager$SyncedMessageObserver;->syncAlarmIntent:Landroid/content/Intent;

    .line 718
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    iget-object v1, p0, Lcom/android/emailsync/SyncManager$SyncedMessageObserver;->syncAlarmIntent:Landroid/content/Intent;

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailsync/SyncManager$SyncedMessageObserver;->syncAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 720
    sget-object v0, Lcom/android/emailsync/SyncManager;->INSTANCE:Lcom/android/emailsync/SyncManager;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/emailsync/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/emailsync/SyncManager$SyncedMessageObserver;->alarmManager:Landroid/app/AlarmManager;

    .line 724
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/emailsync/SyncManager$SyncedMessageObserver;->alarmManager:Landroid/app/AlarmManager;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, 0x2710

    #v4=(LongLo);v5=(LongHi);
    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/emailsync/SyncManager$SyncedMessageObserver;->syncAlarmPendingIntent:Landroid/app/PendingIntent;

    #v4=(Reference);
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 730
    return-void
.end method
