.class public Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;
.super Ljava/util/ArrayList;
.source "CalendarSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/CalendarSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CalendarOperations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAsSyncAdapterAttendees:Landroid/net/Uri;

.field private final mAsSyncAdapterEvents:Landroid/net/Uri;

.field private final mAsSyncAdapterExtendedProperties:Landroid/net/Uri;

.field private final mAsSyncAdapterReminders:Landroid/net/Uri;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field public mCount:I

.field private mEventStart:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .parameter "contentResolver"
    .parameter "asSyncAdapterAttendees"
    .parameter "asSyncAdapterEvents"
    .parameter "asSyncAdapterReminders"
    .parameter "asSyncAdapterExtendedProperties"

    .prologue
    const/4 v0, 0x0

    .line 134
    #v0=(Null);
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    #p0=(Reference);
    iput v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    .line 125
    iput v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mEventStart:I

    .line 135
    iput-object p1, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mContentResolver:Landroid/content/ContentResolver;

    .line 136
    iput-object p2, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    .line 137
    iput-object p3, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterEvents:Landroid/net/Uri;

    .line 138
    iput-object p4, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterReminders:Landroid/net/Uri;

    .line 139
    iput-object p5, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterExtendedProperties:Landroid/net/Uri;

    .line 140
    return-void
.end method


# virtual methods
.method public add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z
    .locals 1
    .parameter "op"

    .prologue
    .line 144
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    .line 146
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    check-cast p1, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public delete(JLjava/lang/String;)V
    .locals 5
    .parameter "id"
    .parameter "syncId"

    .prologue
    .line 233
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterEvents:Landroid/net/Uri;

    #v1=(Reference);
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 236
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterEvents:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "original_sync_id=?"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 239
    return-void
.end method

.method public newAttendee(Landroid/content/ContentValues;)V
    .locals 1
    .parameter "cv"

    .prologue
    .line 162
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mEventStart:I

    #v0=(Integer);
    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    .line 163
    return-void
.end method

.method public newAttendee(Landroid/content/ContentValues;I)V
    .locals 3
    .parameter "cv"
    .parameter "eventStart"

    .prologue
    .line 166
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    #v1=(Reference);
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "event_id"

    #v2=(Reference);
    invoke-direct {v0, v1, v2, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 170
    return-void
.end method

.method public newDelete(JLjava/lang/String;)I
    .locals 1
    .parameter "id"
    .parameter "serverId"

    .prologue
    .line 156
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    .line 157
    .local v0, offset:I
    #v0=(Integer);
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->delete(JLjava/lang/String;)V

    .line 158
    return v0
.end method

.method public newEvent(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)I
    .locals 1
    .parameter "op"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    #v0=(Integer);
    iput v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mEventStart:I

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 152
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mEventStart:I

    return v0
.end method

.method public newException(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "cv"

    .prologue
    .line 179
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterEvents:Landroid/net/Uri;

    #v1=(Reference);
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 181
    return-void
.end method

.method public newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 184
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterExtendedProperties:Landroid/net/Uri;

    #v1=(Reference);
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "name"

    #v2=(Reference);
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "event_id"

    iget v3, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mEventStart:I

    #v3=(Integer);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 189
    return-void
.end method

.method public newReminder(I)V
    .locals 1
    .parameter "mins"

    .prologue
    .line 229
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mEventStart:I

    #v0=(Integer);
    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newReminder(II)V

    .line 230
    return-void
.end method

.method public newReminder(II)V
    .locals 4
    .parameter "mins"
    .parameter "eventStart"

    .prologue
    .line 221
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterReminders:Landroid/net/Uri;

    #v1=(Reference);
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "minutes"

    #v2=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "method"

    const/4 v3, 0x1

    #v3=(One);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "event_id"

    invoke-direct {v0, v1, v2, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 226
    return-void
.end method

.method public updatedAttendee(Landroid/content/ContentValues;J)V
    .locals 2
    .parameter "cv"
    .parameter "id"

    .prologue
    .line 173
    const-string v0, "event_id"

    #v0=(Reference);
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 176
    return-void
.end method

.method public updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "name"
    .parameter "value"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 193
    #v9=(Null);
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mContentResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    sget-object v1, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncParser;->access$000()[Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "event_id=? AND name=?"

    #v3=(Reference);
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v9

    const/4 v5, 0x1

    #v5=(One);
    aput-object p1, v4, v5

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 196
    .local v6, c:Landroid/database/Cursor;
    #v6=(Reference);
    const-wide/16 v7, -0x1

    .line 198
    .local v7, extendedPropertyId:J
    #v7=(LongLo);v8=(LongHi);
    if-eqz v6, :cond_1

    .line 200
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 204
    :cond_0
    #v0=(Boolean);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_1
    #v0=(Conflicted);
    const-wide/16 v0, 0x0

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, v7, v0

    #v0=(Byte);
    if-ltz v0, :cond_2

    .line 210
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterExtendedProperties:Landroid/net/Uri;

    #v1=(Reference);
    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 218
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 204
    :catchall_0
    #v0=(Reference);v1=(Reference);
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 216
    :cond_2
    #v0=(Byte);v1=(LongHi);
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
