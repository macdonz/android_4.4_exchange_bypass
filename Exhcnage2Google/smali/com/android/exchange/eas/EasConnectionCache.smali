.class public Lcom/android/exchange/eas/EasConnectionCache;
.super Ljava/lang/Object;
.source "EasConnectionCache.java"


# static fields
.field private static sCache:Lcom/android/exchange/eas/EasConnectionCache;

.field private static final sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;


# instance fields
.field private final mConnectionCreationTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/emailcommon/utility/EmailClientConnectionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/android/exchange/eas/EasConnectionCache$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/exchange/eas/EasConnectionCache$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/eas/EasConnectionCache;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 65
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/exchange/eas/EasConnectionCache;->sCache:Lcom/android/exchange/eas/EasConnectionCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    #p0=(Reference);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/eas/EasConnectionCache;->mConnectionMap:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/eas/EasConnectionCache;->mConnectionCreationTimes:Ljava/util/HashMap;

    .line 78
    return-void
.end method

.method private createConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .locals 7
    .parameter "context"
    .parameter "hostAuth"

    .prologue
    .line 88
    const-string v1, "Exchange"

    #v1=(Reference);
    const-string v2, "Creating new connection manager for HostAuth %d"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 89
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 90
    .local v0, params:Lorg/apache/http/params/HttpParams;
    #v0=(Reference);
    const-string v1, "http.conn-manager.max-total"

    const/16 v2, 0x19

    #v2=(PosByte);
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 91
    const-string v1, "http.conn-manager.max-per-route"

    sget-object v2, Lcom/android/exchange/eas/EasConnectionCache;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 92
    invoke-static {p1, v0, p2}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->newInstance(Landroid/content/Context;Lorg/apache/http/params/HttpParams;Lcom/android/emailcommon/provider/HostAuth;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized getCachedConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .locals 11
    .parameter "context"
    .parameter "hostAuth"

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/exchange/eas/EasConnectionCache;->mConnectionMap:Ljava/util/HashMap;

    #v5=(Reference);
    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    .line 106
    .local v0, connectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 107
    .local v3, now:J
    #v3=(LongLo);v4=(LongHi);
    if-eqz v0, :cond_0

    .line 108
    iget-object v5, p0, Lcom/android/exchange/eas/EasConnectionCache;->mConnectionCreationTimes:Ljava/util/HashMap;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v6=(LongLo);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    sub-long v1, v3, v5

    .line 109
    .local v1, lifetime:J
    #v1=(LongLo);v2=(LongHi);
    const-wide/32 v5, 0x927c0

    cmp-long v5, v1, v5

    #v5=(Byte);
    if-lez v5, :cond_0

    .line 110
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "Aging out connection manager for HostAuth %d"

    #v6=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    iget-wide v9, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v9=(LongLo);v10=(LongHi);
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    invoke-virtual {p0, p2}, Lcom/android/exchange/eas/EasConnectionCache;->uncacheConnectionManager(Lcom/android/emailcommon/provider/HostAuth;)V

    .line 113
    const/4 v0, 0x0

    .line 116
    .end local v1           #lifetime:J
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    if-nez v0, :cond_1

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/eas/EasConnectionCache;->createConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    .line 118
    iget-object v5, p0, Lcom/android/exchange/eas/EasConnectionCache;->mConnectionMap:Ljava/util/HashMap;

    #v5=(Reference);
    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v5, p0, Lcom/android/exchange/eas/EasConnectionCache;->mConnectionCreationTimes:Ljava/util/HashMap;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v6=(LongLo);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    monitor-exit p0

    return-object v0

    .line 121
    :cond_1
    :try_start_1
    #v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    const-string v5, "Exchange"

    #v5=(Reference);
    const-string v6, "Reusing cached connection manager for HostAuth %d"

    #v6=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    iget-wide v9, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v9=(LongLo);v10=(LongHi);
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    .end local v0           #connectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .end local v3           #now:J
    :catchall_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v5

    #v5=(Reference);
    monitor-exit p0

    throw v5
.end method

.method public static instance()Lcom/android/exchange/eas/EasConnectionCache;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/exchange/eas/EasConnectionCache;->sCache:Lcom/android/exchange/eas/EasConnectionCache;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/exchange/eas/EasConnectionCache;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/exchange/eas/EasConnectionCache;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/eas/EasConnectionCache;->sCache:Lcom/android/exchange/eas/EasConnectionCache;

    .line 72
    :cond_0
    sget-object v0, Lcom/android/exchange/eas/EasConnectionCache;->sCache:Lcom/android/exchange/eas/EasConnectionCache;

    return-object v0
.end method


# virtual methods
.method public getConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .locals 2
    .parameter "context"
    .parameter "hostAuth"

    .prologue
    .line 139
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/HostAuth;->isSaved()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/eas/EasConnectionCache;->getCachedConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    .line 144
    .local v0, connectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    :goto_0
    #v0=(Reference);
    return-object v0

    .line 142
    .end local v0           #connectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    :cond_0
    #v0=(Uninit);
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/eas/EasConnectionCache;->createConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    .restart local v0       #connectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    #v0=(Reference);
    goto :goto_0
.end method

.method public declared-synchronized uncacheConnectionManager(Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 7
    .parameter "hostAuth"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    const-string v1, "Exchange"

    #v1=(Reference);
    const-string v2, "Uncaching connection manager for HostAuth %d"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    iget-object v1, p0, Lcom/android/exchange/eas/EasConnectionCache;->mConnectionMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    .line 156
    .local v0, connectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->shutdown()V

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/eas/EasConnectionCache;->mConnectionMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/android/exchange/eas/EasConnectionCache;->mConnectionCreationTimes:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 154
    .end local v0           #connectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit p0

    throw v1
.end method
