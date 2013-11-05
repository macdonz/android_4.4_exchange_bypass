.class public Lcom/android/emailcommon/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static sDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static getConsistentDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 98
    :try_start_0
    #v3=(Null);
    const-string v4, "phone"

    #v4=(Reference);
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 100
    .local v2, tm:Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_1

    .line 112
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);v5=(Conflicted);v6=(Conflicted);
    return-object v3

    .line 103
    .restart local v2       #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Reference);v3=(Null);v5=(Uninit);v6=(Uninit);
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    .local v0, deviceId:Ljava/lang/String;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 112
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->getSmallHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    goto :goto_0

    .line 107
    .end local v0           #deviceId:Ljava/lang/String;
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    #v0=(Uninit);v2=(Conflicted);v3=(Null);v4=(Conflicted);
    move-exception v1

    .line 108
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference);
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "Error in TelephonyManager.getDeviceId(): "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    #v6=(Null);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static declared-synchronized getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const-class v1, Lcom/android/emailcommon/Device;

    #v1=(Reference);
    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 45
    invoke-static {p0}, Lcom/android/emailcommon/Device;->getDeviceIdInternal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;

    .line 47
    :cond_0
    sget-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1

    throw v0
.end method

.method private static getDeviceIdInternal(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x80

    #v10=(PosShort);
    const/4 v9, 0x0

    .line 51
    #v9=(Null);
    if-nez p0, :cond_0

    .line 52
    new-instance v6, Ljava/lang/IllegalStateException;

    #v6=(UninitRef);
    const-string v7, "getDeviceId requires a Context"

    #v7=(Reference);
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v6=(Reference);
    throw v6

    .line 54
    :cond_0
    #v6=(Uninit);v7=(Uninit);
    const-string v6, "deviceName"

    #v6=(Reference);
    invoke-virtual {p0, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 55
    .local v1, f:Ljava/io/File;
    #v1=(Reference);
    const/4 v4, 0x0

    .line 57
    .local v4, rdr:Ljava/io/BufferedReader;
    #v4=(Null);
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 59
    new-instance v4, Ljava/io/BufferedReader;

    .end local v4           #rdr:Ljava/io/BufferedReader;
    #v4=(UninitRef);
    new-instance v6, Ljava/io/FileReader;

    #v6=(UninitRef);
    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    #v6=(Reference);
    invoke-direct {v4, v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 60
    .restart local v4       #rdr:Ljava/io/BufferedReader;
    #v4=(Reference);
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, id:Ljava/lang/String;
    #v2=(Reference);
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 62
    if-nez v2, :cond_2

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_1

    .line 65
    sget-object v6, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    const-string v7, "Can\'t delete null deviceName file; try overwrite."

    #v7=(Reference);
    new-array v8, v9, [Ljava/lang/Object;

    #v8=(Reference);
    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 79
    .end local v2           #id:Ljava/lang/String;
    :cond_1
    :goto_0
    #v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    new-instance v5, Ljava/io/BufferedWriter;

    #v5=(UninitRef);
    new-instance v6, Ljava/io/FileWriter;

    #v6=(UninitRef);
    invoke-direct {v6, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    #v6=(Reference);
    invoke-direct {v5, v6, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 80
    .local v5, w:Ljava/io/BufferedWriter;
    #v5=(Reference);
    invoke-static {p0}, Lcom/android/emailcommon/Device;->getConsistentDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, consistentDeviceId:Ljava/lang/String;
    #v0=(Reference);
    if-eqz v0, :cond_4

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "androidc"

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .restart local v2       #id:Ljava/lang/String;
    :goto_1
    #v2=(Reference);v7=(Conflicted);
    invoke-virtual {v5, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    move-object v3, v2

    .line 89
    .end local v0           #consistentDeviceId:Ljava/lang/String;
    .end local v2           #id:Ljava/lang/String;
    .end local v5           #w:Ljava/io/BufferedWriter;
    .local v3, id:Ljava/lang/String;
    :goto_2
    #v0=(Conflicted);v3=(Reference);v5=(Conflicted);
    return-object v3

    .end local v3           #id:Ljava/lang/String;
    .restart local v2       #id:Ljava/lang/String;
    :cond_2
    #v0=(Uninit);v3=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Uninit);
    move-object v3, v2

    .line 69
    .end local v2           #id:Ljava/lang/String;
    .restart local v3       #id:Ljava/lang/String;
    #v3=(Reference);
    goto :goto_2

    .line 72
    .end local v3           #id:Ljava/lang/String;
    :cond_3
    #v2=(Uninit);v3=(Uninit);v4=(Null);v6=(Boolean);
    sget-object v6, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": File exists, but can\'t read?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Trying to remove."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_1

    .line 75
    sget-object v6, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    const-string v7, "Remove failed. Tring to overwrite."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 85
    .restart local v0       #consistentDeviceId:Ljava/lang/String;
    .restart local v5       #w:Ljava/io/BufferedWriter;
    :cond_4
    #v0=(Reference);v2=(Conflicted);v4=(Reference);v5=(Reference);v7=(Conflicted);v8=(Conflicted);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "android"

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #v7=(LongLo);v8=(LongHi);
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #id:Ljava/lang/String;
    #v2=(Reference);
    goto :goto_1
.end method
