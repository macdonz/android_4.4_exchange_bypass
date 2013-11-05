.class public Lcom/android/mail/browse/ConversationCursor$ConversationOperation;
.super Ljava/lang/Object;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConversationOperation"
.end annotation


# instance fields
.field private final mConversation:Lcom/android/mail/providers/Conversation;

.field private final mLocalDeleteOnUpdate:Z

.field private final mMostlyDead:Z

.field private mRecalibrateRequired:Z

.field private final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/mail/browse/ConversationCursor;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/ConversationCursor;ILcom/android/mail/providers/Conversation;)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter "conv"

    .prologue
    .line 1714
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;-><init>(Lcom/android/mail/browse/ConversationCursor;ILcom/android/mail/providers/Conversation;Landroid/content/ContentValues;)V

    .line 1715
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Lcom/android/mail/browse/ConversationCursor;ILcom/android/mail/providers/Conversation;Landroid/content/ContentValues;)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter "conv"
    .parameter "values"

    .prologue
    .line 1717
    iput-object p1, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1709
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mRecalibrateRequired:Z

    .line 1718
    iput p2, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mType:I

    .line 1719
    iget-object v0, p3, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    .line 1720
    iput-object p3, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/android/mail/providers/Conversation;

    .line 1721
    iput-object p4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mValues:Landroid/content/ContentValues;

    .line 1722
    iget-boolean v0, p3, Lcom/android/mail/providers/Conversation;->localDeleteOnUpdate:Z

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mLocalDeleteOnUpdate:Z

    .line 1723
    invoke-virtual {p3}, Lcom/android/mail/providers/Conversation;->isMostlyDead()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mMostlyDead:Z

    .line 1724
    return-void
.end method

