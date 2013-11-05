.class public Lcom/android/email/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/SecurityPolicy$PolicyAdmin;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/email/SecurityPolicy;


# instance fields
.field private final mAdminName:Landroid/content/ComponentName;

.field private mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 86
    #v2=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    #p0=(Reference);
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 88
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 89
    new-instance v0, Landroid/content/ComponentName;

    #v0=(UninitRef);
    const-class v1, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    #v1=(Reference);
    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    .line 90
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    .line 91
    return-void
.end method

.method static findShortestExpiration(Landroid/content/Context;)J
    .locals 12
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    .line 766
    #v10=(LongLo);v11=(LongHi);
    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->ID_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "passwordExpirationDays>0"

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "passwordExpirationDays ASC"

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #v7=(Reference);
    move-object v0, p0

    #v0=(Reference);
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 769
    .local v8, policyId:J
    #v8=(LongLo);v9=(LongHi);
    const-wide/16 v0, 0x0

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, v8, v0

    #v0=(Byte);
    if-gez v0, :cond_0

    move-wide v0, v10

    .line 770
    :goto_0
    #v0=(LongLo);
    return-wide v0

    :cond_0
    #v0=(Byte);
    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Policy;->getAccountIdWithPolicyKey(Landroid/content/Context;J)J

    move-result-wide v0

    #v0=(LongLo);
    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    const-class v1, Lcom/android/email/SecurityPolicy;

    #v1=(Reference);
    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/email/SecurityPolicy;

    #v0=(UninitRef);
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    #v2=(Reference);
    invoke-direct {v0, v2}, Lcom/android/email/SecurityPolicy;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 80
    :cond_0
    #v2=(Conflicted);
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1

    throw v0
.end method

.method public static onDeviceAdminReceiverMessage(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    .line 812
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    .line 813
    .local v0, instance:Lcom/android/email/SecurityPolicy;
    #v0=(Reference);
    packed-switch p1, :pswitch_data_0

    .line 831
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 815
    :pswitch_0
    #v1=(Uninit);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_0

    .line 818
    :pswitch_1
    #v1=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_0

    .line 823
    :pswitch_2
    #v1=(Uninit);
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 825
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/email/NotificationController;->cancelPasswordExpirationNotifications()V

    goto :goto_0

    .line 828
    :pswitch_3
    #v1=(Uninit);
    iget-object v1, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/email/SecurityPolicy;->onPasswordExpiring(Landroid/content/Context;)V

    goto :goto_0

    .line 813
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onPasswordExpiring(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 733
    invoke-static {p1}, Lcom/android/email/SecurityPolicy;->findShortestExpiration(Landroid/content/Context;)J

    move-result-wide v3

    .line 736
    .local v3, nextExpiringAccountId:J
    #v3=(LongLo);v4=(LongHi);
    const-wide/16 v8, -0x1

    #v8=(LongLo);v9=(LongHi);
    cmp-long v8, v3, v8

    #v8=(Byte);
    if-nez v8, :cond_1

    .line 757
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 741
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Byte);
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    #v8=(Reference);
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v9=(Reference);
    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 742
    .local v0, expirationDate:J
    #v0=(LongLo);v1=(LongHi);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    sub-long v5, v0, v8

    .line 743
    .local v5, timeUntilExpiration:J
    #v5=(LongLo);v6=(LongHi);
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    #v8=(Byte);
    if-gez v8, :cond_2

    const/4 v2, 0x1

    .line 744
    .local v2, expired:Z
    :goto_1
    #v2=(Boolean);
    if-nez v2, :cond_3

    .line 747
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v8=(Reference);
    invoke-static {v8}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/android/email/NotificationController;->showPasswordExpiringNotification(J)V

    goto :goto_0

    .line 743
    .end local v2           #expired:Z
    :cond_2
    #v2=(Uninit);v8=(Byte);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_1

    .line 751
    .restart local v2       #expired:Z
    :cond_3
    #v2=(Boolean);
    invoke-static {p1}, Lcom/android/email/SecurityPolicy;->wipeExpiredAccounts(Landroid/content/Context;)Z

    move-result v7

    .line 752
    .local v7, wiped:Z
    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 753
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v8=(Reference);
    invoke-static {v8}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/android/email/NotificationController;->showPasswordExpiredNotification(J)V

    goto :goto_0
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;JZ)V
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "newState"

    .prologue
    .line 450
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 451
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 452
    invoke-static {p0, v0, p3}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 453
    if-eqz p3, :cond_0

    .line 455
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1, v0}, Lcom/android/email/NotificationController;->showSecurityNeededNotification(Lcom/android/emailcommon/provider/Account;)V

    .line 458
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "newState"

    .prologue
    .line 469
    if-eqz p2, :cond_0

    .line 470
    iget v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v1=(Integer);
    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 474
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 475
    .local v0, cv:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "flags"

    #v1=(Reference);
    iget v2, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 477
    return-void

    .line 472
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    iget v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v1=(Integer);
    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    goto :goto_0
