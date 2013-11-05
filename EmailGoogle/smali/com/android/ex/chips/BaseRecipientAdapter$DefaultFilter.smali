.class final Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;
.super Landroid/widget/Filter;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/BaseRecipientAdapter;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/BaseRecipientAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "resultValue"

    .prologue
    .line 333
    move-object v2, p1

    #v2=(Reference);
    check-cast v2, Lcom/android/ex/chips/RecipientEntry;

    .line 334
    .local v2, entry:Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, displayName:Ljava/lang/String;
    #v0=(Reference);
    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, emailAddress:Ljava/lang/String;
    #v1=(Reference);
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    .end local v1           #emailAddress:Ljava/lang/String;
    :cond_0
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);
    return-object v1

    .restart local v1       #emailAddress:Ljava/lang/String;
    :cond_1
    #v3=(Boolean);v4=(Uninit);
    new-instance v3, Landroid/text/util/Rfc822Token;

    #v3=(UninitRef);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-direct {v3, v0, v1, v4}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 14
    .parameter "constraint"

    .prologue
    .line 224
    new-instance v13, Landroid/widget/Filter$FilterResults;

    #v13=(UninitRef);
    invoke-direct {v13}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 225
    .local v13, results:Landroid/widget/Filter$FilterResults;
    #v13=(Reference);
    const/4 v6, 0x0

    .line 226
    .local v6, defaultDirectoryCursor:Landroid/database/Cursor;
    #v6=(Null);
    const/4 v7, 0x0

    .line 228
    .local v7, directoryCursor:Landroid/database/Cursor;
    #v7=(Null);
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$000(Lcom/android/ex/chips/BaseRecipientAdapter;)V

    .line 294
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference);v7=(Reference);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-object v13

    .line 235
    :cond_1
    :try_start_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Null);v7=(Null);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$100(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v0, p1, v1, v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$200(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 237
    #v6=(Reference);
    if-nez v6, :cond_3

    .line 287
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Reference);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    if-eqz v6, :cond_2

    .line 288
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_2
    if-eqz v7, :cond_0

    .line 291
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 245
    :cond_3
    :try_start_1
    #v0=(Reference);v1=(Integer);v2=(Null);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Null);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    new-instance v9, Ljava/util/LinkedHashMap;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 247
    .local v9, entryMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    #v9=(Reference);
    new-instance v12, Ljava/util/ArrayList;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v12, nonAggregatedEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    #v12=(Reference);
    new-instance v10, Ljava/util/HashSet;

    #v10=(UninitRef);
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 251
    .local v10, existingDestinations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    #v10=(Reference);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_6

    .line 254
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    #v0=(UninitRef);
    invoke-direct {v0, v6}, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;-><init>(Landroid/database/Cursor;)V

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-static {v0, v1, v9, v12, v10}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$300(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 287
    .end local v9           #entryMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    .end local v10           #existingDestinations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12           #nonAggregatedEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Reference);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    move-exception v0

    #v0=(Reference);
    if-eqz v6, :cond_4

    .line 288
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_4
    if-eqz v7, :cond_5

    .line 291
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 259
    .restart local v9       #entryMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    .restart local v10       #existingDestinations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12       #nonAggregatedEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    :cond_6
    :try_start_2
    #v0=(Boolean);v1=(Integer);v2=(Null);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Null);v8=(Uninit);v9=(Reference);v10=(Reference);v11=(Uninit);v12=(Reference);
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v0=(Reference);
    invoke-static {v0, v9, v12}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$400(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 264
    .local v8, entries:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    #v8=(Reference);
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$100(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v1

    sub-int v11, v0, v1

    .line 266
    .local v11, limit:I
    #v11=(Integer);
    if-lez v11, :cond_7

    .line 272
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$500(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->URI:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 275
    #v7=(Reference);
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$600(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-static {v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$700(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v0, v7, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->setupOtherDirectories(Landroid/content/Context;Landroid/database/Cursor;Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v5

    .line 281
    .local v5, paramsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Reference);
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;

    #v0=(UninitRef);
    move-object v1, v8

    #v1=(Reference);
    move-object v2, v9

    move-object v3, v12

    #v3=(Reference);
    move-object v4, v10

    #v4=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;-><init>(Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    #v0=(Reference);
    iput-object v0, v13, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 284
    const/4 v0, 0x1

    #v0=(One);
    iput v0, v13, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 278
    .end local v5           #paramsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    :cond_7
    #v0=(Integer);v1=(Integer);v2=(Null);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Null);
    const/4 v5, 0x0

    .restart local v5       #paramsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    #v5=(Null);
    goto :goto_3
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 302
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v2=(Reference);
    invoke-static {v2, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$802(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 304
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-static {v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$000(Lcom/android/ex/chips/BaseRecipientAdapter;)V

    .line 306
    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 307
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #v0=(Reference);
    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;

    .line 308
    .local v0, defaultFilterResult:Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entryMap:Ljava/util/LinkedHashMap;

    #v3=(Reference);
    invoke-static {v2, v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$902(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 309
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->nonAggregatedEntries:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1002(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/List;)Ljava/util/List;

    .line 310
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->existingDestinations:Ljava/util/Set;

    invoke-static {v2, v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1102(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/Set;)Ljava/util/Set;

    .line 314
    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    #v2=(Reference);
    if-eqz v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-static {v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1200(Lcom/android/ex/chips/BaseRecipientAdapter;)V

    .line 319
    :cond_0
    #v2=(Conflicted);
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v2=(Reference);
    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entries:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1300(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/List;)V

    .line 322
    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 323
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-static {v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$100(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    move-result v2

    #v2=(Integer);
    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->existingDestinations:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    #v3=(Integer);
    sub-int v1, v2, v3

    .line 325
    .local v1, limit:I
    #v1=(Integer);
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v2=(Reference);
    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    #v3=(Reference);
    invoke-virtual {v2, p1, v3, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V

    .line 329
    .end local v0           #defaultFilterResult:Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;
    .end local v1           #limit:I
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    return-void
.end method
