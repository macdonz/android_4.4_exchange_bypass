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

.field syncAlarmPendingIntent:Landroid/app/PendingIntent;


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