.end method

.method public static setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "policy"
    .parameter "securitySyncKey"

    .prologue
    const/4 v5, 0x0

    .line 526
    #v5=(Null);
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    #v1=(Reference);
    if-eqz p2, :cond_1

    .line 530
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    .line 532
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Policy;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "policyKey"

    #v3=(Reference);
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "securitySyncKey"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :goto_0
    #v4=(Conflicted);
    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-lez v2, :cond_0

    .line 550
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_0
    :try_start_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    #v2=(Reference);
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 557
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->refresh(Landroid/content/Context;)V

    .line 558
    invoke-static {p0, p1}, Lcom/android/email/SecurityPolicy;->syncAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 565
    :goto_1
    #v3=(Conflicted);
    return-void

    .line 541
    :cond_1
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "securitySyncKey"

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "policyKey"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    :catch_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(LongHi);
    move-exception v0

    .line 561
    .local v0, e:Landroid/os/RemoteException;
    #v0=(Reference);
    new-instance v2, Ljava/lang/IllegalStateException;

    #v2=(UninitRef);
    const-string v3, "Exception setting account policy."

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 562
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    #v0=(Uninit);v2=(Conflicted);v3=(Conflicted);
    move-exception v2

    #v2=(Reference);
    goto :goto_1
.end method

