.class public Lcom/android/email/EmailConnectivityManager;
.super Landroid/content/BroadcastReceiver;
.source "EmailConnectivityManager.java"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mRegistered:Z

.field private mStop:Z

.field private mWaitThread:Ljava/lang/Thread;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 71
    #v2=(One);
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    #p0=(Reference);
    new-instance v1, Ljava/lang/Object;

    #v1=(UninitRef);
    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    .line 65
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mStop:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    .line 72
    iput-object p1, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    .line 74
    const-string v1, "connectivity"

    #v1=(Reference);
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 76
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/os/PowerManager;

    .line 77
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0, v2, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 78
    iget-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    #v2=(UninitRef);
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    #v3=(Reference);
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 158
    const-string v1, "connectivity"

    #v1=(Reference);
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 160
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/net/ConnectivityManager;)I

    move-result v1

    #v1=(Integer);
    return v1
.end method

.method public static getActiveNetworkType(Landroid/net/ConnectivityManager;)I
    .locals 2
    .parameter "cm"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 165
    .local v0, info:Landroid/net/NetworkInfo;
    #v0=(Reference);
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 166
    :goto_0
    #v1=(Integer);
    return v1

    :cond_0
    #v1=(Uninit);
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    #v1=(Integer);
    goto :goto_0
.end method


# virtual methods
.method public getActiveNetworkType()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/net/ConnectivityManager;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public hasConnectivity()Z
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 146
    .local v0, info:Landroid/net/NetworkInfo;
    #v0=(Reference);
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    #v1=(Boolean);
    return v1

    :cond_0
    #v1=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public isAutoSyncAllowed()Z
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public onConnectivityLost(I)V
    .locals 0
    .parameter "networkType"

    .prologue
    .line 107
    return-void
.end method

.method public onConnectivityRestored(I)V
    .locals 0
    .parameter "networkType"

    .prologue
    .line 99
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 123
    .local v0, extras:Landroid/os/Bundle;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 124
    const-string v3, "networkInfo"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/net/NetworkInfo;

    .line 126
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 138
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 127
    .restart local v0       #extras:Landroid/os/Bundle;
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    :cond_1
    #v0=(Reference);v1=(Reference);v2=(Uninit);v3=(Reference);
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 128
    .local v2, state:Landroid/net/NetworkInfo$State;
    #v2=(Reference);
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2

    .line 129
    iget-object v4, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 131
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/android/email/EmailConnectivityManager;->onConnectivityRestored(I)V

    goto :goto_0

    .line 131
    :catchall_0
    #v3=(Reference);
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 133
    :cond_2
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 134
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/android/email/EmailConnectivityManager;->onConnectivityLost(I)V

    goto :goto_0
.end method

.method public stopWait()V
    .locals 2

    .prologue
    .line 86
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mStop:Z

    .line 87
    iget-object v0, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    .line 88
    .local v0, thread:Ljava/lang/Thread;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 91
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    :try_start_0
    #v1=(Null);
    iget-object v0, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    .line 117
    :goto_0
    return-void

    .line 112
    :catch_0
    #v0=(Conflicted);
    move-exception v0

    .line 115
    #v0=(Reference);
    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    goto :goto_0

    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    throw v0
.end method

.method public waitForConnectivity()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 171
    #v6=(Null);
    iget-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 172
    new-instance v2, Ljava/lang/IllegalStateException;

    #v2=(UninitRef);
    const-string v3, "ConnectivityManager not registered"

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 174
    :cond_0
    #v2=(Boolean);v3=(Uninit);
    const/4 v1, 0x0

    .line 175
    .local v1, waiting:Z
    #v1=(Null);
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    .line 177
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 179
    :goto_0
    :try_start_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mStop:Z

    #v2=(Boolean);
    if-nez v2, :cond_7

    .line 180
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 181
    .local v0, info:Landroid/net/NetworkInfo;
    #v0=(Reference);
    if-eqz v0, :cond_3

    .line 183
    if-eqz v1, :cond_1

    .line 184
    sget-boolean v2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 185
    const-string v2, "EmailConnectivityMgr"

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Connectivity wait ended"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 213
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 215
    :cond_2
    #v2=(Conflicted);
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    .line 217
    .end local v0           #info:Landroid/net/NetworkInfo;
    :goto_1
    #v0=(Conflicted);
    return-void

    .line 190
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_3
    #v0=(Reference);v2=(Reference);
    if-nez v1, :cond_5

    .line 191
    :try_start_1
    sget-boolean v2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 192
    const-string v2, "EmailConnectivityMgr"

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Connectivity waiting..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 194
    :cond_4
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const/4 v1, 0x1

    .line 197
    :cond_5
    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    #v3=(Reference);
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    :try_start_2
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :try_start_3
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    const-wide/32 v4, 0x927c0

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 206
    :goto_2
    :try_start_4
    #v4=(Conflicted);v5=(Conflicted);
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 207
    monitor-exit v3

    goto :goto_0

    :catchall_0
    #v2=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 212
    .end local v0           #info:Landroid/net/NetworkInfo;
    :catchall_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v2

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_6

    .line 213
    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 215
    :cond_6
    #v3=(Conflicted);
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    throw v2

    .line 212
    :cond_7
    #v2=(Boolean);
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_8

    .line 213
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 215
    :cond_8
    #v2=(Conflicted);
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    goto :goto_1

    .line 202
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :catch_0
    #v0=(Reference);v2=(Reference);v3=(Reference);
    move-exception v2

    goto :goto_2
.end method
