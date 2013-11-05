.class final Lcom/android/mail/providers/SuggestionsProvider$ContactsCursor;
.super Lcom/android/mail/utils/MatrixCursorWithCachedColumns;
.source "SuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/SuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactsCursor"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mail/providers/SuggestionsProvider;


# direct methods
.method public constructor <init>(Lcom/android/mail/providers/SuggestionsProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/mail/providers/SuggestionsProvider$ContactsCursor;->this$0:Lcom/android/mail/providers/SuggestionsProvider;

    .line 129
    invoke-static {}, Lcom/android/mail/providers/SuggestionsProvider;->access$000()[Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;)V

    .line 130
    #p0=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/providers/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/SuggestionsProvider$ContactsCursor;->mContext:Landroid/content/Context;

    .line 131
    return-void
.end method


# virtual methods
.method public query(Ljava/lang/String;)Lcom/android/mail/providers/SuggestionsProvider$ContactsCursor;
    .locals 12
    .parameter "query"

    .prologue
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v3, 0x0

    .line 140
    #v3=(Null);
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 142
    .local v1, contactsUri:Landroid/net/Uri;
    #v1=(Reference);
    iget-object v0, p0, Lcom/android/mail/providers/SuggestionsProvider$ContactsCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/mail/providers/SuggestionsProvider;->access$100()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 148
    .local v7, cursor:Landroid/database/Cursor;
    #v7=(Reference);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v2, "android.resource://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mail/providers/SuggestionsProvider$ContactsCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f020019

    #v2=(Integer);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, emptyIcon:Ljava/lang/String;
    #v8=(Reference);
    if-eqz v7, :cond_2

    .line 151
    const-string v0, "data4"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 153
    .local v10, nameIndex:I
    #v10=(Integer);
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 156
    .local v6, addressIndex:I
    :goto_0
    #v3=(Reference);v6=(Integer);v9=(Conflicted);
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 157
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, match:Ljava/lang/String;
    #v9=(Reference);
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_1
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v11

    const/4 v2, 0x1

    #v2=(One);
    aput-object v9, v0, v2

    const/4 v2, 0x2

    #v2=(PosByte);
    iget-object v3, p0, Lcom/android/mail/providers/SuggestionsProvider$ContactsCursor;->this$0:Lcom/android/mail/providers/SuggestionsProvider;

    invoke-static {v3, v9}, Lcom/android/mail/providers/SuggestionsProvider;->access$200(Lcom/android/mail/providers/SuggestionsProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aput-object v8, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/SuggestionsProvider$ContactsCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_0
    #v0=(Boolean);v2=(Integer);
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 163
    .end local v9           #match:Ljava/lang/String;
    :cond_1
    #v9=(Conflicted);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 165
    .end local v6           #addressIndex:I
    .end local v10           #nameIndex:I
    :cond_2
    #v0=(Conflicted);v6=(Conflicted);v10=(Conflicted);
    return-object p0
.end method