.method private static syncAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 9
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v8, 0x1

    .line 568
    #v8=(One);
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-static {p0, v3}, Lcom/android/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v2

    .line 570
    .local v2, info:Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
    #v2=(Reference);
    new-instance v0, Landroid/accounts/Account;

    #v0=(UninitRef);
    iget-object v3, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    #v4=(Reference);
    invoke-direct {v0, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .local v0, amAccount:Landroid/accounts/Account;
    #v0=(Reference);
    new-instance v1, Landroid/os/Bundle;

    #v1=(UninitRef);
    const/4 v3, 0x3

    #v3=(PosByte);
    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 573
    .local v1, extras:Landroid/os/Bundle;
    #v1=(Reference);
    const-string v3, "force"

    #v3=(Reference);
    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 574
    const-string v3, "do_not_retry"

    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 575
    const-string v3, "expedited"

    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 576
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 577
    const-string v3, "Email/SecurityPolicy"

    const-string v4, "requestSync SecurityPolicy syncAccount %s, %s"

    const/4 v5, 0x2

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->toString()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v5, v6

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 579
    return-void
.end method

.method static wipeExpiredAccounts(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 781
    #v4=(Null);
    const/4 v12, 0x0

    .line 782
    .local v12, result:Z
    #v12=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->ID_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "passwordExpirationDays>0"

    #v3=(Reference);
    move-object v5, v4

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 785
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    #v0=(Conflicted);v1=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Reference);v10=(Conflicted);v11=(Conflicted);v12=(Boolean);v13=(Conflicted);
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 786
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 787
    .local v10, policyId:J
    #v10=(LongLo);v11=(LongHi);
    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/Policy;->getAccountIdWithPolicyKey(Landroid/content/Context;J)J

    move-result-wide v7

    .line 788
    .local v7, accountId:J
    #v7=(LongLo);v8=(LongHi);
    const-wide/16 v0, 0x0

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, v7, v0

    #v0=(Byte);
    if-ltz v0, :cond_0

    .line 789
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 790
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    #v6=(Reference);
    if-eqz v6, :cond_0

    .line 792
    const/4 v0, 0x1

    #v0=(One);
    invoke-static {p0, v6, v0}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 794
    const-string v0, "uiaccountdata"

    #v0=(Reference);
    invoke-static {v0, v7, v8}, Lcom/android/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v13

    .line 795
    .local v13, uri:Landroid/net/Uri;
    #v13=(Reference);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v13, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    const/4 v12, 0x1

    #v12=(One);
    goto :goto_0

    .line 801
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    .end local v7           #accountId:J
    .end local v10           #policyId:J
    .end local v13           #uri:Landroid/net/Uri;
    :cond_1
    #v0=(Boolean);v1=(Conflicted);v2=(Reference);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Boolean);v13=(Conflicted);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 803
    return v12

    .line 801
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public clearNotification()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/NotificationController;->cancelSecurityNeededNotification()V

    .line 647
    return-void
.end method

.method computeAggregatePolicy()Lcom/android/emailcommon/provider/Policy;
    .locals 13
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const v12, 0x7fffffff

    #v12=(Integer);
    const/high16 v11, -0x8000

    #v11=(Integer);
    const/4 v10, 0x0

    .line 119
    #v10=(Null);
    const/4 v8, 0x0

    .line 120
    .local v8, policiesFound:Z
    #v8=(Null);
    new-instance v6, Lcom/android/emailcommon/provider/Policy;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 121
    .local v6, aggregate:Lcom/android/emailcommon/provider/Policy;
    #v6=(Reference);
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 122
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 123
    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 124
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 125
    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 126
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 127
    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 128
    iput-boolean v10, v6, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 129
    iput-boolean v10, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 134
    iput-boolean v10, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 136
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 138
    .local v7, c:Landroid/database/Cursor;
    #v7=(Reference);
    new-instance v9, Lcom/android/emailcommon/provider/Policy;

    #v9=(UninitRef);
    invoke-direct {v9}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 140
    .local v9, policy:Lcom/android/emailcommon/provider/Policy;
    :goto_0
    :try_start_0
    #v0=(Conflicted);v1=(Conflicted);v8=(Boolean);v9=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_6

    .line 141
    invoke-virtual {v9, v7}, Lcom/android/emailcommon/provider/Policy;->restore(Landroid/database/Cursor;)V

    .line 142
    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "Email/SecurityPolicy"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Aggregate from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 145
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    #v0=(Integer);
    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    #v1=(Integer);
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 147
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 148
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    if-lez v0, :cond_1

    .line 149
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 152
    :cond_1
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-lez v0, :cond_2

    .line 153
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 156
    :cond_2
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-lez v0, :cond_3

    .line 157
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 160
    :cond_3
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-lez v0, :cond_4

    .line 161
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 164
    :cond_4
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-lez v0, :cond_5

    .line 165
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 168
    :cond_5
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    #v0=(Boolean);
    iget-boolean v1, v9, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    #v1=(Boolean);
    or-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 169
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    iget-boolean v1, v9, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    or-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 170
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    iget-boolean v1, v9, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    or-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    const/4 v8, 0x1

    #v8=(One);
    goto/16 :goto_0

    .line 174
    :cond_6
    #v1=(Conflicted);v8=(Boolean);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 176
    if-eqz v8, :cond_f

    .line 178
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    #v0=(Integer);
    if-ne v0, v11, :cond_7

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 179
    :cond_7
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-ne v0, v11, :cond_8

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 180
    :cond_8
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    if-ne v0, v12, :cond_9

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 181
    :cond_9
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-ne v0, v12, :cond_a

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 182
    :cond_a
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-ne v0, v11, :cond_b

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 183
    :cond_b
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-ne v0, v12, :cond_c

    .line 184
    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 185
    :cond_c
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-ne v0, v11, :cond_d

    .line 186
    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 187
    :cond_d
    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v0=(Boolean);
    if-eqz v0, :cond_e

    .line 188
    const-string v0, "Email/SecurityPolicy"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Calculated Aggregate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 195
    .end local v6           #aggregate:Lcom/android/emailcommon/provider/Policy;
    :cond_e
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);
    return-object v6

    .line 174
    .restart local v6       #aggregate:Lcom/android/emailcommon/provider/Policy;
    :catchall_0
    move-exception v0

    #v0=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 192
    :cond_f
    #v0=(Boolean);
    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 193
    const-string v0, "Email/SecurityPolicy"

    #v0=(Reference);
    const-string v1, "Calculated Aggregate: no policy"

    #v1=(Reference);
    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 195
    :cond_10
    #v0=(Conflicted);v1=(Conflicted);
    sget-object v6, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    goto :goto_1
.end method

.method deleteSecuredAccounts(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 693
    #v4=(Null);
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 695
    .local v0, cr:Landroid/content/ContentResolver;
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "policyKey IS NOT NULL AND policyKey!=0"

    #v3=(Reference);
    move-object v5, v4

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 698
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    #v8=(Reference);
    const-string v1, "Email/SecurityPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Email administration disabled; deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " secured account(s)"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 700
    :goto_0
    #v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 701
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 702
    .local v6, accountId:J
    #v6=(LongLo);v7=(LongHi);
    const-string v1, "uiaccountdata"

    #v1=(Reference);
    invoke-static {v1, v6, v7}, Lcom/android/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    .line 703
    .local v9, uri:Landroid/net/Uri;
    #v9=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v9, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 706
    .end local v6           #accountId:J
    .end local v9           #uri:Landroid/net/Uri;
    :catchall_0
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    #v1=(Boolean);v2=(Reference);v3=(Reference);
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 708
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->policiesUpdated()V

    .line 709
    return-void
.end method

.method public getAdminComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v0=(Reference);
    return-object v0
.end method

.method public declared-synchronized getAggregatePolicy()Lcom/android/emailcommon/provider/Policy;
    .locals 1

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->computeAggregatePolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 202
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDPM()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 215
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 212
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method public getInactiveReasons(Lcom/android/emailcommon/provider/Policy;)I
    .locals 14
    .parameter "policy"

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object p1

    .line 323
    :cond_0
    sget-object v10, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    #v10=(Reference);
    if-ne p1, v10, :cond_2

    .line 324
    const/4 v7, 0x0

    .line 395
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Integer);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    return v7

    .line 326
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Reference);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    const/4 v7, 0x0

    .line 327
    .local v7, reasons:I
    #v7=(Null);
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 328
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    #v2=(Reference);
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    const v10, 1

    #v10=(Boolean);
    if-eqz v10, :cond_f

    .line 330
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    #v10=(Integer);
    if-lez v10, :cond_3

    .line 331
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v10=(Reference);
    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v10

    #v10=(Integer);
    iget v11, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    #v11=(Integer);
    if-ge v10, v11, :cond_3

    .line 332
    or-int/lit8 v7, v7, 0x4

    .line 335
    :cond_3
    #v7=(Integer);v11=(Conflicted);
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-lez v10, :cond_5

    .line 336
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v10=(Reference);
    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v10

    #v10=(Integer);
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordQuality()I

    move-result v11

    #v11=(Integer);
    if-ge v10, v11, :cond_4

    .line 337
    or-int/lit8 v7, v7, 0x4

    .line 339
    :cond_4
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_5

    .line 340
    or-int/lit8 v7, v7, 0x4

    .line 343
    :cond_5
    #v10=(Integer);v11=(Conflicted);
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-lez v10, :cond_6

    .line 345
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v10=(Reference);
    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v10

    #v10=(LongLo);v11=(LongHi);
    iget v12, p1, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    #v12=(Integer);
    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    #v12=(LongLo);v13=(LongHi);
    cmp-long v10, v10, v12

    #v10=(Byte);
    if-lez v10, :cond_6

    .line 346
    or-int/lit8 v7, v7, 0x2

    .line 349
    :cond_6
    #v10=(Integer);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-lez v10, :cond_9

    .line 351
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v10=(Reference);
    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 352
    .local v0, currentTimeout:J
    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v10, 0x0

    #v10=(LongLo);v11=(LongHi);
    cmp-long v10, v0, v10

    #v10=(Byte);
    if-eqz v10, :cond_7

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v10

    #v10=(LongLo);
    cmp-long v10, v0, v10

    #v10=(Byte);
    if-lez v10, :cond_8

    .line 354
    :cond_7
    or-int/lit8 v7, v7, 0x4

    .line 357
    :cond_8
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v10=(Reference);
    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 358
    .local v4, expirationDate:J
    #v4=(LongLo);v5=(LongHi);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    #v10=(LongLo);
    sub-long v8, v4, v10

    .line 359
    .local v8, timeUntilExpiration:J
    #v8=(LongLo);v9=(LongHi);
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    #v10=(Byte);
    if-gez v10, :cond_e

    const/4 v6, 0x1

    .line 360
    .local v6, expired:Z
    :goto_1
    #v6=(Boolean);
    if-eqz v6, :cond_9

    .line 361
    or-int/lit8 v7, v7, 0x4

    .line 364
    .end local v0           #currentTimeout:J
    .end local v4           #expirationDate:J
    .end local v6           #expired:Z
    .end local v8           #timeUntilExpiration:J
    :cond_9
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Integer);v11=(Conflicted);
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-lez v10, :cond_a

    .line 365
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v10=(Reference);
    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v10

    #v10=(Integer);
    iget v11, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    #v11=(Integer);
    if-ge v10, v11, :cond_a

    .line 367
    or-int/lit8 v7, v7, 0x2

    .line 370
    :cond_a
    #v11=(Conflicted);
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-lez v10, :cond_b

    .line 371
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v10=(Reference);
    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v10

    #v10=(Integer);
    iget v11, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    #v11=(Integer);
    if-ge v10, v11, :cond_b

    .line 372
    or-int/lit8 v7, v7, 0x4

    .line 375
    :cond_b
    #v11=(Conflicted);
    iget-boolean v10, p1, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    #v10=(Boolean);
    if-eqz v10, :cond_c

    .line 376
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 377
    .local v3, encryptionStatus:I
    #v3=(Integer);
    const/4 v10, 0x3

    #v10=(PosByte);
    if-eq v3, v10, :cond_c

    .line 378
    or-int/lit8 v7, v7, 0x8

    .line 381
    .end local v3           #encryptionStatus:I
    :cond_c
    #v3=(Conflicted);
    iget-boolean v10, p1, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    #v10=(Boolean);
    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v10=(Reference);
    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_d

    .line 382
    or-int/lit8 v7, v7, 0x2

    .line 387
    :cond_d
    iget-object v10, p1, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    #v10=(Reference);
    if-eqz v10, :cond_1

    .line 388
    or-int/lit8 v7, v7, 0x10

    goto/16 :goto_0

    .line 359
    .restart local v0       #currentTimeout:J
    .restart local v4       #expirationDate:J
    .restart local v8       #timeUntilExpiration:J
    :cond_e
    #v0=(LongLo);v1=(LongHi);v3=(Uninit);v4=(LongLo);v5=(LongHi);v6=(Uninit);v8=(LongLo);v9=(LongHi);v10=(Byte);v11=(LongHi);
    const/4 v6, 0x0

    #v6=(Null);
    goto :goto_1

    .line 395
    .end local v0           #currentTimeout:J
    .end local v4           #expirationDate:J
    .end local v8           #timeUntilExpiration:J
    :cond_f
    #v0=(Uninit);v1=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Null);v8=(Uninit);v9=(Uninit);v10=(Boolean);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    const/4 v7, 0x1

    #v7=(One);
    goto/16 :goto_0
