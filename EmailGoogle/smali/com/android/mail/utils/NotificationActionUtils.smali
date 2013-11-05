.class public Lcom/android/mail/utils/NotificationActionUtils;
.super Ljava/lang/Object;
.source "NotificationActionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/utils/NotificationActionUtils$1;,
        Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;,
        Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;
    }
.end annotation


# static fields
.field public static final sNotificationTimestamps:Lcom/android/mail/utils/SparseLongArray;

.field public static final sUndoNotifications:Lcom/android/mail/utils/ObservableSparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/utils/ObservableSparseArrayCompat",
            "<",
            "Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;",
            ">;"
        }
    .end annotation
.end field

.field private static sUndoTimeoutMillis:J

.field public static final sUndoneConversations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    sput-wide v0, Lcom/android/mail/utils/NotificationActionUtils;->sUndoTimeoutMillis:J

    .line 63
    new-instance v0, Lcom/android/mail/utils/ObservableSparseArrayCompat;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/utils/ObservableSparseArrayCompat;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/android/mail/utils/ObservableSparseArrayCompat;

    .line 71
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/NotificationActionUtils;->sUndoneConversations:Ljava/util/Set;

    .line 78
    new-instance v0, Lcom/android/mail/utils/SparseLongArray;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/utils/SparseLongArray;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/utils/NotificationActionUtils;->sNotificationTimestamps:Lcom/android/mail/utils/SparseLongArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 391
    #p0=(Reference);
    return-void
.end method

.method public static addNotificationActions(Landroid/content/Context;Landroid/content/Intent;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Folder;IJLjava/util/Set;)V
    .locals 17
    .parameter "context"
    .parameter "notificationIntent"
    .parameter "notification"
    .parameter "account"
    .parameter "conversation"
    .parameter "message"
    .parameter "folder"
    .parameter "notificationId"
    .parameter "when"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Landroid/support/v4/app/NotificationCompat$Builder;",
            "Lcom/android/mail/providers/Account;",
            "Lcom/android/mail/providers/Conversation;",
            "Lcom/android/mail/providers/Message;",
            "Lcom/android/mail/providers/Folder;",
            "IJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p10, notificationActions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p6

    #v0=(Reference);
    move-object/from16 v1, p10

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/mail/utils/NotificationActionUtils;->getSortedNotificationActions(Lcom/android/mail/providers/Folder;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v14

    .line 203
    .local v14, sortedActions:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;>;"
    #v14=(Reference);
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Reference);v15=(Conflicted);v16=(Conflicted);
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 204
    .local v9, notificationAction:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;
    move-object/from16 v0, p6

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    #v2=(Reference);
    invoke-virtual {v9, v0, v1, v2}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->getActionIconResId(Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Message;)I

    move-result v15

    #v15=(Integer);
    move-object/from16 v0, p6

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->getDisplayStringResId(Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Message;)I

    move-result v3

    #v3=(Integer);
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    #v16=(Reference);
    move-object/from16 v3, p0

    #v3=(Reference);
    move-object/from16 v4, p3

    #v4=(Reference);
    move-object/from16 v5, p4

    #v5=(Reference);
    move-object/from16 v6, p5

    #v6=(Reference);
    move-object/from16 v7, p6

    #v7=(Reference);
    move-object/from16 v8, p1

    #v8=(Reference);
    move/from16 v10, p7

    #v10=(Integer);
    move-wide/from16 v11, p8

    #v11=(LongLo);v12=(LongHi);
    invoke-static/range {v3 .. v12}, Lcom/android/mail/utils/NotificationActionUtils;->getNotificationActionPendingIntent(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Folder;Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;IJ)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 210
    .end local v9           #notificationAction:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;
    :cond_0
    #v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    return-void
.end method

