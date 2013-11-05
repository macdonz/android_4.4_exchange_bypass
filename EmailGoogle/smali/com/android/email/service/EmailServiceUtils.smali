.class public Lcom/android/email/service/EmailServiceUtils;
.super Ljava/lang/Object;
.source "EmailServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/EmailServiceUtils$NullService;,
        Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    }
.end annotation


# static fields
.field private static final sOldConfiguration:Landroid/content/res/Configuration;

.field private static sServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sServiceMapLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 492
    new-instance v0, Landroid/content/res/Configuration;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/service/EmailServiceUtils;->sOldConfiguration:Landroid/content/res/Configuration;

    .line 493
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/email/service/EmailServiceUtils;->sServiceMap:Ljava/util/Map;

    .line 494
    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef);
    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/service/EmailServiceUtils;->sServiceMapLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 622
    #p0=(Reference);
    return-void
.end method

.method public static areRemoteServicesInstalled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 118
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Reference);v1=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 119
    .local v1, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-object v2, v1, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->intentAction:Ljava/lang/String;

    #v2=(Reference);
    if-eqz v2, :cond_0

    .line 120
    const/4 v2, 0x1

    .line 123
    .end local v1           #info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    :goto_0
    #v1=(Conflicted);v2=(Boolean);
    return v2

    :cond_1
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method private static asCalendarSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "account"
    .parameter "accountType"

    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "caller_is_syncadapter"

    #v1=(Reference);
    const-string v2, "true"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static finishAccountManagerBlocker(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<*>;"
    const/4 v3, 0x0

    .line 259
    :try_start_0
    #v3=(Null);
    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 267
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);
    return-void

    .line 260
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Null);
    move-exception v0

    .line 261
    .local v0, e:Landroid/accounts/OperationCanceledException;
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 262
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Null);
    move-exception v0

    .line 263
    .local v0, e:Landroid/accounts/AuthenticatorException;
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 264
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Null);
    move-exception v0

    .line 265
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static getService(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/EmailServiceProxy;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 222
    #v0=(Null);
    if-eqz p1, :cond_0

    .line 223
    invoke-static {p0, p1}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v0

    .line 225
    :cond_0
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 226
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Returning NullService for "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 227
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy;

    #v0=(UninitRef);
    const-class v1, Lcom/android/email/service/EmailServiceUtils$NullService;

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_1
    #v1=(Uninit);v2=(Uninit);
    invoke-static {p0, v0}, Lcom/android/email/service/EmailServiceUtils;->getServiceFromInfo(Landroid/content/Context;Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v0

    goto :goto_0
.end method

.method public static getServiceForAccount(Landroid/content/Context;J)Lcom/android/emailcommon/service/EmailServiceProxy;
    .locals 1
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 169
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/android/email/service/EmailServiceUtils;->getService(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceFromInfo(Landroid/content/Context;Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;)Lcom/android/emailcommon/service/EmailServiceProxy;
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 234
    iget-object v1, p1, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 235
    new-instance v1, Lcom/android/emailcommon/service/EmailServiceProxy;

    #v1=(UninitRef);
    iget-object v2, p1, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    #v2=(Reference);
    invoke-direct {v1, p0, v2}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    return-object v1

    .line 237
    :cond_0
    #v0=(Uninit);v2=(Uninit);
    invoke-static {p1}, Lcom/android/email/service/EmailServiceUtils;->getServiceIntent(Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 238
    .local v0, serviceIntent:Landroid/content/Intent;
    #v0=(Reference);
    new-instance v1, Lcom/android/emailcommon/service/EmailServiceProxy;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    #v1=(Reference);
    goto :goto_0
.end method

.method public static getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    .locals 1
    .parameter "context"
    .parameter "protocol"

    .prologue
    .line 248
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->getServiceMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    return-object v0
.end method

.method public static getServiceInfoForAccount(Landroid/content/Context;J)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 243
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, protocol:Ljava/lang/String;
    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method

.method public static getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->getServiceMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static getServiceIntent(Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;)Landroid/content/Intent;
    .locals 2
    .parameter "info"

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->intentAction:Ljava/lang/String;

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, serviceIntent:Landroid/content/Intent;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->intentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    return-object v0
.end method

.method private static getServiceMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 14
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    #v13=(One);
    const/4 v12, 0x2

    .line 500
    #v12=(PosByte);
    sget-object v10, Lcom/android/email/service/EmailServiceUtils;->sServiceMapLock:Ljava/lang/Object;

    #v10=(Reference);
    monitor-enter v10

    .line 505
    :try_start_0
    sget-object v9, Lcom/android/email/service/EmailServiceUtils;->sServiceMap:Ljava/util/Map;

    #v9=(Reference);
    if-nez v9, :cond_0

    .line 506
    sget-object v9, Lcom/android/email/service/EmailServiceUtils;->sOldConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    #v11=(Reference);
    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 509
    :cond_0
    #v11=(Conflicted);
    sget-object v9, Lcom/android/email/service/EmailServiceUtils;->sOldConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    #v11=(Reference);
    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    .line 512
    .local v1, delta:I
    #v1=(Integer);
    sget-object v9, Lcom/android/email/service/EmailServiceUtils;->sServiceMap:Ljava/util/Map;

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    #v9=(PosByte);
    invoke-static {v1, v9}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_1

    .line 514
    sget-object v9, Lcom/android/email/service/EmailServiceUtils;->sServiceMap:Ljava/util/Map;

    #v9=(Reference);
    monitor-exit v10

    .line 609
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-object v9

    .line 517
    :cond_1
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Conflicted);v11=(Reference);v12=(PosByte);
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 520
    .local v0, builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;>;"
    :try_start_1
    #v0=(Reference);
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 521
    .local v5, res:Landroid/content/res/Resources;
    #v5=(Reference);
    const v9, 0x7f060012

    #v9=(Integer);
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 524
    .local v7, xml:Landroid/content/res/XmlResourceParser;
    :cond_2
    :goto_1
    #v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Reference);v8=(Conflicted);v9=(Conflicted);
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    .local v8, xmlEventType:I
    #v8=(Integer);
    if-eq v8, v13, :cond_4

    .line 525
    if-ne v8, v12, :cond_2

    const-string v9, "emailservice"

    #v9=(Reference);
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_2

    .line 527
    new-instance v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    #v3=(UninitRef);
    invoke-direct {v3}, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;-><init>()V

    .line 528
    .local v3, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    #v3=(Reference);
    sget-object v9, Lcom/android/email/R$styleable;->EmailServiceInfo:[I

    #v9=(Reference);
    invoke-virtual {v5, v7, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 530
    .local v6, ta:Landroid/content/res/TypedArray;
    #v6=(Reference);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    iput-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    .line 531
    const/4 v9, 0x3

    #v9=(PosByte);
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    iput-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    .line 532
    const/4 v9, 0x1

    #v9=(One);
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    iput-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->name:Ljava/lang/String;

    .line 533
    const/4 v9, 0x2

    #v9=(PosByte);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->hide:Z

    .line 534
    const/4 v9, 0x4

    #v9=(PosByte);
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, klass:Ljava/lang/String;
    #v4=(Reference);
    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    iput-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->intentAction:Ljava/lang/String;

    .line 537
    const/4 v9, 0x6

    #v9=(PosByte);
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    iput-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->intentPackage:Ljava/lang/String;

    .line 539
    const/16 v9, 0x9

    #v9=(PosByte);
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->defaultSsl:Z

    .line 541
    const/4 v9, 0x7

    #v9=(PosByte);
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    #v9=(Integer);
    iput v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->port:I

    .line 542
    const/16 v9, 0x8

    #v9=(PosByte);
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    #v9=(Integer);
    iput v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->portSsl:I

    .line 543
    const/16 v9, 0xa

    #v9=(PosByte);
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerTls:Z

    .line 544
    const/16 v9, 0xb

    #v9=(PosByte);
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerCerts:Z

    .line 546
    const/16 v9, 0xc

    #v9=(PosByte);
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerLocalDeletes:Z

    .line 548
    const/16 v9, 0xd

    #v9=(PosByte);
    const/4 v11, 0x2

    #v11=(PosByte);
    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    #v9=(Integer);
    iput v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->defaultLocalDeletes:I

    .line 551
    const/16 v9, 0xe

    #v9=(PosByte);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerPrefix:Z

    .line 553
    const/16 v9, 0xf

    #v9=(PosByte);
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->usesSmtp:Z

    .line 554
    const/16 v9, 0x13

    #v9=(PosByte);
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->usesAutodiscover:Z

    .line 556
    const/16 v9, 0x14

    #v9=(PosByte);
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerLookback:Z

    .line 558
    const/16 v9, 0x16

    #v9=(PosByte);
    const/4 v11, 0x2

    #v11=(PosByte);
    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    #v9=(Integer);
    iput v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->defaultLookback:I

    .line 561
    const/16 v9, 0x10

    #v9=(PosByte);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->syncChanges:Z

    .line 563
    const/16 v9, 0x11

    #v9=(PosByte);
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->syncContacts:Z

    .line 565
    const/16 v9, 0x12

    #v9=(PosByte);
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->syncCalendar:Z

    .line 567
    const/16 v9, 0x17

    #v9=(PosByte);
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerAttachmentPreload:Z

    .line 570
    const/16 v9, 0x18

    #v9=(PosByte);
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    #v9=(Reference);
    iput-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->syncIntervalStrings:[Ljava/lang/CharSequence;

    .line 572
    const/16 v9, 0x19

    #v9=(PosByte);
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    #v9=(Reference);
    iput-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->syncIntervals:[Ljava/lang/CharSequence;

    .line 574
    const/16 v9, 0x1a

    #v9=(PosByte);
    const/16 v11, 0xf

    #v11=(PosByte);
    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    #v9=(Integer);
    iput v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->defaultSyncInterval:I

    .line 576
    const/16 v9, 0x1b

    #v9=(PosByte);
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    iput-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->inferPrefix:Ljava/lang/String;

    .line 577
    const/16 v9, 0x15

    #v9=(PosByte);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->offerLoadMore:Z

    .line 579
    const/16 v9, 0x1c

    #v9=(PosByte);
    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    #v9=(Boolean);
    iput-boolean v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->requiresSetup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 583
    if-eqz v4, :cond_3

    .line 586
    :try_start_2
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    #v9=(Reference);
    iput-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 592
    :cond_3
    :try_start_3
    #v9=(Conflicted);
    iget-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    #v9=(Reference);
    if-nez v9, :cond_5

    iget-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->intentAction:Ljava/lang/String;

    if-nez v9, :cond_5

    .line 593
    new-instance v9, Ljava/lang/IllegalStateException;

    #v9=(UninitRef);
    const-string v11, "No class or intent action specified in service descriptor"

    #v11=(Reference);
    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v9=(Reference);
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 603
    .end local v3           #info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    .end local v4           #klass:Ljava/lang/String;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #ta:Landroid/content/res/TypedArray;
    .end local v7           #xml:Landroid/content/res/XmlResourceParser;
    .end local v8           #xmlEventType:I
    :catch_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    move-exception v9

    .line 608
    :cond_4
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v9

    #v9=(Reference);
    sput-object v9, Lcom/android/email/service/EmailServiceUtils;->sServiceMap:Ljava/util/Map;

    .line 609
    sget-object v9, Lcom/android/email/service/EmailServiceUtils;->sServiceMap:Ljava/util/Map;

    monitor-exit v10

    goto/16 :goto_0

    .line 610
    .end local v0           #builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;>;"
    .end local v1           #delta:I
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v9=(Conflicted);
    move-exception v9

    #v9=(Reference);
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    .line 587
    .restart local v0       #builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;>;"
    .restart local v1       #delta:I
    .restart local v3       #info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    .restart local v4       #klass:Ljava/lang/String;
    .restart local v5       #res:Landroid/content/res/Resources;
    .restart local v6       #ta:Landroid/content/res/TypedArray;
    .restart local v7       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v8       #xmlEventType:I
    :catch_1
    #v0=(Reference);v1=(Integer);v2=(Uninit);v3=(Reference);v4=(Reference);v5=(Reference);v6=(Reference);v7=(Reference);v8=(Integer);v9=(Conflicted);v11=(Null);v12=(PosByte);
    move-exception v2

    .line 588
    .local v2, e:Ljava/lang/ClassNotFoundException;
    :try_start_5
    #v2=(Reference);
    new-instance v9, Ljava/lang/IllegalStateException;

    #v9=(UninitRef);
    new-instance v11, Ljava/lang/StringBuilder;

    #v11=(UninitRef);
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #v11=(Reference);
    const-string v12, "Class not found in service descriptor: "

    #v12=(Reference);
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v9=(Reference);
    throw v9

    .line 605
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .end local v3           #info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    .end local v4           #klass:Ljava/lang/String;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #ta:Landroid/content/res/TypedArray;
    .end local v7           #xml:Landroid/content/res/XmlResourceParser;
    .end local v8           #xmlEventType:I
    :catch_2
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    move-exception v9

    #v9=(Reference);
    goto :goto_2

    .line 596
    .restart local v3       #info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    .restart local v4       #klass:Ljava/lang/String;
    .restart local v5       #res:Landroid/content/res/Resources;
    .restart local v6       #ta:Landroid/content/res/TypedArray;
    .restart local v7       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v8       #xmlEventType:I
    :cond_5
    #v2=(Uninit);v3=(Reference);v4=(Reference);v5=(Reference);v6=(Reference);v7=(Reference);v8=(Integer);v11=(Null);v12=(PosByte);
    iget-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    if-eqz v9, :cond_6

    iget-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->intentAction:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 597
    new-instance v9, Ljava/lang/IllegalStateException;

    #v9=(UninitRef);
    const-string v11, "Both class and intent action specified in service descriptor"

    #v11=(Reference);
    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v9=(Reference);
    throw v9

    .line 600
    :cond_6
    #v11=(Null);
    iget-object v9, v3, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1
.end method

.method public static isServiceAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "protocol"

    .prologue
    .line 149
    invoke-static {p0, p1}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v0

    .line 150
    .local v0, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    #v0=(Reference);
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 153
    :goto_0
    #v1=(Conflicted);v2=(Boolean);
    return v2

    .line 151
    :cond_0
    #v1=(Uninit);v2=(Uninit);
    iget-object v2, v0, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    #v2=(Reference);
    if-eqz v2, :cond_1

    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0

    .line 152
    :cond_1
    #v2=(Reference);
    invoke-static {v0}, Lcom/android/email/service/EmailServiceUtils;->getServiceIntent(Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 153
    .local v1, serviceIntent:Landroid/content/Intent;
    #v1=(Reference);
    new-instance v2, Lcom/android/emailcommon/service/EmailServiceProxy;

    #v2=(UninitRef);
    invoke-direct {v2, p0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/emailcommon/service/EmailServiceProxy;->test()Z

    move-result v2

    #v2=(Boolean);
    goto :goto_0
.end method

.method public static killService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "protocol"

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v0

    .line 84
    .local v0, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->intentAction:Ljava/lang/String;

    #v2=(Reference);
    if-eqz v2, :cond_0

    .line 85
    invoke-static {v0}, Lcom/android/email/service/EmailServiceUtils;->getServiceIntent(Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 86
    .local v1, serviceIntent:Landroid/content/Intent;
    #v1=(Reference);
    const-string v2, "ServiceProxy.FORCE_SHUTDOWN"

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method private static moveCalendarData(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "resolver"
    .parameter "name"
    .parameter "oldType"
    .parameter "newType"

    .prologue
    .line 464
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    #v3=(Reference);
    const-string v4, "true"

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 471
    .local v0, oldCalendars:Landroid/net/Uri;
    #v0=(Reference);
    new-instance v1, Landroid/content/ContentValues;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 472
    .local v1, values:Landroid/content/ContentValues;
    #v1=(Reference);
    const-string v2, "account_type"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v2, "account_name=? AND account_type=?"

    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object p1, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    aput-object p2, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 476
    return-void
.end method

.method private static moveContactsData(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "resolver"
    .parameter "name"
    .parameter "oldType"
    .parameter "newType"

    .prologue
    const/4 v5, 0x0

    .line 480
    #v5=(Null);
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    #v3=(Reference);
    const-string v4, "true"

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 487
    .local v0, oldContacts:Landroid/net/Uri;
    #v0=(Reference);
    new-instance v1, Landroid/content/ContentValues;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 488
    .local v1, values:Landroid/content/ContentValues;
    #v1=(Reference);
    const-string v2, "account_type"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 490
    return-void
.end method

.method public static setRemoteServicesLogging(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "debugBits"

    .prologue
    .line 130
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 131
    .local v1, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-object v3, v1, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->intentAction:Ljava/lang/String;

    #v3=(Reference);
    if-eqz v3, :cond_0

    .line 132
    iget-object v3, v1, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/email/service/EmailServiceUtils;->getService(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v2

    .line 134
    .local v2, service:Lcom/android/emailcommon/service/EmailServiceProxy;
    #v2=(Reference);
    if-eqz v2, :cond_0

    .line 136
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setLogging(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v3

    goto :goto_0

    .line 143
    .end local v1           #info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    .end local v2           #service:Lcom/android/emailcommon/service/EmailServiceProxy;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Boolean);
    return-void
.end method

.method public static setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZLandroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
    .locals 10
    .parameter "context"
    .parameter "account"
    .parameter "email"
    .parameter "calendar"
    .parameter "contacts"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "ZZZ",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .local p5, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 282
    #v2=(Null);
    new-instance v4, Landroid/os/Bundle;

    #v4=(UninitRef);
    const/4 v0, 0x5

    #v0=(PosByte);
    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 283
    .local v4, options:Landroid/os/Bundle;
    #v4=(Reference);
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    #v0=(LongLo);v1=(LongHi);
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v8

    .line 285
    .local v8, hostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;
    #v8=(Reference);
    if-nez v8, :cond_0

    .line 295
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);
    return-object v2

    .line 289
    :cond_0
    #v0=(LongLo);v1=(LongHi);v2=(Null);v3=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v9=(Uninit);
    const-string v0, "username"

    #v0=(Reference);
    iget-object v1, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "password"

    iget-object v1, v8, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "contacts"

    invoke-virtual {v4, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    const-string v0, "calendar"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    const-string v0, "email"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    iget-object v0, v8, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v9

    .line 295
    .local v9, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    #v9=(Reference);
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, v9, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    move-object v3, v2

    #v3=(Null);
    move-object v5, v2

    #v5=(Null);
    move-object v6, p5

    #v6=(Reference);
    move-object v7, v2

    #v7=(Null);
    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    #v2=(Reference);
    goto :goto_0
.end method

.method public static startRemoteServices(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 106
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 107
    .local v1, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-object v3, v1, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->intentAction:Ljava/lang/String;

    #v3=(Reference);
    if-eqz v3, :cond_0

    .line 108
    invoke-static {v1}, Lcom/android/email/service/EmailServiceUtils;->getServiceIntent(Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;)Landroid/content/Intent;

    move-result-object v2

    .line 109
    .local v2, serviceIntent:Landroid/content/Intent;
    #v2=(Reference);
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 112
    .end local v1           #info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    .end local v2           #serviceIntent:Landroid/content/Intent;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Boolean);
    return-void
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "protocol"

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v0

    .line 96
    .local v0, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->intentAction:Ljava/lang/String;

    #v2=(Reference);
    if-eqz v2, :cond_0

    .line 97
    invoke-static {v0}, Lcom/android/email/service/EmailServiceUtils;->getServiceIntent(Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 98
    .local v1, serviceIntent:Landroid/content/Intent;
    #v1=(Reference);
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public static updateAccountManagerType(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/Map;)V
    .locals 27
    .parameter "context"
    .parameter "amAccount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p2, protocolMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 302
    .local v3, resolver:Landroid/content/ContentResolver;
    #v3=(Reference);
    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    #v4=(Reference);
    sget-object v5, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v5=(Reference);
    const-string v6, "emailAddress=?"

    #v6=(Reference);
    const/4 v9, 0x1

    #v9=(One);
    new-array v7, v9, [Ljava/lang/String;

    #v7=(Reference);
    const/4 v9, 0x0

    #v9=(Null);
    move-object/from16 v0, p1

    #v0=(Reference);
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    #v25=(Reference);
    aput-object v25, v7, v9

    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 305
    .local v15, c:Landroid/database/Cursor;
    #v15=(Reference);
    if-nez v15, :cond_0

    .line 460
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Boolean);v9=(Reference);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);
    return-void

    .line 307
    :cond_0
    :try_start_0
    #v1=(Uninit);v2=(Uninit);v4=(Reference);v6=(Reference);v7=(Reference);v8=(Null);v9=(Null);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Reference);v26=(Uninit);
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_8

    .line 309
    new-instance v5, Lcom/android/emailcommon/provider/Account;

    #v5=(UninitRef);
    invoke-direct {v5}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 310
    .local v5, account:Lcom/android/emailcommon/provider/Account;
    #v5=(Reference);
    invoke-virtual {v5, v15}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 311
    iget-wide v0, v5, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v25, v0

    #v25=(LongLo);v26=(LongHi);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-wide/from16 v1, v25

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v20

    .line 313
    .local v20, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v20=(Reference);
    if-nez v20, :cond_1

    .line 458
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 317
    :cond_1
    :try_start_1
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    #v4=(Reference);
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    #v22=(Reference);
    check-cast v22, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 318
    .local v22, newProtocol:Ljava/lang/String;
    if-nez v22, :cond_2

    .line 458
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 323
    :cond_2
    :try_start_2
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v25, "Converting "

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v25, " to "

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v25, 0x0

    #v25=(Null);
    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 326
    new-instance v12, Landroid/content/ContentValues;

    #v12=(UninitRef);
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 327
    .local v12, accountValues:Landroid/content/ContentValues;
    #v12=(Reference);
    iget v0, v5, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v0=(Integer);
    move/from16 v23, v0

    .line 330
    .local v23, oldFlags:I
    #v23=(Integer);
    iget v4, v5, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v4=(Integer);
    or-int/lit8 v4, v4, 0x10

    iput v4, v5, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 331
    const-string v4, "flags"

    #v4=(Reference);
    iget v9, v5, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v9=(Integer);
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #v9=(Reference);
    invoke-virtual {v12, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v25, v0

    #v25=(LongLo);
    move-wide/from16 v0, v25

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 333
    .local v11, accountUri:Landroid/net/Uri;
    #v11=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {v3, v11, v12, v4, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 337
    new-instance v21, Landroid/content/ContentValues;

    #v21=(UninitRef);
    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 338
    .local v21, hostValues:Landroid/content/ContentValues;
    #v21=(Reference);
    const-string v4, "protocol"

    #v4=(Reference);
    move-object/from16 v0, v21

    #v0=(Reference);
    move-object/from16 v1, v22

    #v1=(Reference);
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v4, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v9, 0x0

    const/16 v25, 0x0

    #v25=(Null);
    move-object/from16 v0, v21

    #v0=(Reference);
    move-object/from16 v1, v25

    #v1=(Null);
    invoke-virtual {v3, v4, v0, v9, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 341
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Updated HostAuths"

    #v9=(Reference);
    const/16 v25, 0x0

    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 345
    :try_start_3
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 347
    .local v6, email:Z
    #v6=(Boolean);
    if-nez v6, :cond_3

    .line 349
    const-string v4, "com.android.email.provider"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 352
    :cond_3
    const-string v4, "com.android.contacts"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 354
    .local v8, contacts:Z
    #v8=(Boolean);
    const-string v4, "com.android.calendar"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    .line 356
    .local v7, calendar:Z
    #v7=(Boolean);
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v25, "Email: "

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v25, ", Contacts: "

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v25, ","

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v25, " Calendar: "

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v25, 0x0

    #v25=(Null);
    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 360
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 361
    .local v14, amName:Ljava/lang/String;
    #v14=(Reference);
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 362
    .local v24, oldType:Ljava/lang/String;
    #v24=(Reference);
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v9, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v17

    .line 364
    .local v17, client:Landroid/content/ContentProviderClient;
    #v17=(Reference);
    const/16 v16, 0x0

    .line 366
    .local v16, calendarSyncKey:[B
    :try_start_4
    #v16=(Null);
    sget-object v4, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-static {v4, v14, v0}, Lcom/android/email/service/EmailServiceUtils;->asCalendarSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v9, Landroid/accounts/Account;

    #v9=(UninitRef);
    move-object/from16 v0, v24

    invoke-direct {v9, v14, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #v9=(Reference);
    move-object/from16 v0, v17

    invoke-static {v0, v4, v9}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v16

    .line 372
    :try_start_5
    #v16=(Reference);
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    .line 374
    :goto_1
    #v19=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v9, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v4, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v17

    .line 376
    const/16 v18, 0x0

    .line 378
    .local v18, contactsSyncKey:[B
    :try_start_6
    #v18=(Null);
    sget-object v4, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Landroid/accounts/Account;

    #v9=(UninitRef);
    move-object/from16 v0, v24

    invoke-direct {v9, v14, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #v9=(Reference);
    move-object/from16 v0, v17

    invoke-static {v0, v4, v9}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v18

    .line 384
    :try_start_7
    #v18=(Reference);
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    .line 386
    :goto_2
    if-eqz v16, :cond_4

    .line 387
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v25, "Got calendar key: "

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v25, Ljava/lang/String;

    #v25=(UninitRef);
    move-object/from16 v0, v25

    #v0=(UninitRef);
    move-object/from16 v1, v16

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #v0=(Reference);v25=(Reference);
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v25, 0x0

    #v25=(Null);
    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 390
    :cond_4
    if-eqz v18, :cond_5

    .line 391
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v25, "Got contacts key: "

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v25, Ljava/lang/String;

    #v25=(UninitRef);
    move-object/from16 v0, v25

    #v0=(UninitRef);
    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #v0=(Reference);v25=(Reference);
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v25, 0x0

    #v25=(Null);
    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 396
    :cond_5
    const/4 v9, 0x0

    #v9=(Null);
    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/android/email/service/EmailServiceUtils;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZLandroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    move-result-object v13

    .line 398
    .local v13, amFuture:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<*>;"
    #v13=(Reference);
    invoke-static {v13}, Lcom/android/email/service/EmailServiceUtils;->finishAccountManagerBlocker(Landroid/accounts/AccountManagerFuture;)V

    .line 399
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Created new AccountManager account"

    #v9=(Reference);
    const/16 v25, 0x0

    #v25=(Null);
    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "_type"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    #v10=(Reference);
    check-cast v10, Ljava/lang/String;

    .line 405
    .local v10, accountType:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-static {v4, v14, v0, v10}, Lcom/android/email/service/EmailServiceUtils;->moveCalendarData(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-static {v4, v14, v0, v10}, Lcom/android/email/service/EmailServiceUtils;->moveContactsData(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const/4 v9, 0x0

    #v9=(Null);
    const/16 v25, 0x0

    #v25=(Null);
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    #v1=(Null);
    invoke-virtual {v4, v0, v9, v1}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v13

    .line 411
    invoke-static {v13}, Lcom/android/email/service/EmailServiceUtils;->finishAccountManagerBlocker(Landroid/accounts/AccountManagerFuture;)V

    .line 412
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Deleted old AccountManager account"

    #v9=(Reference);
    const/16 v25, 0x0

    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 416
    if-eqz v10, :cond_6

    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v4, v0

    #v4=(Integer);
    if-eqz v4, :cond_6

    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    #v4=(Reference);
    sget-object v9, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v17

    .line 421
    :try_start_8
    sget-object v4, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v14, v10}, Lcom/android/email/service/EmailServiceUtils;->asCalendarSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v9, Landroid/accounts/Account;

    #v9=(UninitRef);
    invoke-direct {v9, v14, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #v9=(Reference);
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    #v1=(Reference);
    invoke-static {v0, v4, v9, v1}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 426
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Set calendar key..."

    const/16 v25, 0x0

    #v25=(Null);
    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 430
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    .line 433
    :cond_6
    :goto_3
    #v4=(Conflicted);
    if-eqz v10, :cond_7

    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    array-length v4, v0

    #v4=(Integer);
    if-eqz v4, :cond_7

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    #v4=(Reference);
    sget-object v9, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v4, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v17

    .line 438
    :try_start_a
    sget-object v4, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Landroid/accounts/Account;

    #v9=(UninitRef);
    invoke-direct {v9, v14, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #v9=(Reference);
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v4, v9, v1}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 442
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Set contacts key..."

    const/16 v25, 0x0

    #v25=(Null);
    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3

    .line 449
    :cond_7
    :goto_4
    :try_start_b
    #v4=(Conflicted);
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v9, "Account update completed."

    const/16 v25, 0x0

    #v25=(Null);
    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 452
    :try_start_c
    const-string v4, "flags"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {v3, v11, v12, v4, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v4=(Reference);
    const-string v9, "[Incomplete flag cleared]"

    #v9=(Reference);
    const/16 v25, 0x0

    #v25=(Null);
    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 458
    .end local v5           #account:Lcom/android/emailcommon/provider/Account;
    .end local v6           #email:Z
    .end local v7           #calendar:Z
    .end local v8           #contacts:Z
    .end local v10           #accountType:Ljava/lang/String;
    .end local v11           #accountUri:Landroid/net/Uri;
    .end local v12           #accountValues:Landroid/content/ContentValues;
    .end local v13           #amFuture:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<*>;"
    .end local v14           #amName:Ljava/lang/String;
    .end local v16           #calendarSyncKey:[B
    .end local v17           #client:Landroid/content/ContentProviderClient;
    .end local v18           #contactsSyncKey:[B
    .end local v20           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v21           #hostValues:Landroid/content/ContentValues;
    .end local v22           #newProtocol:Ljava/lang/String;
    .end local v23           #oldFlags:I
    .end local v24           #oldType:Ljava/lang/String;
    :cond_8
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v26=(Conflicted);
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 369
    .restart local v5       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v6       #email:Z
    .restart local v7       #calendar:Z
    .restart local v8       #contacts:Z
    .restart local v11       #accountUri:Landroid/net/Uri;
    .restart local v12       #accountValues:Landroid/content/ContentValues;
    .restart local v14       #amName:Ljava/lang/String;
    .restart local v16       #calendarSyncKey:[B
    .restart local v17       #client:Landroid/content/ContentProviderClient;
    .restart local v20       #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .restart local v21       #hostValues:Landroid/content/ContentValues;
    .restart local v22       #newProtocol:Ljava/lang/String;
    .restart local v23       #oldFlags:I
    .restart local v24       #oldType:Ljava/lang/String;
    :catch_0
    #v1=(Null);v2=(LongHi);v4=(Reference);v6=(Boolean);v7=(Boolean);v9=(Conflicted);v10=(Uninit);v11=(Reference);v12=(Reference);v13=(Uninit);v14=(Reference);v16=(Null);v17=(Reference);v18=(Uninit);v19=(Uninit);v20=(Reference);v21=(Reference);v22=(Reference);v23=(Integer);v24=(Reference);v26=(LongHi);
    move-exception v19

    .line 370
    .local v19, e:Landroid/os/RemoteException;
    :try_start_d
    #v19=(Reference);
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Get calendar key FAILED"

    #v9=(Reference);
    const/16 v25, 0x0

    #v25=(Null);
    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 372
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 452
    .end local v6           #email:Z
    .end local v7           #calendar:Z
    .end local v8           #contacts:Z
    .end local v14           #amName:Ljava/lang/String;
    .end local v16           #calendarSyncKey:[B
    .end local v17           #client:Landroid/content/ContentProviderClient;
    .end local v19           #e:Landroid/os/RemoteException;
    .end local v24           #oldType:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Reference);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);v13=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v24=(Conflicted);v25=(Conflicted);
    move-exception v4

    :try_start_f
    #v4=(Reference);
    const-string v9, "flags"

    #v9=(Reference);
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    #v25=(Reference);
    move-object/from16 v0, v25

    #v0=(Reference);
    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    const/4 v9, 0x0

    #v9=(Null);
    const/16 v25, 0x0

    #v25=(Null);
    move-object/from16 v0, v25

    #v0=(Null);
    invoke-virtual {v3, v11, v12, v9, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    sget-object v9, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v9=(Reference);
    const-string v25, "[Incomplete flag cleared]"

    #v25=(Reference);
    const/16 v26, 0x0

    #v26=(Null);
    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v26, v0

    #v26=(Reference);
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v9, v0, v1}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 458
    .end local v5           #account:Lcom/android/emailcommon/provider/Account;
    .end local v11           #accountUri:Landroid/net/Uri;
    .end local v12           #accountValues:Landroid/content/ContentValues;
    .end local v20           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v21           #hostValues:Landroid/content/ContentValues;
    .end local v22           #newProtocol:Ljava/lang/String;
    .end local v23           #oldFlags:I
    :catchall_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v25=(Conflicted);v26=(Conflicted);
    move-exception v4

    #v4=(Reference);
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v4

    .line 372
    .restart local v5       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v6       #email:Z
    .restart local v7       #calendar:Z
    .restart local v8       #contacts:Z
    .restart local v11       #accountUri:Landroid/net/Uri;
    .restart local v12       #accountValues:Landroid/content/ContentValues;
    .restart local v14       #amName:Ljava/lang/String;
    .restart local v16       #calendarSyncKey:[B
    .restart local v17       #client:Landroid/content/ContentProviderClient;
    .restart local v20       #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .restart local v21       #hostValues:Landroid/content/ContentValues;
    .restart local v22       #newProtocol:Ljava/lang/String;
    .restart local v23       #oldFlags:I
    .restart local v24       #oldType:Ljava/lang/String;
    :catchall_2
    #v0=(Reference);v1=(Null);v2=(LongHi);v5=(Reference);v6=(Boolean);v7=(Boolean);v10=(Uninit);v11=(Reference);v12=(Reference);v13=(Uninit);v14=(Reference);v16=(Null);v17=(Reference);v18=(Uninit);v20=(Reference);v21=(Reference);v22=(Reference);v23=(Integer);v24=(Reference);v25=(Reference);v26=(LongHi);
    move-exception v4

    :try_start_10
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 381
    .restart local v18       #contactsSyncKey:[B
    :catch_1
    #v16=(Reference);v18=(Null);
    move-exception v19

    .line 382
    .restart local v19       #e:Landroid/os/RemoteException;
    :try_start_11
    #v19=(Reference);
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Get contacts key FAILED"

    #v9=(Reference);
    const/16 v25, 0x0

    #v25=(Null);
    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 384
    :try_start_12
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_2

    .end local v19           #e:Landroid/os/RemoteException;
    :catchall_3
    #v9=(Conflicted);v19=(Conflicted);
    move-exception v4

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 427
    .restart local v10       #accountType:Ljava/lang/String;
    .restart local v13       #amFuture:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<*>;"
    :catch_2
    #v1=(Reference);v10=(Reference);v13=(Reference);v18=(Reference);
    move-exception v19

    .line 428
    .restart local v19       #e:Landroid/os/RemoteException;
    :try_start_13
    #v19=(Reference);
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Set calendar key FAILED"

    #v9=(Reference);
    const/16 v25, 0x0

    #v25=(Null);
    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 430
    :try_start_14
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_3

    .end local v19           #e:Landroid/os/RemoteException;
    :catchall_4
    #v9=(Conflicted);v19=(Conflicted);
    move-exception v4

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    throw v4

    .line 443
    :catch_3
    move-exception v19

    .line 444
    .restart local v19       #e:Landroid/os/RemoteException;
    #v19=(Reference);
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Set contacts key FAILED"

    #v9=(Reference);
    const/16 v25, 0x0

    #v25=(Null);
    move/from16 v0, v25

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    move-object/from16 v25, v0

    #v25=(Reference);
    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_4
.end method