.end method

.method public isActive(Lcom/android/emailcommon/provider/Policy;)Z
    .locals 6
    .parameter "policy"

    .prologue
    const/4 v2, 0x1

    .line 248
    #v2=(Null);
    invoke-virtual {p0, p1}, Lcom/android/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/provider/Policy;)I

    move-result v0

    .line 249
    .local v0, reasons:I
    #v0=(Integer);
    sget-boolean v3, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v3=(Boolean);
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "isActive for "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, sb:Ljava/lang/StringBuilder;
    #v1=(Reference);
    const-string v3, "FALSE -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    and-int/lit8 v3, v0, 0x1

    #v3=(Integer);
    if-eqz v3, :cond_0

    .line 253
    const-string v3, "no_admin "

    #v3=(Reference);
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_0
    #v3=(Conflicted);
    and-int/lit8 v3, v0, 0x2

    #v3=(Integer);
    if-eqz v3, :cond_1

    .line 256
    const-string v3, "config "

    #v3=(Reference);
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_1
    #v3=(Conflicted);
    and-int/lit8 v3, v0, 0x4

    #v3=(Integer);
    if-eqz v3, :cond_2

    .line 259
    const-string v3, "password "

    #v3=(Reference);
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_2
    #v3=(Conflicted);
    and-int/lit8 v3, v0, 0x8

    #v3=(Integer);
    if-eqz v3, :cond_3

    .line 262
    const-string v3, "encryption "

    #v3=(Reference);
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_3
    #v3=(Conflicted);
    and-int/lit8 v3, v0, 0x10

    #v3=(Integer);
    if-eqz v3, :cond_4

    .line 265
    const-string v3, "protocol "

    #v3=(Reference);
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_4
    #v3=(Conflicted);
    const-string v3, "Email/SecurityPolicy"

    #v3=(Reference);
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 269
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_5
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    if-nez v0, :cond_6

    const/4 v2, 0x1

    :cond_6

    const v2, 1

    #v2=(Boolean);
    return v2
