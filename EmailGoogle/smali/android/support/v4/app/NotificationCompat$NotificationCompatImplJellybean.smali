.class Landroid/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplJellybean"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 21
    .parameter "b"

    .prologue
    .line 117
    new-instance v1, Landroid/support/v4/app/NotificationCompatJellybean;

    #v1=(UninitRef);
    move-object/from16 v0, p1

    #v0=(Reference);
    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #v2=(Reference);
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #v3=(Reference);
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #v4=(Reference);
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    #v5=(Reference);
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #v6=(Reference);
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    #v7=(Reference);
    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    #v8=(Integer);
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    #v9=(Reference);
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    #v10=(Reference);
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    #v11=(Reference);
    move-object/from16 v0, p1

    iget v12, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    #v12=(Integer);
    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    #v13=(Integer);
    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    #v14=(Boolean);
    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    #v15=(Boolean);
    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    #v0=(Integer);
    move/from16 v16, v0

    #v16=(Integer);
    move-object/from16 v0, p1

    #v0=(Reference);
    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-direct/range {v1 .. v17}, Landroid/support/v4/app/NotificationCompatJellybean;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    .line 122
    .local v1, jbBuilder:Landroid/support/v4/app/NotificationCompatJellybean;
    #v1=(Reference);
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_0
    #v2=(Conflicted);v18=(Conflicted);v19=(Reference);
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    #v18=(Reference);
    check-cast v18, Landroid/support/v4/app/NotificationCompat$Action;

    .line 123
    .local v18, action:Landroid/support/v4/app/NotificationCompat$Action;
    move-object/from16 v0, v18

    iget v2, v0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    #v2=(Integer);
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/NotificationCompatJellybean;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 125
    .end local v18           #action:Landroid/support/v4/app/NotificationCompat$Action;
    :cond_0
    #v2=(Boolean);v18=(Conflicted);
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    #v2=(Reference);
    if-eqz v2, :cond_1

    .line 126
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v2, v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 127
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object/from16 v20, v0

    #v20=(Reference);
    check-cast v20, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 128
    .local v20, style:Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #v2=(Reference);
    move-object/from16 v0, v20

    iget-boolean v3, v0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    #v3=(Boolean);
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/app/NotificationCompatJellybean;->addBigTextStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 148
    .end local v20           #style:Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    :cond_1
    :goto_1
    #v2=(Conflicted);v3=(Conflicted);v7=(Conflicted);v20=(Conflicted);
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompatJellybean;->build()Landroid/app/Notification;

    move-result-object v2

    #v2=(Reference);
    return-object v2

    .line 132
    :cond_2
    #v2=(Boolean);v3=(Reference);v7=(Reference);v20=(Uninit);
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    #v2=(Reference);
    instance-of v2, v2, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    #v2=(Boolean);
    if-eqz v2, :cond_3

    .line 133
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object/from16 v20, v0

    #v20=(Reference);
    check-cast v20, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 134
    .local v20, style:Landroid/support/v4/app/NotificationCompat$InboxStyle;
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #v2=(Reference);
    move-object/from16 v0, v20

    iget-boolean v3, v0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    #v3=(Boolean);
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/app/NotificationCompatJellybean;->addInboxStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 138
    .end local v20           #style:Landroid/support/v4/app/NotificationCompat$InboxStyle;
    :cond_3
    #v2=(Boolean);v3=(Reference);v20=(Uninit);
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    #v2=(Reference);
    instance-of v2, v2, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 139
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object/from16 v20, v0

    #v20=(Reference);
    check-cast v20, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 140
    .local v20, style:Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #v2=(Reference);
    move-object/from16 v0, v20

    iget-boolean v3, v0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    #v3=(Boolean);
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    iget-boolean v7, v0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    #v7=(Boolean);
    invoke-virtual/range {v1 .. v7}, Landroid/support/v4/app/NotificationCompatJellybean;->addBigPictureStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method