.method static synthetic access$2100(Lcom/android/mail/browse/ConversationCursor$ConversationOperation;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mail/browse/ConversationCursor$ConversationOperation;Landroid/net/Uri;)Landroid/content/ContentProviderOperation;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1684
    invoke-direct {p0, p1}, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->execute(Landroid/net/Uri;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mail/browse/ConversationCursor$ConversationOperation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1684
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mRecalibrateRequired:Z

    #v0=(Boolean);
    return v0
.end method

.method private execute(Landroid/net/Uri;)Landroid/content/ContentProviderOperation;
    .locals 7
    .parameter "underlyingUri"

    .prologue
    .line 1727
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    #v3=(Reference);
    const-string v4, "seq"

    #v4=(Reference);
    invoke-static {}, Lcom/android/mail/browse/ConversationCursor;->access$1600()I

    move-result v5

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1731
    .local v2, uri:Landroid/net/Uri;
    #v2=(Reference);
    const/4 v0, 0x0

    .line 1732
    .local v0, op:Landroid/content/ContentProviderOperation;
    #v0=(Null);
    iget v3, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mType:I

    #v3=(Integer);
    sparse-switch v3, :sswitch_data_0

    .line 1830
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #v3=(UninitRef);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "No such ConversationOperation type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mType:I

    #v5=(Integer);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 1734
    :sswitch_0
    #v3=(Integer);v5=(Reference);
    iget-boolean v3, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mLocalDeleteOnUpdate:Z

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 1735
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)V

    .line 1740
    :goto_0
    #v6=(Conflicted);
    iget-boolean v3, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mMostlyDead:Z

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 1741
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1834
    :goto_1
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    .line 1737
    :cond_0
    #v0=(Null);v1=(Uninit);v3=(Boolean);v6=(Uninit);
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mValues:Landroid/content/ContentValues;

    iget-object v6, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v6=(Reference);
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->updateLocal(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/mail/browse/ConversationCursor;)V

    .line 1738
    const/4 v3, 0x0

    #v3=(Null);
    iput-boolean v3, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mRecalibrateRequired:Z

    goto :goto_0

    .line 1745
    :cond_1
    #v3=(Boolean);v6=(Conflicted);
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/android/mail/providers/Conversation;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->commitMostlyDead(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/ConversationCursor;)V

    goto :goto_1

    .line 1749
    :sswitch_1
    #v3=(Integer);v6=(Uninit);
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/android/mail/providers/Conversation;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->setMostlyDead(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/ConversationCursor;)V

    .line 1750
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1751
    #v0=(Reference);
    goto :goto_1

    .line 1753
    :sswitch_2
    #v0=(Null);v3=(Integer);
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mValues:Landroid/content/ContentValues;

    invoke-static {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->access$2500(Lcom/android/mail/browse/ConversationCursor$ConversationProvider;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1754
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1756
    #v0=(Reference);
    goto :goto_1

    .line 1761
    :sswitch_3
    #v0=(Null);v3=(Integer);
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)V

    .line 1762
    iget-boolean v3, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mMostlyDead:Z

    #v3=(Boolean);
    if-nez v3, :cond_2

    .line 1763
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    #v0=(Reference);
    goto :goto_1

    .line 1765
    :cond_2
    #v0=(Null);v3=(Boolean);
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/android/mail/providers/Conversation;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->commitMostlyDead(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/ConversationCursor;)V

    goto :goto_1

    .line 1769
    :sswitch_4
    #v3=(Integer);
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/android/mail/providers/Conversation;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->setMostlyDead(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/ConversationCursor;)V

    .line 1770
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1771
    #v0=(Reference);
    goto :goto_1

    .line 1773
    :sswitch_5
    #v0=(Null);v3=(Integer);
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)V

    .line 1774
    iget-boolean v3, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mMostlyDead:Z

    #v3=(Boolean);
    if-nez v3, :cond_3

    .line 1776
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    #v3=(Reference);
    const-string v4, "operation"

    const-string v5, "archive"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    #v0=(Reference);
    goto/16 :goto_1

    .line 1781
    :cond_3
    #v0=(Null);v3=(Boolean);
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/android/mail/providers/Conversation;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->commitMostlyDead(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/ConversationCursor;)V

    goto/16 :goto_1

    .line 1785
    :sswitch_6
    #v3=(Integer);
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/android/mail/providers/Conversation;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->setMostlyDead(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/ConversationCursor;)V

    .line 1787
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "operation"

    const-string v5, "archive"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1790
    #v0=(Reference);
    goto/16 :goto_1

    .line 1792
    :sswitch_7
    #v0=(Null);v3=(Integer);
    iget-boolean v3, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mLocalDeleteOnUpdate:Z

    #v3=(Boolean);
    if-eqz v3, :cond_4

    .line 1793
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)V

    .line 1797
    :cond_4
    #v3=(Conflicted);
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    #v3=(Reference);
    const-string v4, "operation"

    const-string v5, "mute"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1800
    #v0=(Reference);
    goto/16 :goto_1

    .line 1803
    :sswitch_8
    #v0=(Null);v3=(Integer);
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)V

    .line 1805
    iget v3, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mType:I

    #v3=(Integer);
    const/4 v4, 0x5

    #v4=(PosByte);
    if-ne v3, v4, :cond_5

    const-string v1, "report_spam"

    .line 1810
    .local v1, operation:Ljava/lang/String;
    :goto_2
    #v1=(Reference);
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    #v3=(Reference);
    const-string v4, "operation"

    #v4=(Reference);
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1812
    #v0=(Reference);
    goto/16 :goto_1

    .line 1805
    .end local v1           #operation:Ljava/lang/String;
    :cond_5
    #v0=(Null);v1=(Uninit);v3=(Integer);v4=(PosByte);
    const-string v1, "report_not_spam"

    #v1=(Reference);
    goto :goto_2

    .line 1814
    :sswitch_9
    #v1=(Uninit);v4=(Reference);
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)V

    .line 1817
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "operation"

    const-string v5, "report_phishing"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1820
    #v0=(Reference);
    goto/16 :goto_1

    .line 1822
    :sswitch_a
    #v0=(Null);v3=(Integer);
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)V

    .line 1825
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "operation"

    const-string v5, "discard_drafts"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1828
    #v0=(Reference);
    goto/16 :goto_1

    .line 1732
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_5
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x80 -> :sswitch_4
        0x82 -> :sswitch_1
        0x83 -> :sswitch_6
    .end sparse-switch
.end method