.end method

.method public isActiveAdmin()Z
    .locals 3

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 672
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v1=(Reference);
    const/4 v2, 0x6

    #v2=(PosByte);
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v1=(Reference);
    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v1=(Reference);
    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #v2=(Conflicted);
    return v1

    :cond_0
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method onAdminEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 716
    if-nez p1, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/email/SecurityPolicy;->deleteSecuredAccounts(Landroid/content/Context;)V

    .line 719
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public policiesRequired(J)V
    .locals 6
    .parameter "accountId"

    .prologue
    .line 488
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v2=(Reference);
    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 490
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 491
    :cond_1
    #v1=(Uninit);v2=(Reference);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-eqz v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v2=(Reference);
    iget-wide v3, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    .line 493
    .local v1, policy:Lcom/android/emailcommon/provider/Policy;
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 494
    sget-boolean v2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 495
    const-string v2, "Email/SecurityPolicy"

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "policiesRequired for "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 499
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    invoke-static {v2, v0, v3}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 502
    iget-object v2, v1, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 503
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/NotificationController;->showSecurityNeededNotification(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0

    .line 505
    :cond_3
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/NotificationController;->showSecurityUnsupportedNotification(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0
.end method

.method public declared-synchronized policiesUpdated()V
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    #v0=(Null);
    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    .line 224
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    #v0=(Reference);
    monitor-exit p0

    throw v0
.end method

.method public reducePolicies()V
    .locals 3

    .prologue
    .line 234
    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 235
    const-string v0, "Email/SecurityPolicy"

    #v0=(Reference);
    const-string v1, "reducePolicies"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 237
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->policiesUpdated()V

    .line 238
    return-void
.end method

.method public remoteWipe()V
    .locals 4

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 655
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 656
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 660
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 658
    :cond_0
    #v1=(Boolean);v2=(Uninit);v3=(Uninit);
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Could not remote wipe because not device admin."

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 11
    .parameter "accountId"
    .parameter "policy"
    .parameter "securityKey"

    .prologue
    const/4 v10, 0x0

    #v10=(Null);
    const/4 v5, 0x0

    .line 586
    #v5=(Null);
    iget-object v6, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v6=(Reference);
    invoke-static {v6, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 587
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    const/4 v1, 0x0

    .line 588
    .local v1, oldPolicy:Lcom/android/emailcommon/provider/Policy;
    #v1=(Null);
    iget-wide v6, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    #v6=(LongLo);v7=(LongHi);
    const-wide/16 v8, 0x0

    #v8=(LongLo);v9=(LongHi);
    cmp-long v6, v6, v8

    #v6=(Byte);
    if-lez v6, :cond_0

    .line 589
    iget-object v6, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v6=(Reference);
    iget-wide v7, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    .line 593
    :cond_0
    #v1=(Reference);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    .line 594
    iget-boolean v6, v1, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    #v6=(Boolean);
    iget-boolean v7, p3, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    #v7=(Boolean);
    if-ne v6, v7, :cond_1

    iget v6, v1, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    #v6=(Integer);
    iget v7, p3, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    #v7=(Integer);
    if-eq v6, v7, :cond_2

    .line 596
    :cond_1
    iget-object v6, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v6=(Reference);
    invoke-static {v6, v0, p3}, Lcom/android/emailcommon/provider/Policy;->setAttachmentFlagsForNewPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;)V

    .line 600
    :cond_2
    #v6=(Conflicted);v7=(Conflicted);
    if-eqz v1, :cond_3

    invoke-virtual {v1, p3}, Lcom/android/emailcommon/provider/Policy;->equals(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_4

    :cond_3
    #v6=(Conflicted);
    const/4 v2, 0x1

    .line 601
    .local v2, policyChanged:Z
    :goto_0
    #v2=(Boolean);
    if-nez v2, :cond_5

    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    #v6=(Reference);
    invoke-static {p4, v6}, Lcom/android/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_5

    .line 603
    sget-object v6, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    const-string v7, "setAccountPolicy; policy unchanged"

    #v7=(Reference);
    new-array v8, v5, [Ljava/lang/Object;

    #v8=(Reference);
    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 609
    :goto_1
    #v7=(Conflicted);v8=(Conflicted);
    const/4 v3, 0x0

    .line 610
    .local v3, setHold:Z
    #v3=(Null);
    iget-object v6, p3, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 612
    sget-object v6, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "Notify policies for "

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v6, v7, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 614
    const/4 v3, 0x1

    .line 615
    #v3=(One);
    iget-object v5, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/email/NotificationController;->showSecurityUnsupportedNotification(Lcom/android/emailcommon/provider/Account;)V

    .line 618
    const-string v5, "uiaccountdata"

    invoke-static {v5, p1, p2}, Lcom/android/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 619
    .local v4, uri:Landroid/net/Uri;
    #v4=(Reference);
    iget-object v5, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 638
    .end local v4           #uri:Landroid/net/Uri;
    :goto_2
    #v3=(Boolean);v4=(Conflicted);v8=(Conflicted);
    iget-object v5, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v3}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 639
    return-void

    .end local v2           #policyChanged:Z
    .end local v3           #setHold:Z
    :cond_4
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Boolean);v7=(Conflicted);
    move v2, v5

    .line 600
    #v2=(Null);
    goto :goto_0

    .line 605
    .restart local v2       #policyChanged:Z
    :cond_5
    #v2=(Boolean);v6=(Conflicted);
    iget-object v6, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v6=(Reference);
    invoke-static {v6, v0, p3, p4}, Lcom/android/email/SecurityPolicy;->setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->policiesUpdated()V

    goto :goto_1

    .line 620
    .restart local v3       #setHold:Z
    :cond_6
    #v3=(Null);
    invoke-virtual {p0, p3}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_8

    .line 621
    if-eqz v2, :cond_7

    .line 622
    sget-object v6, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "Notify policies for "

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " changed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v6, v7, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 625
    iget-object v5, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/email/NotificationController;->showSecurityChangedNotification(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_2

    .line 628
    :cond_7
    #v5=(Null);v6=(Boolean);v7=(Conflicted);v8=(Conflicted);
    sget-object v6, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    const-string v7, "Policy is active and unchanged; do not notify."

    #v7=(Reference);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v6, v7, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 631
    :cond_8
    #v5=(Null);v6=(Boolean);v7=(Conflicted);
    const/4 v3, 0x1

    .line 632
    #v3=(One);
    sget-object v6, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "Notify policies for "

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " are not being enforced."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v6, v7, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 635
    iget-object v5, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/email/NotificationController;->showSecurityNeededNotification(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_2
.end method

.method public setActivePolicies()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 404
    #v5=(Null);
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 406
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    .line 408
    .local v0, aggregatePolicy:Lcom/android/emailcommon/provider/Policy;
    #v0=(Reference);
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    #v2=(Reference);
    if-ne v0, v2, :cond_2

    .line 409
    sget-boolean v2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 410
    const-string v2, "Email/SecurityPolicy"

    #v2=(Reference);
    const-string v3, "setActivePolicies: none, remove admin"

    #v3=(Reference);
    new-array v4, v5, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 412
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 444
    :cond_1
    :goto_0
    #v2=(Conflicted);
    return-void

    .line 413
    :cond_2
    #v2=(Reference);v3=(Uninit);v4=(Uninit);
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 414
    sget-boolean v2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 415
    const-string v2, "Email/SecurityPolicy"

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "setActivePolicies: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 419
    :cond_3
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    #v2=(Reference);
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordQuality()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 420
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 422
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 424
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 426
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v3

    #v3=(LongLo);
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 429
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 435
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 436
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    .line 437
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 439
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    #v3=(Boolean);
    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 442
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    goto :goto_0
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method public syncAccount(Lcom/android/emailcommon/provider/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/android/email/SecurityPolicy;->syncAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 583
    return-void
.end method