.method public static cancelUndoNotification(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 9
    .parameter "context"
    .parameter "notificationAction"

    .prologue
    const/4 v8, 0x0

    .line 697
    #v8=(Null);
    const-string v4, "NotifActionUtils"

    #v4=(Reference);
    const-string v5, "cancelUndoNotification for %s"

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 700
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getAccount()Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 701
    .local v0, account:Lcom/android/mail/providers/Account;
    #v0=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v2

    .line 702
    .local v2, folder:Lcom/android/mail/providers/Folder;
    #v2=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v1

    .line 703
    .local v1, conversation:Lcom/android/mail/providers/Conversation;
    #v1=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/mail/utils/NotificationUtils;->getNotificationId(Landroid/accounts/Account;Lcom/android/mail/providers/Folder;)I

    move-result v3

    .line 709
    .local v3, notificationId:I
    #v3=(Integer);
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils;->sUndoneConversations:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-static {p0, v3, v8}, Lcom/android/mail/utils/NotificationActionUtils;->removeUndoNotification(Landroid/content/Context;IZ)V

    .line 711
    invoke-static {p0, v0, v2}, Lcom/android/mail/utils/NotificationActionUtils;->resendNotifications(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 712
    return-void
.end method

.method public static cancelUndoTimeout(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 7
    .parameter "context"
    .parameter "notificationAction"

    .prologue
    .line 591
    const-string v2, "NotifActionUtils"

    #v2=(Reference);
    const-string v3, "cancelUndoTimeout for %s"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 594
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/app/AlarmManager;

    .line 597
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {p0, p1}, Lcom/android/mail/utils/NotificationActionUtils;->createUndoTimeoutPendingIntent(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 600
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 601
    return-void
.end method

.method public static createReplyIntent(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "messageUri"
    .parameter "isReplyAll"

    .prologue
    .line 375
    invoke-static {p0, p1, p2, p3}, Lcom/android/mail/compose/ComposeActivity;->createReplyIntent(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 377
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    const-string v1, "notification"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    return-object v0
.end method

.method public static createUndoNotification(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;I)Landroid/app/Notification;
    .locals 13
    .parameter "context"
    .parameter "notificationAction"
    .parameter "notificationId"

    .prologue
    .line 521
    const-string v8, "NotifActionUtils"

    #v8=(Reference);
    const-string v9, "createUndoNotification for %s"

    #v9=(Reference);
    const/4 v10, 0x1

    #v10=(One);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v12

    #v12=(Reference);
    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 524
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 526
    .local v0, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    #v0=(Reference);
    const v8, 0x7f0200aa

    #v8=(Integer);
    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 527
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getWhen()J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    invoke-virtual {v0, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 529
    new-instance v7, Landroid/widget/RemoteViews;

    #v7=(UninitRef);
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    const v9, 0x7f04006d

    #v9=(Integer);
    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 531
    .local v7, undoView:Landroid/widget/RemoteViews;
    #v7=(Reference);
    const v8, 0x7f08005e

    #v8=(Integer);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getActionTextResId()I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 534
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 536
    .local v6, packageName:Ljava/lang/String;
    #v6=(Reference);
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-string v8, "com.android.mail.action.notification.UNDO"

    #v8=(Reference);
    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .local v1, clickIntent:Landroid/content/Intent;
    #v1=(Reference);
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-static {v1, p1}, Lcom/android/mail/utils/NotificationActionUtils;->putNotificationActionExtra(Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 539
    const/high16 v8, 0x1000

    #v8=(Integer);
    invoke-static {p0, p2, v1, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 542
    .local v2, clickPendingIntent:Landroid/app/PendingIntent;
    #v2=(Reference);
    const v8, 0x7f080146

    invoke-virtual {v7, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 544
    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 547
    new-instance v3, Landroid/content/Intent;

    #v3=(UninitRef);
    const-string v8, "com.android.mail.action.notification.DESTRUCT"

    #v8=(Reference);
    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v3, deleteIntent:Landroid/content/Intent;
    #v3=(Reference);
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    invoke-static {v3, p1}, Lcom/android/mail/utils/NotificationActionUtils;->putNotificationActionExtra(Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 550
    const/high16 v8, 0x1000

    #v8=(Integer);
    invoke-static {p0, p2, v3, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 552
    .local v4, deletePendingIntent:Landroid/app/PendingIntent;
    #v4=(Reference);
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 554
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 556
    .local v5, notification:Landroid/app/Notification;
    #v5=(Reference);
    return-object v5
.end method

.method public static createUndoNotification(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 8
    .parameter "context"
    .parameter "notificationAction"

    .prologue
    .line 674
    const-string v3, "NotifActionUtils"

    #v3=(Reference);
    const-string v4, "createUndoNotification for %s"

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 677
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getAccount()Lcom/android/mail/providers/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mail/utils/NotificationUtils;->getNotificationId(Landroid/accounts/Account;Lcom/android/mail/providers/Folder;)I

    move-result v1

    .line 681
    .local v1, notificationId:I
    #v1=(Integer);
    invoke-static {p0, p1, v1}, Lcom/android/mail/utils/NotificationActionUtils;->createUndoNotification(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;I)Landroid/app/Notification;

    move-result-object v0

    .line 684
    .local v0, notification:Landroid/app/Notification;
    #v0=(Reference);
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/app/NotificationManager;

    .line 686
    .local v2, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 688
    sget-object v3, Lcom/android/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/android/mail/utils/ObservableSparseArrayCompat;

    invoke-virtual {v3, v1, p1}, Lcom/android/mail/utils/ObservableSparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 689
    sget-object v3, Lcom/android/mail/utils/NotificationActionUtils;->sNotificationTimestamps:Lcom/android/mail/utils/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getWhen()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v3, v1, v4, v5}, Lcom/android/mail/utils/SparseLongArray;->put(IJ)V

    .line 690
    return-void
.end method

.method private static createUndoTimeoutPendingIntent(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "notificationAction"

    .prologue
    .line 609
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v3, "com.android.mail.action.notification.UNDO_TIMEOUT"

    #v3=(Reference);
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    invoke-static {v0, p1}, Lcom/android/mail/utils/NotificationActionUtils;->putNotificationActionExtra(Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 613
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getAccount()Lcom/android/mail/providers/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->hashCode()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/providers/Folder;->hashCode()I

    move-result v4

    #v4=(Integer);
    xor-int v2, v3, v4

    .line 615
    .local v2, requestCode:I
    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 618
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    #v1=(Reference);
    return-object v1
.end method

.method private static getNotificationActionPendingIntent(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Folder;Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;IJ)Landroid/app/PendingIntent;
    .locals 21
    .parameter "context"
    .parameter "account"
    .parameter "conversation"
    .parameter "message"
    .parameter "folder"
    .parameter "notificationIntent"
    .parameter "action"
    .parameter "notificationId"
    .parameter "when"

    .prologue
    .line 303
    move-object/from16 v0, p3

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    .line 305
    .local v18, messageUri:Landroid/net/Uri;
    #v18=(Reference);
    new-instance v3, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;

    #v3=(UninitRef);
    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/android/mail/providers/Conversation;->id:J

    #v9=(LongLo);v10=(LongHi);
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mail/providers/Message;->serverId:Ljava/lang/String;

    #v11=(Reference);
    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/android/mail/providers/Message;->id:J

    #v12=(LongLo);v13=(LongHi);
    move-object/from16 v4, p6

    #v4=(Reference);
    move-object/from16 v5, p1

    #v5=(Reference);
    move-object/from16 v6, p2

    #v6=(Reference);
    move-object/from16 v7, p3

    #v7=(Reference);
    move-object/from16 v8, p4

    #v8=(Reference);
    move-wide/from16 v14, p8

    #v14=(LongLo);v15=(LongHi);
    invoke-direct/range {v3 .. v15}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;-><init>(Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Folder;JLjava/lang/String;JJ)V

    .line 308
    .local v3, notificationAction:Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;
    #v3=(Reference);
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$1;->$SwitchMap$com$android$mail$utils$NotificationActionUtils$NotificationActionType:[I

    invoke-virtual/range {p6 .. p6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->ordinal()I

    move-result v5

    #v5=(Integer);
    aget v4, v4, v5

    #v4=(Integer);
    packed-switch v4, :pswitch_data_0

    .line 367
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #v4=(UninitRef);
    const-string v5, "Invalid NotificationActionType"

    #v5=(Reference);
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v4=(Reference);
    throw v4

    .line 312
    :pswitch_0
    #v4=(Integer);v5=(Integer);
    invoke-static/range {p0 .. p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v20

    .line 314
    .local v20, taskStackBuilder:Landroid/support/v4/app/TaskStackBuilder;
    #v20=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    #v1=(Reference);
    move-object/from16 v2, v18

    #v2=(Reference);
    invoke-static {v0, v1, v2, v4}, Lcom/android/mail/utils/NotificationActionUtils;->createReplyIntent(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v16

    .line 315
    .local v16, intent:Landroid/content/Intent;
    #v16=(Reference);
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v4, "extra-notification-folder"

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "mailfrom://mail/account/reply/"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    #v0=(Integer);
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 321
    .local v19, notificationUri:Landroid/net/Uri;
    #v19=(Reference);
    move-object/from16 v0, v16

    #v0=(Reference);
    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 323
    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 325
    const/high16 v4, 0x800

    #v4=(Integer);
    move-object/from16 v0, v20

    move/from16 v1, p7

    #v1=(Integer);
    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v4

    .line 362
    .end local v19           #notificationUri:Landroid/net/Uri;
    .end local v20           #taskStackBuilder:Landroid/support/v4/app/TaskStackBuilder;
    :goto_0
    #v4=(Reference);v5=(Conflicted);v17=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    return-object v4

    .line 330
    .end local v16           #intent:Landroid/content/Intent;
    :pswitch_1
    #v1=(Uninit);v2=(Uninit);v4=(Integer);v5=(Integer);v16=(Uninit);v17=(Uninit);v19=(Uninit);v20=(Uninit);
    invoke-static/range {p0 .. p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v20

    .line 332
    .restart local v20       #taskStackBuilder:Landroid/support/v4/app/TaskStackBuilder;
    #v20=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    #v1=(Reference);
    move-object/from16 v2, v18

    #v2=(Reference);
    invoke-static {v0, v1, v2, v4}, Lcom/android/mail/utils/NotificationActionUtils;->createReplyIntent(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v16

    .line 333
    .restart local v16       #intent:Landroid/content/Intent;
    #v16=(Reference);
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v4, "extra-notification-folder"

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "mailfrom://mail/account/replyall/"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    #v0=(Integer);
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 339
    .restart local v19       #notificationUri:Landroid/net/Uri;
    #v19=(Reference);
    move-object/from16 v0, v16

    #v0=(Reference);
    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 341
    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 343
    const/high16 v4, 0x800

    #v4=(Integer);
    move-object/from16 v0, v20

    move/from16 v1, p7

    #v1=(Integer);
    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v4

    #v4=(Reference);
    goto :goto_0

    .line 346
    .end local v16           #intent:Landroid/content/Intent;
    .end local v19           #notificationUri:Landroid/net/Uri;
    .end local v20           #taskStackBuilder:Landroid/support/v4/app/TaskStackBuilder;
    :pswitch_2
    #v1=(Uninit);v2=(Uninit);v4=(Integer);v5=(Integer);v16=(Uninit);v19=(Uninit);v20=(Uninit);
    const-string v17, "com.android.mail.action.notification.ARCHIVE"

    .line 349
    .local v17, intentAction:Ljava/lang/String;
    #v17=(Reference);
    new-instance v16, Landroid/content/Intent;

    #v16=(UninitRef);
    const-string v4, "com.android.mail.action.notification.ARCHIVE"

    #v4=(Reference);
    move-object/from16 v0, v16

    #v0=(UninitRef);
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .restart local v16       #intent:Landroid/content/Intent;
    #v0=(Reference);v16=(Reference);
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/android/mail/utils/NotificationActionUtils;->putNotificationActionExtra(Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 353
    const/high16 v4, 0x800

    #v4=(Integer);
    move-object/from16 v0, p0

    move/from16 v1, p7

    #v1=(Integer);
    move-object/from16 v2, v16

    #v2=(Reference);
    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    #v4=(Reference);
    goto :goto_0

    .line 356
    .end local v16           #intent:Landroid/content/Intent;
    .end local v17           #intentAction:Ljava/lang/String;
    :pswitch_3
    #v1=(Uninit);v2=(Uninit);v4=(Integer);v16=(Uninit);v17=(Uninit);
    const-string v17, "com.android.mail.action.notification.DELETE"

    .line 358
    .restart local v17       #intentAction:Ljava/lang/String;
    #v17=(Reference);
    new-instance v16, Landroid/content/Intent;

    #v16=(UninitRef);
    const-string v4, "com.android.mail.action.notification.DELETE"

    #v4=(Reference);
    move-object/from16 v0, v16

    #v0=(UninitRef);
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .restart local v16       #intent:Landroid/content/Intent;
    #v0=(Reference);v16=(Reference);
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/android/mail/utils/NotificationActionUtils;->putNotificationActionExtra(Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 362
    const/high16 v4, 0x800

    #v4=(Integer);
    move-object/from16 v0, p0

    move/from16 v1, p7

    #v1=(Integer);
    move-object/from16 v2, v16

    #v2=(Reference);
    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    #v4=(Reference);
    goto/16 :goto_0

    .line 308
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);p4=(Unknown);p5=(Unknown);p6=(Unknown);p7=(Unknown);p8=(Unknown);p9=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getSortedNotificationActions(Lcom/android/mail/providers/Folder;Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .parameter "folder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Folder;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, notificationActionStrings:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef);
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    #v4=(Integer);
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v3, unsortedActions:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;>;"
    #v3=(Reference);
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/String;

    .line 223
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->getActionType(Ljava/lang/String;)Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v4

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    #v0=(Conflicted);v4=(Boolean);
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef);
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    #v4=(Integer);
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    .local v2, sortedActions:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;>;"
    #v2=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/providers/Folder;->isInbox()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_5

    .line 239
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->ARCHIVE_REMOVE_LABEL:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 240
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->ARCHIVE_REMOVE_LABEL:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_1
    #v4=(Conflicted);
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 243
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_2
    #v4=(Conflicted);
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 246
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_3
    #v4=(Conflicted);
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    .line 249
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_4
    :goto_1
    #v4=(Conflicted);
    return-object v2

    .line 251
    :cond_5
    #v4=(Boolean);
    invoke-virtual {p0}, Lcom/android/mail/providers/Folder;->isProviderFolder()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 261
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_6

    .line 262
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_6
    #v4=(Conflicted);
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_7

    .line 265
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_7
    #v4=(Conflicted);
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    .line 268
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 279
    :cond_8
    #v4=(Boolean);
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->ARCHIVE_REMOVE_LABEL:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_9

    .line 280
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->ARCHIVE_REMOVE_LABEL:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_9
    #v4=(Conflicted);
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_a

    .line 283
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->DELETE:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_a
    #v4=(Conflicted);
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_b

    .line 286
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_b
    #v4=(Conflicted);
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    .line 289
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->REPLY_ALL:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    #v4=(Reference);
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static processDestructiveAction(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 14
    .parameter "context"
    .parameter "notificationAction"

    .prologue
    const/4 v13, 0x1

    #v13=(One);
    const/4 v12, 0x0

    .line 626
    #v12=(Null);
    const-string v7, "NotifActionUtils"

    #v7=(Reference);
    const-string v8, "processDestructiveAction: %s"

    #v8=(Reference);
    new-array v9, v13, [Ljava/lang/Object;

    #v9=(Reference);
    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v11

    #v11=(Reference);
    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 629
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v2

    .line 631
    .local v2, destructAction:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;
    #v2=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getConversation()Lcom/android/mail/providers/Conversation;

    move-result-object v1

    .line 632
    .local v1, conversation:Lcom/android/mail/providers/Conversation;
    #v1=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v3

    .line 634
    .local v3, folder:Lcom/android/mail/providers/Folder;
    #v3=(Reference);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 635
    .local v0, contentResolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    iget-object v7, v1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "forceUiNotifications"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 638
    .local v5, uri:Landroid/net/Uri;
    #v5=(Reference);
    sget-object v7, Lcom/android/mail/utils/NotificationActionUtils$1;->$SwitchMap$com$android$mail$utils$NotificationActionUtils$NotificationActionType:[I

    invoke-virtual {v2}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->ordinal()I

    move-result v8

    #v8=(Integer);
    aget v7, v7, v8

    #v7=(Integer);
    packed-switch v7, :pswitch_data_0

    .line 664
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #v7=(UninitRef);
    const-string v8, "The specified NotificationActionType is not a destructive action."

    #v8=(Reference);
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v7=(Reference);
    throw v7

    .line 640
    :pswitch_0
    #v7=(Integer);v8=(Integer);
    invoke-virtual {v3}, Lcom/android/mail/providers/Folder;->isInbox()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 642
    new-instance v6, Landroid/content/ContentValues;

    #v6=(UninitRef);
    invoke-direct {v6, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 643
    .local v6, values:Landroid/content/ContentValues;
    #v6=(Reference);
    const-string v7, "operation"

    #v7=(Reference);
    const-string v8, "archive"

    #v8=(Reference);
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {v0, v5, v6, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 667
    .end local v6           #values:Landroid/content/ContentValues;
    :goto_0
    #v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 649
    :cond_0
    #v4=(Uninit);v6=(Uninit);v7=(Boolean);v8=(Integer);
    new-instance v6, Landroid/content/ContentValues;

    #v6=(UninitRef);
    invoke-direct {v6, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 651
    .restart local v6       #values:Landroid/content/ContentValues;
    #v6=(Reference);
    iget-object v7, v3, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v7=(Reference);
    iget-object v7, v7, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #v8=(Reference);
    invoke-virtual {v8}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 653
    .local v4, removeFolderUri:Ljava/lang/String;
    #v4=(Reference);
    const-string v7, "folders_updated"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0, v5, v6, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 660
    .end local v4           #removeFolderUri:Ljava/lang/String;
    .end local v6           #values:Landroid/content/ContentValues;
    :pswitch_1
    #v4=(Uninit);v6=(Uninit);v7=(Integer);v8=(Integer);
    invoke-virtual {v0, v5, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 638
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static processUndoNotification(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 9
    .parameter "context"
    .parameter "notificationAction"

    .prologue
    const/4 v8, 0x1

    .line 720
    #v8=(One);
    const-string v3, "NotifActionUtils"

    #v3=(Reference);
    const-string v4, "processUndoNotification, %s"

    #v4=(Reference);
    new-array v5, v8, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 723
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getAccount()Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 724
    .local v0, account:Lcom/android/mail/providers/Account;
    #v0=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v1

    .line 725
    .local v1, folder:Lcom/android/mail/providers/Folder;
    #v1=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/mail/utils/NotificationUtils;->getNotificationId(Landroid/accounts/Account;Lcom/android/mail/providers/Folder;)I

    move-result v2

    .line 727
    .local v2, notificationId:I
    #v2=(Integer);
    invoke-static {p0, v2, v8}, Lcom/android/mail/utils/NotificationActionUtils;->removeUndoNotification(Landroid/content/Context;IZ)V

    .line 728
    sget-object v3, Lcom/android/mail/utils/NotificationActionUtils;->sNotificationTimestamps:Lcom/android/mail/utils/SparseLongArray;

    invoke-virtual {v3, v2}, Lcom/android/mail/utils/SparseLongArray;->delete(I)V

    .line 729
    invoke-static {p0, p1}, Lcom/android/mail/utils/NotificationActionUtils;->processDestructiveAction(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 731
    invoke-static {p0, v0, v1}, Lcom/android/mail/utils/NotificationActionUtils;->resendNotifications(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 732
    return-void
.end method

.method private static putNotificationActionExtra(Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 3
    .parameter "intent"
    .parameter "notificationAction"

    .prologue
    const/4 v1, 0x0

    .line 789
    #v1=(Null);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 790
    .local v0, out:Landroid/os/Parcel;
    #v0=(Reference);
    invoke-virtual {p1, v0, v1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 791
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 792
    const-string v1, "com.android.mail.extra.EXTRA_NOTIFICATION_ACTION"

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 793
    return-void
.end method

.method public static registerUndoNotificationObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 768
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/android/mail/utils/ObservableSparseArrayCompat;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/utils/ObservableSparseArrayCompat;->getDataSetObservable()Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 769
    return-void
.end method

.method public static registerUndoTimeout(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 9
    .parameter "context"
    .parameter "notificationAction"

    .prologue
    .line 565
    const-string v4, "NotifActionUtils"

    #v4=(Reference);
    const-string v5, "registerUndoTimeout for %s"

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getNotificationActionType()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 568
    sget-wide v4, Lcom/android/mail/utils/NotificationActionUtils;->sUndoTimeoutMillis:J

    #v4=(LongLo);v5=(LongHi);
    const-wide/16 v6, -0x1

    #v6=(LongLo);v7=(LongHi);
    cmp-long v4, v4, v6

    #v4=(Byte);
    if-nez v4, :cond_0

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    #v4=(Reference);
    const v5, 0x7f0e002c

    #v5=(Integer);
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    sput-wide v4, Lcom/android/mail/utils/NotificationActionUtils;->sUndoTimeoutMillis:J

    .line 573
    :cond_0
    #v4=(Conflicted);
    const-string v4, "alarm"

    #v4=(Reference);
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/app/AlarmManager;

    .line 576
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    #v4=(LongLo);
    sget-wide v6, Lcom/android/mail/utils/NotificationActionUtils;->sUndoTimeoutMillis:J

    add-long v2, v4, v6

    .line 578
    .local v2, triggerAtMills:J
    #v2=(LongLo);v3=(LongHi);
    invoke-static {p0, p1}, Lcom/android/mail/utils/NotificationActionUtils;->createUndoTimeoutPendingIntent(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 581
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    #v1=(Reference);
    const/4 v4, 0x3

    #v4=(PosByte);
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 582
    return-void
.end method

.method private static removeUndoNotification(Landroid/content/Context;IZ)V
    .locals 2
    .parameter "context"
    .parameter "notificationId"
    .parameter "removeNow"

    .prologue
    .line 742
    sget-object v1, Lcom/android/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/android/mail/utils/ObservableSparseArrayCompat;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Lcom/android/mail/utils/ObservableSparseArrayCompat;->delete(I)V

    .line 744
    if-eqz p2, :cond_0

    .line 745
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/app/NotificationManager;

    .line 747
    .local v0, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 749
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public static resendNotifications(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V
    .locals 7
    .parameter "context"
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 756
    const-string v1, "NotifActionUtils"

    #v1=(Reference);
    const-string v2, "resendNotifications account: %s, folder: %s"

    #v2=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "NotifActionUtils"

    #v5=(Reference);
    iget-object v6, p1, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    #v6=(Reference);
    invoke-static {v5, v6}, Lcom/android/mail/utils/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    const-string v5, "NotifActionUtils"

    iget-object v6, p2, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/mail/utils/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 760
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "com.android.mail.action.RESEND_NOTIFICATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    const-string v1, "accountUri"

    iget-object v2, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 763
    const-string v1, "folderUri"

    iget-object v2, p2, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v2, v2, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 764
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 765
    return-void
.end method

.method public static unregisterUndoNotificationObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 772
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils;->sUndoNotifications:Lcom/android/mail/utils/ObservableSparseArrayCompat;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/utils/ObservableSparseArrayCompat;->getDataSetObservable()Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 773
    return-void
.end method
