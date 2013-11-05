.class Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;
.super Ljava/lang/Object;
.source "ConversationCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationCursor$ConversationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProviderExecute"
.end annotation


# instance fields
.field final mCode:I

.field final mResolver:Landroid/content/ContentResolver;

.field final mUri:Landroid/net/Uri;

.field final mValues:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(ILandroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "code"
    .parameter "resolver"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1474
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1475
    #p0=(Reference);
    iput p1, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->mCode:I

    .line 1476
    invoke-static {p3}, Lcom/android/mail/browse/ConversationCursor;->access$1500(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->mUri:Landroid/net/Uri;

    .line 1477
    iput-object p4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->mValues:Landroid/content/ContentValues;

    .line 1478
    iput-object p2, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->mResolver:Landroid/content/ContentResolver;

    .line 1479
    return-void
.end method

.method static opInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1482
    new-instance v0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;

    #v0=(UninitRef);
    const/4 v1, 0x1

    #v1=(One);
    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;-><init>(ILandroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1483
    .local v0, e:Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;
    #v0=(Reference);
    invoke-static {}, Lcom/android/mail/browse/ConversationCursor;->offUiThread()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->go()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/net/Uri;

    .line 1485
    :goto_0
    return-object v1

    .line 1484
    :cond_0
    #v1=(Boolean);
    new-instance v1, Ljava/lang/Thread;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1485
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method


# virtual methods
.method public go()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1494
    #v0=(Null);
    iget v1, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->mCode:I

    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 1502
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v0

    .line 1496
    :pswitch_0
    #v0=(Null);v1=(Integer);v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->mResolver:Landroid/content/ContentResolver;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->mUri:Landroid/net/Uri;

    #v2=(Reference);
    invoke-virtual {v1, v2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 1498
    :pswitch_1
    #v0=(Null);v1=(Integer);v2=(Uninit);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->mResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->mUri:Landroid/net/Uri;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->mValues:Landroid/content/ContentValues;

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1500
    :pswitch_2
    #v0=(Null);v1=(Integer);v2=(Uninit);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->mResolver:Landroid/content/ContentResolver;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->mUri:Landroid/net/Uri;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->mValues:Landroid/content/ContentValues;

    #v3=(Reference);
    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 1494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->go()Ljava/lang/Object;

    .line 1491
    return-void
.end method
