.class public Lcom/android/exchange/adapter/CalendarSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "CalendarSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;
    }
.end annotation


# static fields
.field private static final EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final PLACEHOLDER_OPERATION:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;


# instance fields
.field private final UTC_TIMEZONE:Ljava/util/TimeZone;

.field private final mAccountManagerAccount:Landroid/accounts/Account;

.field private final mAsSyncAdapterAttendees:Landroid/net/Uri;

.field private final mAsSyncAdapterEvents:Landroid/net/Uri;

.field private final mBindArgument:[Ljava/lang/String;

.field private final mCalendarId:J

.field private final mLocalTimeZone:Ljava/util/TimeZone;

.field private final mOps:Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 64
    #v2=(Null);
    new-array v0, v3, [Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "_id"

    #v1=(Reference);
    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncParser;->ID_PROJECTION:[Ljava/lang/String;

    .line 68
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncParser;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v0=(UninitRef);
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncParser;->PLACEHOLDER_OPERATION:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;J)V
    .locals 7
    .parameter "context"
    .parameter "resolver"
    .parameter "in"
    .parameter "mailbox"
    .parameter "account"
    .parameter "accountManagerAccount"
    .parameter "calendarId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct/range {p0 .. p5}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V

    .line 44
    #p0=(Reference);
    const-string v0, "UTC"

    #v0=(Reference);
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 45
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    .line 52
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 109
    iput-object p6, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 110
    iput-wide p7, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mCalendarId:J

    .line 111
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.google.android.exchange"

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncParser;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    .line 113
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.google.android.exchange"

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncParser;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterEvents:Landroid/net/Uri;

    .line 115
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;

    #v0=(UninitRef);
    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterEvents:Landroid/net/Uri;

    #v3=(Reference);
    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.google.android.exchange"

    #v5=(Reference);
    invoke-static {v1, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncParser;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v1, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v6, "com.google.android.exchange"

    #v6=(Reference);
    invoke-static {v1, v5, v6}, Lcom/android/exchange/adapter/CalendarSyncParser;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;

    .line 120
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncParser;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method private static addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "ops"
    .parameter "eventId"
    .parameter "organizerName"
    .parameter "organizerEmail"

    .prologue
    const/4 v3, 0x1

    .line 251
    #v3=(One);
    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    .line 252
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v0, attendeeCv:Landroid/content/ContentValues;
    #v0=(Reference);
    if-eqz p3, :cond_1

    .line 254
    const-string v1, "attendeeName"

    #v1=(Reference);
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_1
    #v1=(Conflicted);
    if-eqz p4, :cond_2

    .line 257
    const-string v1, "attendeeEmail"

    #v1=(Reference);
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_2
    #v1=(Conflicted);
    const-string v1, "attendeeRelationship"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v1, "attendeeType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string v1, "attendeeStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-wide/16 v1, 0x0

    #v1=(LongLo);v2=(LongHi);
    cmp-long v1, p1, v1

    #v1=(Byte);
    if-gez v1, :cond_4

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    .line 268
    .end local v0           #attendeeCv:Landroid/content/ContentValues;
    :cond_3
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 265
    .restart local v0       #attendeeCv:Landroid/content/ContentValues;
    :cond_4
    #v0=(Reference);v1=(Byte);v2=(LongHi);
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedAttendee(Landroid/content/ContentValues;J)V

    goto :goto_0
.end method

.method protected static addSeparatorOperation(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1351
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v0=(UninitRef);
    const-wide v1, 0x7fffffffffffffffL

    #v1=(LongLo);v2=(LongHi);
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    .line 1353
    .local v0, op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    .line 1354
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    return-void
.end method

.method private static applyAndCopyResults(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V
    .locals 3
    .parameter "contentResolver"
    .parameter "authority"
    .parameter
    .parameter "result"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1283
    .local p2, mini:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1292
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 1285
    :cond_0
    :try_start_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);
    invoke-static {p0, p1, p2, p4}, Lcom/android/exchange/adapter/CalendarSyncParser;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 1288
    .local v0, miniResult:[Landroid/content/ContentProviderResult;
    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    array-length v2, v0

    #v2=(Integer);
    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1289
    .end local v0           #miniResult:[Landroid/content/ContentProviderResult;
    :catch_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    move-exception v1

    #v1=(Reference);
    goto :goto_0
.end method

.method private static applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;
    .locals 4
    .parameter "contentResolver"
    .parameter "authority"
    .parameter
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;I)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 1266
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 1267
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Landroid/content/ContentProviderResult;

    .line 1273
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);
    return-object v3

    .line 1269
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    .local v0, cpos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    #v0=(Reference);
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    .line 1271
    .local v2, op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    invoke-static {v2, p3}, Lcom/android/exchange/adapter/CalendarSyncParser;->operationToContentProviderOperation(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;I)Landroid/content/ContentProviderOperation;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1273
    .end local v2           #op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    :cond_1
    #v2=(Conflicted);v3=(Boolean);
    invoke-static {p0, p1, v0}, Lcom/android/exchange/adapter/CalendarSyncParser;->execute(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    #v3=(Reference);
    goto :goto_0
.end method

.method private static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "account"
    .parameter "accountType"

    .prologue
    .line 243
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

.method private attachmentsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 944
    :goto_0
    const/16 v0, 0x12c

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    .line 945
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 950
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 947
    :pswitch_0
    const/16 v0, 0x12b

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipParser(I)V

    goto :goto_0

    .line 953
    :cond_0
    #v0=(Integer);
    return-void

    .line 945
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x12b
        :pswitch_0
    .end packed-switch
.end method

.method private attendeeParser()Landroid/content/ContentValues;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    #v4=(PosByte);
    const/4 v6, 0x2

    #v6=(PosByte);
    const/4 v5, 0x1

    #v5=(One);
    const/4 v7, 0x3

    .line 982
    #v7=(PosByte);
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 983
    .local v0, cv:Landroid/content/ContentValues;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v8=(Conflicted);
    const/16 v3, 0x108

    #v3=(PosShort);
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v3

    #v3=(Integer);
    if-eq v3, v7, :cond_4

    .line 984
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v3, :sswitch_data_0

    .line 1014
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 986
    :sswitch_0
    const-string v3, "attendeeEmail"

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :sswitch_1
    #v3=(Integer);v8=(Conflicted);
    const-string v3, "attendeeName"

    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :sswitch_2
    #v3=(Integer);v8=(Conflicted);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v1

    .line 993
    .local v1, status:I
    #v1=(Integer);
    const-string v8, "attendeeStatus"

    #v8=(Reference);
    if-ne v1, v6, :cond_0

    move v3, v4

    :goto_1
    #v3=(PosByte);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    #v3=(Integer);
    if-ne v1, v7, :cond_1

    move v3, v5

    #v3=(One);
    goto :goto_1

    :cond_1
    #v3=(Integer);
    if-ne v1, v4, :cond_2

    move v3, v6

    #v3=(PosByte);
    goto :goto_1

    :cond_2
    #v3=(Integer);
    const/4 v3, 0x5

    #v3=(PosByte);
    if-ne v1, v3, :cond_3

    move v3, v7

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_1

    .line 1001
    .end local v1           #status:I
    :sswitch_3
    #v1=(Conflicted);v3=(Integer);v8=(Conflicted);
    const/4 v2, 0x0

    .line 1003
    .local v2, type:I
    #v2=(Null);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1011
    :goto_2
    #v2=(PosByte);
    const-string v3, "attendeeType"

    #v3=(Reference);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1005
    :pswitch_0
    #v2=(Null);v3=(Integer);v8=(Conflicted);
    const/4 v2, 0x1

    .line 1006
    #v2=(One);
    goto :goto_2

    .line 1008
    :pswitch_1
    #v2=(Null);
    const/4 v2, 0x2

    #v2=(PosByte);
    goto :goto_2

    .line 1017
    .end local v2           #type:I
    :cond_4
    #v2=(Conflicted);
    const-string v3, "attendeeRelationship"

    #v3=(Reference);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    return-object v0

    .line 984
    :sswitch_data_0
    .sparse-switch
        0x109 -> :sswitch_0
        0x10a -> :sswitch_1
        0x129 -> :sswitch_2
        0x12a -> :sswitch_3
    .end sparse-switch

    .line 1003
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private attendeesParser()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 957
    const/4 v0, 0x0

    .line 958
    .local v0, attendeeCount:I
    #v0=(Null);
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v1, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    #v0=(Integer);v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const/16 v3, 0x107

    #v3=(PosShort);
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v3

    #v3=(Integer);
    const/4 v4, 0x3

    #v4=(PosByte);
    if-eq v3, v4, :cond_1

    .line 960
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 974
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 962
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->attendeeParser()Landroid/content/ContentValues;

    move-result-object v2

    .line 966
    .local v2, cv:Landroid/content/ContentValues;
    #v2=(Reference);
    add-int/lit8 v0, v0, 0x1

    .line 969
    const/16 v3, 0x33

    #v3=(PosByte);
    if-gt v0, v3, :cond_0

    .line 970
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 977
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_1
    #v2=(Conflicted);v3=(Integer);
    return-object v1

    .line 960
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x108
        :pswitch_0
    .end packed-switch
.end method

.method private bodyParser()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1022
    const/4 v0, 0x0

    .line 1023
    .local v0, body:Ljava/lang/String;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    const/16 v1, 0x44a

    #v1=(PosShort);
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v1, v2, :cond_0

    .line 1024
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 1029
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1026
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1027
    goto :goto_0

    .line 1034
    :cond_0
    if-nez v0, :cond_1

    const-string v1, ""

    .line 1036
    :goto_1
    #v1=(Reference);v2=(Conflicted);
    return-object v1

    :cond_1
    #v1=(Integer);v2=(PosByte);
    const-string v1, "\r\n"

    #v1=(Reference);
    const-string v2, "\n"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1024
    :pswitch_data_0
    .packed-switch 0x44b
        :pswitch_0
    .end packed-switch
.end method

.method private categoriesParser()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 925
    .local v0, categories:Ljava/lang/StringBuilder;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    const/16 v1, 0x10e

    #v1=(PosShort);
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v1, v2, :cond_0

    .line 926
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 934
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 930
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 937
    :cond_0
    #v1=(Integer);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    return-object v1

    .line 926
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x10f
        :pswitch_0
    .end packed-switch
.end method

.method private static encodeVisibility(I)I
    .locals 1
    .parameter "easVisibility"

    .prologue
    .line 890
    const/4 v0, 0x0

    .line 891
    .local v0, visibility:I
    #v0=(Null);
    packed-switch p0, :pswitch_data_0

    .line 905
    :goto_0
    #v0=(PosByte);
    return v0

    .line 893
    :pswitch_0
    #v0=(Null);
    const/4 v0, 0x0

    .line 894
    goto :goto_0

    .line 896
    :pswitch_1
    const/4 v0, 0x3

    .line 897
    #v0=(PosByte);
    goto :goto_0

    .line 899
    :pswitch_2
    #v0=(Null);
    const/4 v0, 0x2

    .line 900
    #v0=(PosByte);
    goto :goto_0

    .line 902
    :pswitch_3
    #v0=(Null);
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 891
    #v0=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private exceptionParser(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V
    .locals 16
    .parameter "ops"
    .parameter "parentCv"
    .parameter
    .parameter "reminderMins"
    .parameter "busyStatus"
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;IIJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    .local p3, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v3, Landroid/content/ContentValues;

    #v3=(UninitRef);
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 761
    .local v3, cv:Landroid/content/ContentValues;
    #v3=(Reference);
    const-string v2, "calendar_id"

    #v2=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-wide v4, v0, Lcom/android/exchange/adapter/CalendarSyncParser;->mCalendarId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 765
    const-string v2, "organizer"

    const-string v4, "organizer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v2, "title"

    const-string v4, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v2, "description"

    const-string v4, "description"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v2, "originalAllDay"

    const-string v4, "allDay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 769
    const-string v2, "eventLocation"

    const-string v4, "eventLocation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v2, "accessLevel"

    const-string v4, "accessLevel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v2, "eventTimezone"

    const-string v4, "eventTimezone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v2, "hasAttendeeData"

    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const/4 v8, 0x0

    .line 781
    .local v8, allDayEvent:I
    #v8=(Null);
    const-string v2, "original_sync_id"

    const-string v4, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v13, "_noStartTime"

    .line 784
    .local v13, exceptionStartTime:Ljava/lang/String;
    :cond_0
    :goto_0
    #v2=(Conflicted);v4=(Conflicted);v8=(Integer);v13=(Reference);v15=(Conflicted);
    const/16 v2, 0x1d

    #v2=(PosByte);
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v2

    #v2=(Integer);
    const/4 v4, 0x3

    #v4=(PosByte);
    if-eq v2, v4, :cond_1

    .line 785
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 787
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->attachmentsParser()V

    goto :goto_0

    .line 790
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 791
    const-string v2, "originalInstanceTime"

    #v2=(Reference);
    invoke-static {v13}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v4

    #v4=(LongLo);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 795
    :sswitch_2
    #v2=(Integer);v4=(PosByte);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v2

    const/4 v4, 0x1

    #v4=(One);
    if-ne v2, v4, :cond_0

    .line 796
    const-string v2, "eventStatus"

    #v2=(Reference);
    const/4 v4, 0x2

    #v4=(PosByte);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 800
    :sswitch_3
    #v2=(Integer);v4=(PosByte);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v8

    .line 801
    const-string v2, "allDay"

    #v2=(Reference);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 804
    :sswitch_4
    #v2=(Integer);v4=(PosByte);
    const-string v2, "description"

    #v2=(Reference);
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 807
    :sswitch_5
    #v2=(Integer);v4=(PosByte);
    const-string v2, "description"

    #v2=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :sswitch_6
    #v2=(Integer);v4=(PosByte);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p6

    .line 811
    goto :goto_0

    .line 813
    :sswitch_7
    #v2=(Integer);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p8

    .line 814
    goto :goto_0

    .line 816
    :sswitch_8
    #v2=(Integer);
    const-string v2, "eventLocation"

    #v2=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 819
    :sswitch_9
    #v2=(Integer);v4=(PosByte);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->recurrenceParser()Ljava/lang/String;

    move-result-object v15

    .line 820
    .local v15, rrule:Ljava/lang/String;
    #v15=(Reference);
    if-eqz v15, :cond_0

    .line 821
    const-string v2, "rrule"

    #v2=(Reference);
    invoke-virtual {v3, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 825
    .end local v15           #rrule:Ljava/lang/String;
    :sswitch_a
    #v2=(Integer);v15=(Conflicted);
    const-string v2, "title"

    #v2=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 828
    :sswitch_b
    #v2=(Integer);v4=(PosByte);
    const-string v2, "accessLevel"

    #v2=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v4

    #v4=(Integer);
    invoke-static {v4}, Lcom/android/exchange/adapter/CalendarSyncParser;->encodeVisibility(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 831
    :sswitch_c
    #v2=(Integer);v4=(PosByte);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result p5

    .line 834
    goto/16 :goto_0

    .line 848
    :cond_1
    const-string v2, "_sync_id"

    #v2=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "_sync_id"

    #v5=(Reference);
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5f

    #v5=(PosByte);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-wide/from16 v4, p6

    #v4=(LongLo);v5=(LongHi);
    move-wide/from16 v6, p8

    .line 852
    #v6=(LongLo);v7=(LongHi);
    invoke-virtual/range {v2 .. v8}, Lcom/android/exchange/adapter/CalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 855
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_3

    .line 887
    :cond_2
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v14=(Conflicted);
    return-void

    .line 858
    :cond_3
    #v1=(Uninit);v2=(Boolean);v4=(LongLo);v5=(LongHi);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v14=(Uninit);
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    .line 859
    .local v12, exceptionStart:I
    #v12=(Integer);
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newException(Landroid/content/ContentValues;)V

    .line 861
    const/4 v11, 0x0

    .line 862
    .local v11, attendeesRedacted:Z
    #v11=(Null);
    if-eqz p3, :cond_6

    .line 863
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    #v2=(Conflicted);v4=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Boolean);v14=(Reference);
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Landroid/content/ContentValues;

    .line 865
    .local v9, attValues:Landroid/content/ContentValues;
    const-string v2, "attendeeEmail"

    #v2=(Reference);
    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 869
    .local v10, attendeeEmail:Ljava/lang/String;
    #v10=(Reference);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 870
    const-string v2, "attendeeStatus"

    #v2=(Reference);
    invoke-static/range {p5 .. p5}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v4

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_2

    .line 873
    :cond_4
    #v2=(Boolean);v4=(Conflicted);
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->size()I

    move-result v2

    #v2=(Integer);
    const/16 v4, 0x1f4

    #v4=(PosShort);
    if-ge v2, v4, :cond_5

    .line 874
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_2

    .line 876
    :cond_5
    const/4 v11, 0x1

    #v11=(One);
    goto :goto_2

    .line 881
    .end local v9           #attValues:Landroid/content/ContentValues;
    .end local v10           #attendeeEmail:Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_6
    #v2=(Boolean);v4=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Boolean);v14=(Conflicted);
    if-lez p4, :cond_7

    .line 882
    move-object/from16 v0, p1

    move/from16 v1, p4

    #v1=(Integer);
    invoke-virtual {v0, v1, v12}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newReminder(II)V

    .line 884
    :cond_7
    #v1=(Conflicted);
    if-eqz v11, :cond_2

    .line 885
    const-string v2, "Exchange"

    #v2=(Reference);
    const-string v4, "Attendees redacted in this exception"

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 785
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);p4=(Unknown);p5=(Unknown);p6=(Unknown);p7=(Unknown);p8=(Unknown);p9=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x106 -> :sswitch_3
        0x10b -> :sswitch_5
        0x10d -> :sswitch_c
        0x112 -> :sswitch_7
        0x115 -> :sswitch_2
        0x116 -> :sswitch_1
        0x117 -> :sswitch_8
        0x11b -> :sswitch_9
        0x125 -> :sswitch_b
        0x126 -> :sswitch_a
        0x127 -> :sswitch_6
        0x12c -> :sswitch_0
        0x44a -> :sswitch_4
    .end sparse-switch
.end method

.method private exceptionsParser(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V
    .locals 2
    .parameter "ops"
    .parameter "cv"
    .parameter
    .parameter "reminderMins"
    .parameter "busyStatus"
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;IIJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 911
    .local p3, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_0
    const/16 v0, 0x114

    #v0=(PosShort);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    .line 912
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 918
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 914
    :pswitch_0
    invoke-direct/range {p0 .. p9}, Lcom/android/exchange/adapter/CalendarSyncParser;->exceptionParser(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto :goto_0

    .line 921
    :cond_0
    return-void

    .line 912
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);p4=(Unknown);p5=(Unknown);p6=(Unknown);p7=(Unknown);p8=(Unknown);p9=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x113
        :pswitch_0
    .end packed-switch
.end method

.method private static execute(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 2
    .parameter "contentResolver"
    .parameter "authority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 1233
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 1234
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 1238
    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    new-array v0, v1, [Landroid/content/ContentProviderResult;

    #v0=(Reference);
    goto :goto_0
.end method

.method private getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "clientId"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    aput-object p1, v0, v1

    .line 1063
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/exchange/adapter/CalendarSyncParser;->ID_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "sync_data2=?"

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "serverId"

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/exchange/adapter/CalendarSyncParser;->ID_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "_sync_id=? AND original_sync_id ISNULL AND calendar_id=?"

    #v3=(Reference);
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    aput-object p1, v4, v5

    const/4 v5, 0x1

    #v5=(One);
    iget-wide v6, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mCalendarId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v4, v5

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 6
    .parameter "cv"
    .parameter "reason"

    .prologue
    .line 667
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Event invalid, "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", skipping: Columns = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    .local v2, sb:Ljava/lang/StringBuilder;
    #v2=(Reference);
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/util/Map$Entry;

    .line 671
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    const/16 v3, 0x2f

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 674
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    #v0=(Conflicted);v3=(Boolean);
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "Exchange"

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 676
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method

.method static operationToContentProviderOperation(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;I)Landroid/content/ContentProviderOperation;
    .locals 3
    .parameter "op"
    .parameter "offset"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1247
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 1248
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    .line 1256
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return-object v1

    .line 1249
    :cond_0
    #v0=(Uninit);v2=(Uninit);
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    if-nez v1, :cond_1

    .line 1250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    const-string v2, "Operation must have CPO.Builder"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 1252
    :cond_1
    #v2=(Uninit);
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 1253
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1254
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    iget v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOffset:I

    #v2=(Integer);
    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1256
    :cond_2
    #v2=(Conflicted);
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    goto :goto_0
.end method

.method protected static safeExecute(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 10
    .parameter "contentResolver"
    .parameter "authority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    const/4 v9, 0x0

    .line 1309
    #v9=(Null);
    const/4 v7, 0x0

    .line 1312
    .local v7, result:[Landroid/content/ContentProviderResult;
    #v7=(Null);
    const/4 v8, 0x0

    :try_start_0
    #v8=(Null);
    invoke-static {p0, p1, p2, v8}, Lcom/android/exchange/adapter/CalendarSyncParser;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 1344
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Reference);v8=(Reference);
    return-object v8

    .line 1313
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Null);v8=(Null);
    move-exception v1

    .line 1316
    .local v1, e:Landroid/os/TransactionTooLargeException;
    #v1=(Reference);
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .local v3, mini:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    #v3=(Reference);
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    #v8=(Integer);
    new-array v7, v8, [Landroid/content/ContentProviderResult;

    .line 1319
    #v7=(Reference);
    const/4 v0, 0x0

    .line 1320
    .local v0, count:I
    #v0=(Null);
    const/4 v5, 0x0

    .line 1321
    .local v5, offset:I
    #v5=(Null);
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Integer);v2=(Reference);v5=(Integer);v6=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    .line 1322
    .local v6, op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    iget-boolean v8, v6, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    if-eqz v8, :cond_0

    .line 1324
    invoke-static {p0, p1, v3, v7, v5}, Lcom/android/exchange/adapter/CalendarSyncParser;->applyAndCopyResults(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V

    .line 1325
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1328
    add-int/lit8 v5, v0, 0x1

    .line 1332
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1330
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1335
    .end local v6           #op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    :cond_1
    #v6=(Conflicted);
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1336
    .local v4, miniSize:I
    #v4=(Integer);
    if-lez v4, :cond_3

    const/4 v8, 0x1

    #v8=(One);
    if-ne v4, v8, :cond_2

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-boolean v8, v8, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    #v8=(Boolean);
    if-nez v8, :cond_3

    .line 1337
    :cond_2
    invoke-static {p0, p1, v3, v7, v5}, Lcom/android/exchange/adapter/CalendarSyncParser;->applyAndCopyResults(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V

    .end local v0           #count:I
    .end local v1           #e:Landroid/os/TransactionTooLargeException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mini:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    .end local v4           #miniSize:I
    .end local v5           #offset:I
    :cond_3
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);
    move-object v8, v7

    .line 1344
    #v8=(Reference);
    goto :goto_0

    .line 1339
    :catch_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Null);v8=(Null);
    move-exception v1

    .line 1340
    .local v1, e:Landroid/os/RemoteException;
    #v1=(Reference);
    throw v1

    .line 1341
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_2
    #v1=(Uninit);
    move-exception v8

    #v8=(Reference);
    goto :goto_3
.end method


# virtual methods
.method public addEvent(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;Ljava/lang/String;Z)V
    .locals 49
    .parameter "ops"
    .parameter "serverId"
    .parameter "update"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v7, Landroid/content/ContentValues;

    #v7=(UninitRef);
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v7, cv:Landroid/content/ContentValues;
    #v7=(Reference);
    const-string v5, "calendar_id"

    #v5=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-wide v15, v0, Lcom/android/exchange/adapter/CalendarSyncParser;->mCalendarId:J

    #v15=(LongLo);v16=(LongHi);
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 342
    const-string v5, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v7, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v5, "hasAttendeeData"

    const/4 v6, 0x1

    #v6=(One);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    const-string v5, "sync_data2"

    const-string v6, "0"

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/16 v21, 0x0

    .line 347
    .local v21, allDayEvent:I
    #v21=(Null);
    const/16 v43, 0x0

    .line 348
    .local v43, organizerName:Ljava/lang/String;
    #v43=(Null);
    const/16 v42, 0x0

    .line 349
    .local v42, organizerEmail:Ljava/lang/String;
    #v42=(Null);
    const/16 v33, -0x1

    .line 350
    .local v33, eventOffset:I
    #v33=(Byte);
    const/16 v29, -0x1

    .line 351
    .local v29, deleteOffset:I
    #v29=(Byte);
    const/4 v10, 0x1

    .line 352
    .local v10, busyStatus:I
    #v10=(One);
    const/16 v44, 0x0

    .line 354
    .local v44, responseType:I
    #v44=(Null);
    const/16 v34, 0x1

    .line 355
    .local v34, firstTag:Z
    #v34=(One);
    const-wide/16 v31, -0x1

    .line 356
    .local v31, eventId:J
    #v31=(LongLo);v32=(LongHi);
    const-wide/16 v11, -0x1

    .line 357
    .local v11, startTime:J
    #v11=(LongLo);v12=(LongHi);
    const-wide/16 v13, -0x1

    .line 358
    .local v13, endTime:J
    #v13=(LongLo);v14=(LongHi);
    const/16 v48, 0x0

    .line 361
    .local v48, timeZone:Ljava/util/TimeZone;
    #v48=(Null);
    new-instance v8, Ljava/util/ArrayList;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v8, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    #v8=(Reference);
    const/4 v9, -0x1

    .line 363
    .local v9, reminderMins:I
    #v9=(Byte);
    const/16 v30, 0x0

    .line 364
    .local v30, dtStamp:Ljava/lang/String;
    #v30=(Null);
    const/16 v41, 0x0

    .line 366
    .local v41, organizerAdded:Z
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v9=(Integer);v10=(Integer);v15=(Conflicted);v16=(Conflicted);v21=(Integer);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v29=(Integer);v30=(Reference);v33=(Integer);v34=(Boolean);v35=(Conflicted);v38=(Conflicted);v39=(Conflicted);v41=(Boolean);v42=(Reference);v43=(Reference);v44=(Integer);v45=(Conflicted);v48=(Reference);
    const/16 v5, 0x1d

    #v5=(PosByte);
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v5

    #v5=(Integer);
    const/4 v6, 0x3

    #v6=(PosByte);
    if-eq v5, v6, :cond_d

    .line 367
    if-eqz p3, :cond_8

    if-eqz v34, :cond_8

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 370
    .local v25, c:Landroid/database/Cursor;
    #v25=(Reference);
    const-wide/16 v38, -0x1

    .line 372
    .local v38, id:J
    #v38=(LongLo);v39=(LongHi);
    if-eqz v25, :cond_1

    :try_start_0
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 373
    const/4 v5, 0x0

    #v5=(Null);
    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v38

    .line 376
    :cond_1
    #v5=(Integer);
    if-eqz v25, :cond_2

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_2
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    cmp-long v5, v38, v5

    #v5=(Byte);
    if-lez v5, :cond_7

    .line 380
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    #v5=(Integer);
    const/16 v6, 0x111

    #v6=(PosShort);
    if-ne v5, v6, :cond_4

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v30

    .line 382
    goto :goto_0

    .line 376
    :catchall_0
    #v6=(PosByte);
    move-exception v5

    #v5=(Reference);
    if-eqz v25, :cond_3

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5

    .line 383
    :cond_4
    #v5=(Integer);v6=(PosShort);
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x107

    if-ne v5, v6, :cond_6

    .line 386
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    #v15=(Reference);
    aput-object v15, v5, v6

    .line 387
    new-instance v5, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v5=(UninitRef);
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    #v6=(Reference);
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v15, "event_id=? AND attendeeRelationship!=2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    move-object/from16 v16, v0

    #v16=(Reference);
    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    #v5=(Reference);
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 390
    move-wide/from16 v31, v38

    .line 409
    .end local v25           #c:Landroid/database/Cursor;
    .end local v38           #id:J
    :cond_5
    :goto_1
    #v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v15=(Conflicted);v16=(Conflicted);v25=(Conflicted);v38=(Conflicted);v39=(Conflicted);
    const/16 v34, 0x0

    .line 410
    #v34=(Null);
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    #v5=(Integer);
    sparse-switch v5, :sswitch_data_0

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 393
    .restart local v25       #c:Landroid/database/Cursor;
    .restart local v38       #id:J
    :cond_6
    #v1=(Reference);v6=(PosShort);v25=(Reference);v34=(Boolean);v38=(LongLo);v39=(LongHi);
    const/4 v5, 0x2

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/String;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    const-string v15, "Changing (delete/add) event "

    #v15=(Reference);
    aput-object v15, v5, v6

    const/4 v6, 0x1

    #v6=(One);
    aput-object p2, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p1

    move-wide/from16 v1, v38

    #v1=(LongLo);v2=(LongHi);
    move-object/from16 v3, p2

    #v3=(Reference);
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newDelete(JLjava/lang/String;)I

    move-result v29

    .line 397
    sget-object v5, Lcom/android/exchange/adapter/CalendarSyncParser;->PLACEHOLDER_OPERATION:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newEvent(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)I

    move-result v33

    goto :goto_1

    .line 401
    :cond_7
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);v5=(Byte);v6=(LongHi);v15=(Conflicted);
    sget-object v5, Lcom/android/exchange/adapter/CalendarSyncParser;->PLACEHOLDER_OPERATION:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v5=(Reference);
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newEvent(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)I

    move-result v33

    .line 402
    const/4 v5, 0x2

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/String;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    const-string v15, "Exchange"

    #v15=(Reference);
    aput-object v15, v5, v6

    const/4 v6, 0x1

    #v6=(One);
    const-string v15, "Changed item not found; treating as new."

    aput-object v15, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 404
    .end local v25           #c:Landroid/database/Cursor;
    .end local v38           #id:J
    :cond_8
    #v1=(Conflicted);v5=(Integer);v6=(PosByte);v15=(Conflicted);v25=(Conflicted);v38=(Conflicted);v39=(Conflicted);
    if-eqz v34, :cond_5

    .line 407
    sget-object v5, Lcom/android/exchange/adapter/CalendarSyncParser;->PLACEHOLDER_OPERATION:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v5=(Reference);
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newEvent(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)I

    move-result v33

    goto :goto_1

    .line 412
    :sswitch_0
    #v5=(Integer);v6=(Conflicted);v34=(Null);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v21

    .line 413
    if-eqz v21, :cond_a

    if-eqz v48, :cond_a

    .line 416
    new-instance v26, Ljava/util/GregorianCalendar;

    #v26=(UninitRef);
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    #v5=(Reference);
    move-object/from16 v0, v26

    #v0=(UninitRef);
    invoke-direct {v0, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 417
    .local v26, cal:Ljava/util/GregorianCalendar;
    #v0=(Reference);v26=(Reference);
    move-object/from16 v0, v26

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 418
    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/String;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    new-instance v15, Ljava/lang/StringBuilder;

    #v15=(UninitRef);
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #v15=(Reference);
    const-string v16, "All-day event arrived in: "

    #v16=(Reference);
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 419
    const/16 v5, 0xb

    #v5=(PosByte);
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    #v5=(Integer);
    if-nez v5, :cond_9

    const/16 v5, 0xc

    #v5=(PosByte);
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    #v5=(Integer);
    if-eqz v5, :cond_a

    .line 421
    :cond_9
    const/16 v21, 0x0

    .line 422
    #v21=(Null);
    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/String;

    #v5=(Reference);
    const/4 v6, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    #v15=(UninitRef);
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #v15=(Reference);
    const-string v16, "Not an all-day event locally: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 425
    .end local v26           #cal:Ljava/util/GregorianCalendar;
    :cond_a
    #v5=(Conflicted);v6=(Conflicted);v15=(Conflicted);v16=(Conflicted);v21=(Integer);v26=(Conflicted);
    const-string v5, "allDay"

    #v5=(Reference);
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 428
    :sswitch_1
    #v5=(Integer);v6=(Conflicted);
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->attachmentsParser()V

    goto/16 :goto_0

    .line 432
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->attendeesParser()Ljava/util/ArrayList;

    move-result-object v8

    .line 433
    goto/16 :goto_0

    .line 435
    :sswitch_3
    const-string v5, "description"

    #v5=(Reference);
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    :sswitch_4
    #v5=(Integer);v6=(Conflicted);
    const-string v5, "description"

    #v5=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    :sswitch_5
    #v5=(Integer);v6=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v48

    .line 442
    if-nez v48, :cond_b

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object/from16 v48, v0

    .line 445
    :cond_b
    const-string v5, "eventTimezone"

    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :sswitch_6
    #v5=(Integer);v6=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v11

    .line 449
    goto/16 :goto_0

    .line 451
    :sswitch_7
    #v5=(Integer);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v13

    .line 452
    goto/16 :goto_0

    .line 456
    :sswitch_8
    #v5=(Integer);
    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    #v1=(LongLo);v2=(LongHi);
    move-object/from16 v3, v43

    #v3=(Reference);
    move-object/from16 v4, v42

    #v4=(Reference);
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncParser;->addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 457
    const/16 v41, 0x1

    #v41=(One);
    move-object/from16 v5, p0

    #v5=(Reference);
    move-object/from16 v6, p1

    .line 458
    #v6=(Reference);
    invoke-direct/range {v5 .. v14}, Lcom/android/exchange/adapter/CalendarSyncParser;->exceptionsParser(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto/16 :goto_0

    .line 462
    :sswitch_9
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Integer);v6=(Conflicted);v41=(Boolean);
    const-string v5, "eventLocation"

    #v5=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 465
    :sswitch_a
    #v5=(Integer);v6=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->recurrenceParser()Ljava/lang/String;

    move-result-object v45

    .line 466
    .local v45, rrule:Ljava/lang/String;
    #v45=(Reference);
    if-eqz v45, :cond_0

    .line 467
    const-string v5, "rrule"

    #v5=(Reference);
    move-object/from16 v0, v45

    invoke-virtual {v7, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 471
    .end local v45           #rrule:Ljava/lang/String;
    :sswitch_b
    #v5=(Integer);v45=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v42

    .line 472
    const-string v5, "organizer"

    #v5=(Reference);
    move-object/from16 v0, v42

    invoke-virtual {v7, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 475
    :sswitch_c
    #v5=(Integer);
    const-string v5, "title"

    #v5=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    :sswitch_d
    #v5=(Integer);v6=(Conflicted);
    const-string v5, "accessLevel"

    #v5=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v6

    #v6=(Integer);
    invoke-static {v6}, Lcom/android/exchange/adapter/CalendarSyncParser;->encodeVisibility(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 481
    :sswitch_e
    #v5=(Integer);v6=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v43

    .line 482
    goto/16 :goto_0

    .line 486
    :sswitch_f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    #v5=(Boolean);
    if-nez v5, :cond_c

    const/16 v35, 0x1

    .line 487
    .local v35, hasContent:Z
    :goto_2
    #v35=(Boolean);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v9

    .line 488
    if-eqz v35, :cond_0

    .line 489
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newReminder(I)V

    .line 490
    const-string v5, "hasAlarm"

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 486
    .end local v35           #hasContent:Z
    :cond_c
    #v5=(Boolean);v6=(Conflicted);v35=(Conflicted);
    const/16 v35, 0x0

    #v35=(Null);
    goto :goto_2

    .line 496
    :sswitch_10
    #v5=(Integer);v35=(Conflicted);
    const-string v5, "sync_data2"

    #v5=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    :sswitch_11
    #v5=(Integer);v6=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v30

    .line 500
    goto/16 :goto_0

    .line 502
    :sswitch_12
    const-string v5, "meeting_status"

    #v5=(Reference);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    :sswitch_13
    #v5=(Integer);v6=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v10

    .line 509
    goto/16 :goto_0

    .line 513
    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v44

    .line 514
    goto/16 :goto_0

    .line 516
    :sswitch_15
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->categoriesParser()Ljava/lang/String;

    move-result-object v27

    .line 517
    .local v27, categories:Ljava/lang/String;
    #v27=(Reference);
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 518
    const-string v5, "categories"

    #v5=(Reference);
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    #v1=(Reference);
    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v27           #categories:Ljava/lang/String;
    :cond_d
    #v1=(Conflicted);v5=(Integer);v6=(PosByte);v27=(Conflicted);v34=(Boolean);
    move-object/from16 v15, p0

    #v15=(Reference);
    move-object/from16 v16, v7

    #v16=(Reference);
    move-wide/from16 v17, v11

    #v17=(LongLo);v18=(LongHi);
    move-wide/from16 v19, v13

    .line 527
    #v19=(LongLo);v20=(LongHi);
    invoke-virtual/range {v15 .. v21}, Lcom/android/exchange/adapter/CalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 530
    const-string v5, "availability"

    #v5=(Reference);
    invoke-static {v10}, Lcom/android/exchange/utility/CalendarUtilities;->availabilityFromBusyStatus(I)I

    move-result v6

    #v6=(Integer);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    if-nez v41, :cond_e

    .line 534
    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    #v1=(LongLo);v2=(LongHi);
    move-object/from16 v3, v43

    #v3=(Reference);
    move-object/from16 v4, v42

    #v4=(Reference);
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncParser;->addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_e
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    .line 544
    .local v47, selfOrganizer:Z
    #v47=(Boolean);
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v40

    .line 545
    .local v40, numAttendees:I
    #v40=(Integer);
    const/16 v5, 0x32

    #v5=(PosByte);
    move/from16 v0, v40

    #v0=(Integer);
    if-le v0, v5, :cond_15

    .line 551
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    cmp-long v5, v31, v5

    #v5=(Byte);
    if-gez v5, :cond_14

    .line 552
    const-string v5, "attendeesRedacted"

    #v5=(Reference);
    const-string v6, "1"

    #v6=(Reference);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    if-eqz v47, :cond_f

    .line 554
    const-string v5, "upsyncProhibited"

    const-string v6, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_f
    :goto_3
    if-eqz v47, :cond_10

    .line 564
    const-string v42, "upload_disallowed@uploadisdisallowed.aaa"

    .line 565
    const-string v5, "organizer"

    move-object/from16 v0, v42

    invoke-virtual {v7, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_10
    const-string v5, "hasAttendeeData"

    const-string v6, "0"

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v5, "Exchange"

    const-string v6, "Maximum number of attendees exceeded; redacting"

    const/4 v15, 0x0

    #v15=(Null);
    new-array v15, v15, [Ljava/lang/Object;

    #v15=(Reference);
    invoke-static {v5, v6, v15}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 631
    :cond_11
    :goto_4
    #v0=(Conflicted);v5=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v37=(Conflicted);v46=(Conflicted);
    if-ltz v33, :cond_13

    .line 633
    if-eqz v30, :cond_12

    .line 634
    const-string v5, "dtstamp"

    #v5=(Reference);
    move-object/from16 v0, p1

    #v0=(Reference);
    move-object/from16 v1, v30

    #v1=(Reference);
    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_12
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/CalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1e

    .line 638
    new-instance v5, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v5=(UninitRef);
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterEvents:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    #v5=(Reference);
    move-object/from16 v0, p1

    move/from16 v1, v33

    #v1=(Integer);
    invoke-virtual {v0, v1, v5}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_13
    :goto_5
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v28=(Conflicted);v36=(Conflicted);
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #v5=(Reference);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-static {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncParser;->addSeparatorOperation(Ljava/util/ArrayList;Landroid/net/Uri;)V

    .line 664
    return-void

    .line 557
    :cond_14
    #v0=(Integer);v5=(Byte);v6=(LongHi);v22=(Uninit);v23=(Uninit);v24=(Uninit);v28=(Uninit);v36=(Uninit);v37=(Uninit);v46=(Uninit);
    const-string v5, "attendeesRedacted"

    #v5=(Reference);
    const-string v6, "1"

    #v6=(Reference);
    move-object/from16 v0, p1

    #v0=(Reference);
    move-wide/from16 v1, v31

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 558
    if-eqz v47, :cond_f

    .line 559
    const-string v5, "upsyncProhibited"

    const-string v6, "1"

    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    .line 570
    :cond_15
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v5=(PosByte);
    if-lez v40, :cond_11

    .line 571
    new-instance v46, Ljava/lang/StringBuilder;

    #v46=(UninitRef);
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .local v46, sb:Ljava/lang/StringBuilder;
    #v46=(Reference);
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, i$:Ljava/util/Iterator;
    :goto_6
    #v0=(Conflicted);v5=(Byte);v6=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v37=(Reference);
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1c

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    #v22=(Reference);
    check-cast v22, Landroid/content/ContentValues;

    .line 573
    .local v22, attendee:Landroid/content/ContentValues;
    const-string v5, "attendeeEmail"

    #v5=(Reference);
    move-object/from16 v0, v22

    #v0=(Reference);
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 574
    .local v23, attendeeEmail:Ljava/lang/String;
    #v23=(Reference);
    move-object/from16 v0, v46

    move-object/from16 v1, v23

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v5, "\\"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_17

    .line 580
    if-eqz v44, :cond_18

    .line 581
    invoke-static/range {v44 .. v44}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromResponseType(I)I

    move-result v24

    .line 593
    .local v24, attendeeStatus:I
    :goto_7
    #v24=(Integer);
    const-string v5, "attendeeStatus"

    #v5=(Reference);
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    if-eqz v42, :cond_16

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_17

    .line 602
    :cond_16
    #v5=(Conflicted);
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    cmp-long v5, v31, v5

    #v5=(Byte);
    if-gez v5, :cond_1a

    .line 603
    const-string v5, "userAttendeeStatus"

    #v5=(Reference);
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .end local v24           #attendeeStatus:I
    :cond_17
    :goto_8
    #v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v24=(Conflicted);
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    cmp-long v5, v31, v5

    #v5=(Byte);
    if-gez v5, :cond_1b

    .line 613
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    goto :goto_6

    .line 583
    :cond_18
    #v5=(Boolean);v6=(Conflicted);
    if-nez p3, :cond_19

    .line 586
    const/16 v24, 0x0

    .restart local v24       #attendeeStatus:I
    #v24=(Null);
    goto :goto_7

    .line 590
    .end local v24           #attendeeStatus:I
    :cond_19
    #v24=(Conflicted);
    invoke-static {v10}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v24

    .restart local v24       #attendeeStatus:I
    #v24=(Integer);
    goto :goto_7

    .line 606
    :cond_1a
    #v5=(Byte);v6=(LongHi);
    const-string v5, "userAttendeeStatus"

    #v5=(Reference);
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_8

    .line 615
    .end local v24           #attendeeStatus:I
    :cond_1b
    #v1=(Conflicted);v2=(Conflicted);v5=(Byte);v6=(LongHi);v24=(Conflicted);
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    #v1=(Reference);
    move-wide/from16 v2, v31

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedAttendee(Landroid/content/ContentValues;J)V

    goto/16 :goto_6

    .line 618
    .end local v22           #attendee:Landroid/content/ContentValues;
    .end local v23           #attendeeEmail:Ljava/lang/String;
    :cond_1c
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Boolean);v6=(Conflicted);v22=(Conflicted);v23=(Conflicted);
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    cmp-long v5, v31, v5

    #v5=(Byte);
    if-gez v5, :cond_1d

    .line 619
    const-string v5, "attendees"

    #v5=(Reference);
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v5, "attendeesRedacted"

    const-string v6, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v5, "upsyncProhibited"

    const-string v6, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 623
    :cond_1d
    #v0=(Conflicted);v5=(Byte);v6=(LongHi);
    const-string v5, "attendees"

    #v5=(Reference);
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    move-object/from16 v0, p1

    #v0=(Reference);
    move-wide/from16 v1, v31

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 625
    const-string v5, "attendeesRedacted"

    const-string v6, "0"

    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 626
    const-string v5, "upsyncProhibited"

    const-string v6, "0"

    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 644
    .end local v37           #i$:Ljava/util/Iterator;
    .end local v46           #sb:Ljava/lang/StringBuilder;
    :cond_1e
    #v1=(Conflicted);v2=(Conflicted);v5=(Boolean);v37=(Conflicted);v46=(Conflicted);
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    #v5=(Integer);
    sub-int v28, v5, v33

    .line 645
    .local v28, cnt:I
    #v28=(Integer);
    const/4 v5, 0x2

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/String;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    const-string v15, "Exchange"

    aput-object v15, v5, v6

    const/4 v6, 0x1

    #v6=(One);
    new-instance v15, Ljava/lang/StringBuilder;

    #v15=(UninitRef);
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #v15=(Reference);
    const-string v16, "Removing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v28

    #v0=(Integer);
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " inserts from mOps"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 646
    const/16 v36, 0x0

    .local v36, i:I
    :goto_9
    #v36=(Integer);
    move/from16 v0, v36

    #v0=(Integer);
    move/from16 v1, v28

    #v1=(Integer);
    if-ge v0, v1, :cond_1f

    .line 647
    move-object/from16 v0, p1

    #v0=(Reference);
    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 646
    add-int/lit8 v36, v36, 0x1

    goto :goto_9

    .line 649
    :cond_1f
    #v0=(Integer);
    move/from16 v0, v33

    move-object/from16 v1, p1

    #v1=(Reference);
    iput v0, v1, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    .line 652
    if-ltz v29, :cond_13

    .line 654
    move-object/from16 v0, p1

    #v0=(Reference);
    move/from16 v1, v29

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 656
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 657
    const/4 v5, 0x2

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/String;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    const-string v15, "Exchange"

    aput-object v15, v5, v6

    const/4 v6, 0x1

    #v6=(One);
    const-string v15, "Removing deletion ops from mOps"

    aput-object v15, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 658
    move/from16 v0, v29

    #v0=(Integer);
    move-object/from16 v1, p1

    #v1=(Reference);
    iput v0, v1, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    goto/16 :goto_5

    .line 410
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);v22=(Unknown);v23=(Unknown);v24=(Unknown);v25=(Unknown);v26=(Unknown);v27=(Unknown);v28=(Unknown);v29=(Unknown);v30=(Unknown);v31=(Unknown);v32=(Unknown);v33=(Unknown);v34=(Unknown);v35=(Unknown);v36=(Unknown);v37=(Unknown);v38=(Unknown);v39=(Unknown);v40=(Unknown);v41=(Unknown);v42=(Unknown);v43=(Unknown);v44=(Unknown);v45=(Unknown);v46=(Unknown);v47=(Unknown);v48=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x105 -> :sswitch_5
        0x106 -> :sswitch_0
        0x107 -> :sswitch_2
        0x10b -> :sswitch_4
        0x10d -> :sswitch_13
        0x10e -> :sswitch_15
        0x111 -> :sswitch_11
        0x112 -> :sswitch_7
        0x114 -> :sswitch_8
        0x117 -> :sswitch_9
        0x118 -> :sswitch_12
        0x119 -> :sswitch_b
        0x11a -> :sswitch_e
        0x11b -> :sswitch_a
        0x124 -> :sswitch_f
        0x125 -> :sswitch_d
        0x126 -> :sswitch_c
        0x127 -> :sswitch_6
        0x128 -> :sswitch_10
        0x12c -> :sswitch_1
        0x136 -> :sswitch_14
        0x44a -> :sswitch_3
    .end sparse-switch
.end method

.method public addParser(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;)V
    .locals 3
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1040
    const/4 v0, 0x0

    .line 1041
    .local v0, serverId:Ljava/lang/String;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    const/4 v1, 0x7

    #v1=(PosByte);
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v1, v2, :cond_0

    .line 1042
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 1050
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1044
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1045
    goto :goto_0

    .line 1047
    :sswitch_1
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser;->addEvent(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1053
    :cond_0
    #v1=(Integer);
    return-void

    .line 1042
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public addResponsesParser()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    #v11=(One);
    const/4 v10, 0x0

    .line 1146
    #v10=(Null);
    const/4 v5, 0x0

    .line 1147
    .local v5, serverId:Ljava/lang/String;
    #v5=(Null);
    const/4 v1, 0x0

    .line 1148
    .local v1, clientId:Ljava/lang/String;
    #v1=(Null);
    const/4 v6, -0x1

    .line 1149
    .local v6, status:I
    #v6=(Byte);
    new-instance v2, Landroid/content/ContentValues;

    #v2=(UninitRef);
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1150
    .local v2, cv:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    #v1=(Reference);v2=(Reference);v5=(Reference);v6=(Integer);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const/4 v7, 0x7

    #v7=(PosByte);
    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v7

    #v7=(Integer);
    const/4 v8, 0x3

    #v8=(PosByte);
    if-eq v7, v8, :cond_1

    .line 1151
    iget v7, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v7, :pswitch_data_0

    .line 1165
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1153
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1154
    goto :goto_0

    .line 1156
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1157
    goto :goto_0

    .line 1159
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v6

    .line 1160
    if-eq v6, v11, :cond_0

    .line 1161
    new-array v7, v11, [Ljava/lang/String;

    #v7=(Reference);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #v8=(Reference);
    const-string v9, "Attempt to add event failed with status: "

    #v9=(Reference);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 1169
    :cond_1
    #v7=(Integer);v8=(PosByte);v9=(Conflicted);
    if-nez v1, :cond_2

    .line 1190
    :goto_1
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Reference);
    return-void

    .line 1170
    :cond_2
    #v0=(Uninit);v3=(Uninit);v4=(Uninit);v7=(Integer);v8=(PosByte);v10=(Null);
    if-nez v5, :cond_3

    .line 1172
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "FAIL:"

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1175
    :cond_3
    #v7=(Conflicted);v8=(Conflicted);
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser;->getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1177
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    #v0=(Reference);
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_4

    .line 1178
    const-string v7, "_sync_id"

    #v7=(Reference);
    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string v7, "sync_data2"

    invoke-virtual {v2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    const/4 v7, 0x0

    #v7=(Null);
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1182
    .local v3, id:J
    #v3=(LongLo);v4=(LongHi);
    iget-object v7, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;

    #v7=(Reference);
    new-instance v8, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v8=(UninitRef);
    iget-object v9, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterEvents:Landroid/net/Uri;

    #v9=(Reference);
    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    #v8=(Reference);
    invoke-virtual {v7, v8}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 1185
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/String;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v10, "New event "

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was given serverId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    .end local v3           #id:J
    :cond_4
    #v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v7

    #v7=(Reference);
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7

    .line 1151
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public changeParser(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;)V
    .locals 6
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1097
    #v5=(One);
    const/4 v0, 0x0

    .line 1098
    .local v0, serverId:Ljava/lang/String;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v1, v2, :cond_0

    .line 1099
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 1108
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1101
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1102
    goto :goto_0

    .line 1104
    :sswitch_1
    new-array v1, v5, [Ljava/lang/String;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Changing "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/exchange/adapter/CalendarSyncParser;->addEvent(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1111
    :cond_0
    #v1=(Integer);v2=(PosByte);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 1099
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public changeResponsesParser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1193
    const/4 v0, 0x0

    .line 1194
    .local v0, serverId:Ljava/lang/String;
    #v0=(Null);
    const/4 v1, 0x0

    .line 1195
    .local v1, status:Ljava/lang/String;
    :goto_0
    #v0=(Reference);v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    const/16 v2, 0x8

    #v2=(PosByte);
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x3

    #v3=(PosByte);
    if-eq v2, v3, :cond_0

    .line 1196
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 1204
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1198
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1199
    goto :goto_0

    .line 1201
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1202
    goto :goto_0

    .line 1207
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1208
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Changed event "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1210
    :cond_1
    #v2=(Conflicted);v3=(PosByte);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 1196
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public commandsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1115
    :goto_0
    const/16 v0, 0x16

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_3

    .line 1116
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser;->addParser(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;)V

    goto :goto_0

    .line 1118
    :cond_0
    #v0=(Integer);
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser;->deleteParser(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;)V

    goto :goto_0

    .line 1120
    :cond_1
    #v0=(Integer);
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1121
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser;->changeParser(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;)V

    goto :goto_0

    .line 1123
    :cond_2
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1125
    :cond_3
    return-void
.end method

.method public commit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1129
    const/4 v1, 0x2

    #v1=(PosByte);
    new-array v1, v1, [Ljava/lang/String;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    const-string v3, "Calendar SyncKey saved as: "

    #v3=(Reference);
    aput-object v3, v1, v2

    const/4 v2, 0x1

    #v2=(One);
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1131
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;

    new-instance v2, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    #v2=(UninitRef);
    sget-object v3, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.google.android.exchange"

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncParser;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mAccountManagerAccount:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation;)V

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 1139
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.calendar"

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;

    invoke-static {v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncParser;->safeExecute(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    return-void

    .line 1140
    :catch_0
    move-exception v0

    .line 1141
    .local v0, e:Landroid/os/RemoteException;
    #v0=(Reference);
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    const-string v2, "Remote exception caught; will retry"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1
.end method

.method public deleteParser(Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;)V
    .locals 5
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1068
    :goto_0
    const/16 v2, 0x9

    #v2=(PosByte);
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x3

    #v3=(PosByte);
    if-eq v2, v3, :cond_1

    .line 1069
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 1084
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1071
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, serverId:Ljava/lang/String;
    #v1=(Reference);
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1075
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    #v0=(Reference);
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 1076
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v4, "Deleting "

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x1

    #v3=(One);
    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1077
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {p1, v2, v3, v1}, Lcom/android/exchange/adapter/CalendarSyncParser$CalendarOperations;->delete(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    #v2=(Reference);
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1087
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(PosByte);
    return-void

    .line 1069
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method isValidEventValues(Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "cv"

    .prologue
    const/4 v3, 0x0

    .line 679
    #v3=(Null);
    const-string v4, "originalInstanceTime"

    #v4=(Reference);
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 681
    .local v2, isException:Z
    #v2=(Boolean);
    const-string v4, "dtstart"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 682
    const-string v4, "DTSTART missing"

    #v4=(Reference);
    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 708
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Boolean);v4=(Conflicted);
    return v3

    .line 685
    :cond_1
    #v0=(Uninit);v1=(Uninit);v3=(Null);v4=(Boolean);
    if-nez v2, :cond_2

    const-string v4, "sync_data2"

    #v4=(Reference);
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 686
    const-string v4, "_SYNC_DATA missing"

    #v4=(Reference);
    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_2
    #v4=(Boolean);
    if-nez v2, :cond_3

    const-string v4, "dtend"

    #v4=(Reference);
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_3

    const-string v4, "duration"

    #v4=(Reference);
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_3

    .line 691
    const-string v4, "DTEND/DURATION missing"

    #v4=(Reference);
    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :cond_3
    #v4=(Boolean);
    if-eqz v2, :cond_4

    const-string v4, "dtend"

    #v4=(Reference);
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_4

    .line 695
    const-string v4, "Exception missing DTEND"

    #v4=(Reference);
    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :cond_4
    #v4=(Boolean);
    const-string v4, "rrule"

    #v4=(Reference);
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_5

    .line 699
    const-string v4, "duration"

    #v4=(Reference);
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, duration:Ljava/lang/String;
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 701
    const-string v4, "allDay"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_5

    .line 702
    const-string v4, "allDay"

    #v4=(Reference);
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 703
    .local v0, ade:Ljava/lang/Integer;
    #v0=(Reference);
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #v4=(Integer);
    if-eqz v4, :cond_5

    const-string v4, "D"

    #v4=(Reference);
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 708
    .end local v0           #ade:Ljava/lang/Integer;
    .end local v1           #duration:Ljava/lang/String;
    :cond_5
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_0
.end method

.method public recurrenceParser()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    const/4 v0, -0x1

    .line 714
    .local v0, type:I
    #v0=(Byte);
    const/4 v1, -0x1

    .line 715
    .local v1, occurrences:I
    #v1=(Byte);
    const/4 v2, -0x1

    .line 716
    .local v2, interval:I
    #v2=(Byte);
    const/4 v3, -0x1

    .line 717
    .local v3, dow:I
    #v3=(Byte);
    const/4 v4, -0x1

    .line 718
    .local v4, dom:I
    #v4=(Byte);
    const/4 v5, -0x1

    .line 719
    .local v5, wom:I
    #v5=(Byte);
    const/4 v6, -0x1

    .line 720
    .local v6, moy:I
    #v6=(Byte);
    const/4 v7, 0x0

    .line 722
    .local v7, until:Ljava/lang/String;
    :goto_0
    #v0=(Integer);v1=(Integer);v2=(Integer);v3=(Integer);v4=(Integer);v5=(Integer);v6=(Integer);v7=(Reference);v8=(Conflicted);v9=(Conflicted);
    const/16 v8, 0x11b

    #v8=(PosShort);
    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v8

    #v8=(Integer);
    const/4 v9, 0x3

    #v9=(PosByte);
    if-eq v8, v9, :cond_0

    .line 723
    iget v8, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v8, :pswitch_data_0

    .line 749
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 725
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v0

    .line 726
    goto :goto_0

    .line 728
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v2

    .line 729
    goto :goto_0

    .line 731
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v1

    .line 732
    goto :goto_0

    .line 734
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v3

    .line 735
    goto :goto_0

    .line 737
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v4

    .line 738
    goto :goto_0

    .line 740
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v5

    .line 741
    goto :goto_0

    .line 743
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v6

    .line 744
    goto :goto_0

    .line 746
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 747
    goto :goto_0

    .line 753
    :cond_0
    invoke-static/range {v0 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->rruleFromRecurrence(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    return-object v8

    .line 723
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x11c
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public responsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1216
    :goto_0
    const/4 v0, 0x6

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-eq v0, v1, :cond_2

    .line 1217
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1218
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->addResponsesParser()V

    goto :goto_0

    .line 1219
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1220
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->changeResponsesParser()V

    goto :goto_0

    .line 1222
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1224
    :cond_2
    return-void
.end method

.method setTimeRelatedValues(Landroid/content/ContentValues;JJI)V
    .locals 13
    .parameter "cv"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "allDayEvent"

    .prologue
    .line 289
    const-wide/16 v7, 0x0

    #v7=(LongLo);v8=(LongHi);
    cmp-long v7, p2, v7

    #v7=(Byte);
    if-gez v7, :cond_0

    .line 336
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-void

    .line 292
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Byte);v8=(LongHi);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    const-wide/16 v7, 0x0

    #v7=(LongLo);
    cmp-long v7, p4, v7

    #v7=(Byte);
    if-gez v7, :cond_1

    const-wide/32 v7, 0x1b7740

    #v7=(LongLo);
    add-long p4, p2, v7

    .line 295
    :cond_1
    #v7=(Conflicted);
    if-eqz p6, :cond_2

    .line 296
    iget-object v7, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    #v7=(Reference);
    move-wide v0, p2

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1, v7}, Lcom/android/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p2

    .line 297
    iget-object v7, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v7}, Lcom/android/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p4

    .line 298
    const-string v7, "eventTimezone"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, originalTimeZone:Ljava/lang/String;
    #v6=(Reference);
    const-string v7, "sync_data1"

    invoke-virtual {p1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v7, "eventTimezone"

    iget-object v8, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->UTC_TIMEZONE:Ljava/util/TimeZone;

    #v8=(Reference);
    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v6           #originalTimeZone:Ljava/lang/String;
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    const-string v7, "originalInstanceTime"

    #v7=(Reference);
    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_3

    const-string v7, "originalAllDay"

    #v7=(Reference);
    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_3

    .line 307
    const-string v7, "originalAllDay"

    #v7=(Reference);
    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 308
    .local v2, ade:Ljava/lang/Integer;
    #v2=(Reference);
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    #v7=(Integer);
    if-eqz v7, :cond_3

    .line 309
    const-string v7, "originalInstanceTime"

    #v7=(Reference);
    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 310
    .local v4, exceptionTime:J
    #v4=(LongLo);v5=(LongHi);
    new-instance v3, Ljava/util/GregorianCalendar;

    #v3=(UninitRef);
    iget-object v7, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-direct {v3, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 311
    .local v3, cal:Ljava/util/GregorianCalendar;
    #v3=(Reference);
    iget-object v7, p0, Lcom/android/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    invoke-static {v4, v5, v7}, Lcom/android/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v4

    .line 313
    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 314
    const/16 v7, 0xb

    #v7=(PosByte);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 315
    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 316
    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 317
    const-string v7, "originalInstanceTime"

    #v7=(Reference);
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 322
    .end local v2           #ade:Ljava/lang/Integer;
    .end local v3           #cal:Ljava/util/GregorianCalendar;
    .end local v4           #exceptionTime:J
    :cond_3
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const-string v7, "dtstart"

    #v7=(Reference);
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    const-string v7, "rrule"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_5

    .line 325
    if-eqz p6, :cond_4

    .line 326
    const-string v7, "duration"

    #v7=(Reference);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #v8=(Reference);
    const-string v9, "P"

    #v9=(Reference);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, p4, p2

    #v9=(LongLo);v10=(LongHi);
    const-wide/32 v11, 0x5265c00

    #v11=(LongLo);v12=(LongHi);
    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "D"

    #v9=(Reference);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :cond_4
    #v7=(Boolean);v9=(Conflicted);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    const-string v7, "duration"

    #v7=(Reference);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #v8=(Reference);
    const-string v9, "P"

    #v9=(Reference);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, p4, p2

    #v9=(LongLo);v10=(LongHi);
    const-wide/32 v11, 0xea60

    #v11=(LongLo);v12=(LongHi);
    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "M"

    #v9=(Reference);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :cond_5
    #v7=(Boolean);v9=(Conflicted);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    const-string v7, "dtend"

    #v7=(Reference);
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 334
    const-string v7, "lastDate"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method

.method protected wipe()V
    .locals 6

    .prologue
    .line 1359
    const-string v0, "Exchange"

    #v0=(Reference);
    const-string v1, "Wiping calendar for account %d"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v4=(Reference);
    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1360
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/service/EasCalendarSyncHandler;->wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 1362
    return-void
.end method
