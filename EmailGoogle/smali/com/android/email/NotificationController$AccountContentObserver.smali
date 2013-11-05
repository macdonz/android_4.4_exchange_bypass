.class Lcom/android/email/NotificationController$AccountContentObserver;
.super Landroid/database/ContentObserver;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountContentObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 635
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 636
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/email/NotificationController$AccountContentObserver;->mContext:Landroid/content/Context;

    .line 637
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 13
    .parameter "selfChange"

    .prologue
    const/4 v12, 0x0

    #v12=(Null);
    const/4 v3, 0x0

    .line 641
    #v3=(Null);
    iget-object v1, p0, Lcom/android/email/NotificationController$AccountContentObserver;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 642
    .local v0, resolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 644
    .local v8, c:Landroid/database/Cursor;
    #v8=(Reference);
    new-instance v10, Ljava/util/HashSet;

    #v10=(UninitRef);
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 645
    .local v10, newAccountList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    #v10=(Reference);
    new-instance v11, Ljava/util/HashSet;

    #v11=(UninitRef);
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 646
    .local v11, removedAccountList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    #v11=(Reference);
    if-nez v8, :cond_0

    .line 648
    invoke-static {}, Lcom/android/email/NotificationController;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#onChange(); NULL response for account id query"

    new-array v3, v12, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 678
    :goto_0
    #v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);
    return-void

    .line 652
    :cond_0
    :goto_1
    :try_start_0
    #v3=(Null);v9=(Uninit);
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 653
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 654
    .local v6, accountId:J
    #v6=(LongLo);v7=(LongHi);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 657
    .end local v6           #accountId:J
    :catchall_0
    #v6=(Conflicted);v7=(Conflicted);
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    #v1=(Boolean);
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 662
    invoke-static {}, Lcom/android/email/NotificationController;->access$600()Lcom/android/email/NotificationController;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$700(Lcom/android/email/NotificationController;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    #v1=(Conflicted);v9=(Reference);
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 663
    .restart local v6       #accountId:J
    #v6=(LongLo);v7=(LongHi);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_2

    .line 665
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 669
    .end local v6           #accountId:J
    :cond_3
    #v1=(Boolean);v6=(Conflicted);v7=(Conflicted);
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    #v1=(Conflicted);
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 670
    .restart local v6       #accountId:J
    #v6=(LongLo);v7=(LongHi);
    invoke-static {}, Lcom/android/email/NotificationController;->access$600()Lcom/android/email/NotificationController;

    move-result-object v1

    invoke-static {v1, v6, v7}, Lcom/android/email/NotificationController;->access$100(Lcom/android/email/NotificationController;J)V

    goto :goto_3

    .line 673
    .end local v6           #accountId:J
    :cond_4
    #v1=(Boolean);v6=(Conflicted);v7=(Conflicted);
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    #v1=(Conflicted);
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 674
    .restart local v6       #accountId:J
    #v6=(LongLo);v7=(LongHi);
    invoke-static {}, Lcom/android/email/NotificationController;->access$600()Lcom/android/email/NotificationController;

    move-result-object v1

    invoke-static {v1, v6, v7}, Lcom/android/email/NotificationController;->access$800(Lcom/android/email/NotificationController;J)V

    goto :goto_4

    .line 677
    .end local v6           #accountId:J
    :cond_5
    #v1=(Boolean);v6=(Conflicted);v7=(Conflicted);
    iget-object v1, p0, Lcom/android/email/NotificationController$AccountContentObserver;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-static {v1, v12, v3, v3}, Lcom/android/mail/utils/NotificationUtils;->resendNotifications(Landroid/content/Context;ZLandroid/net/Uri;Lcom/android/mail/utils/FolderUri;)V

    goto/16 :goto_0
.end method
