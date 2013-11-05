.class public abstract Lcom/android/common/contacts/BaseEmailAddressAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "BaseEmailAddressAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;,
        Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;,
        Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryListQuery;,
        Lcom/android/common/contacts/BaseEmailAddressAdapter$EmailQuery;,
        Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mDirectoriesLoaded:Z

.field private mHandler:Landroid/os/Handler;

.field private mPreferredMaxResultCount:I


# direct methods
.method static synthetic access$000(Lcom/android/common/contacts/BaseEmailAddressAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mDirectoriesLoaded:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$002(Lcom/android/common/contacts/BaseEmailAddressAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mDirectoriesLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/common/contacts/BaseEmailAddressAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mPreferredMaxResultCount:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$200(Lcom/android/common/contacts/BaseEmailAddressAdapter;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/android/common/contacts/BaseEmailAddressAdapter;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method private createLoadingCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 495
    #v3=(Null);
    new-instance v0, Landroid/database/MatrixCursor;

    #v0=(UninitRef);
    new-array v1, v4, [Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "searching"

    #v2=(Reference);
    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 496
    .local v0, cursor:Landroid/database/MatrixCursor;
    #v0=(Reference);
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 497
    return-object v0
.end method

.method private hasDuplicates(Landroid/database/Cursor;I)Z
    .locals 3
    .parameter "cursor"
    .parameter "partition"

    .prologue
    const/4 v1, 0x1

    .line 555
    #v1=(One);
    const/4 v2, -0x1

    #v2=(Byte);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 556
    :cond_0
    #v0=(Conflicted);
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 557
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, emailAddress:Ljava/lang/String;
    #v0=(Reference);
    invoke-direct {p0, v0, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->isDuplicate(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    .end local v0           #emailAddress:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    :cond_1
    #v1=(One);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method private isDuplicate(Ljava/lang/String;I)Z
    .locals 6
    .parameter "emailAddress"
    .parameter "excludePartition"

    .prologue
    const/4 v4, 0x1

    .line 570
    #v4=(One);
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v3

    .line 571
    .local v3, partitionCount:I
    #v3=(Integer);
    const/4 v2, 0x0

    .local v2, partition:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v5=(Conflicted);
    if-ge v2, v3, :cond_2

    .line 572
    if-eq v2, p2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->isLoading(I)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 573
    invoke-virtual {p0, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 574
    .local v1, cursor:Landroid/database/Cursor;
    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 575
    const/4 v5, -0x1

    #v5=(Byte);
    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 576
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 577
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, address:Ljava/lang/String;
    #v0=(Reference);
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 586
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v4=(Boolean);v5=(Conflicted);
    return v4

    .line 571
    :cond_1
    #v4=(One);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 586
    :cond_2
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_1
.end method

.method private isLoading(I)Z
    .locals 1
    .parameter "partitionIndex"

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    #v0=(Boolean);
    return v0
.end method

.method private final makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 590
    #v4=(Null);
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "searching"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 591
    const-string v1, ""

    .line 599
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    return-object v1

    .line 594
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, displayName:Ljava/lang/String;
    #v0=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, emailAddress:Ljava/lang/String;
    #v1=(Reference);
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 599
    new-instance v2, Landroid/text/util/Rfc822Token;

    #v2=(UninitRef);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-direct {v2, v0, v1, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter "partition"
    .parameter "cursor"

    .prologue
    const/16 v7, 0xa

    #v7=(PosByte);
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 529
    #v5=(Null);
    if-nez p2, :cond_1

    .line 530
    const/4 p2, 0x0

    .line 551
    .end local p2
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-object p2

    .line 533
    .restart local p2
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    #v4=(Integer);
    if-gt v4, v7, :cond_2

    invoke-direct {p0, p2, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->hasDuplicates(Landroid/database/Cursor;I)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 538
    :cond_2
    #v4=(Integer);
    const/4 v0, 0x0

    .line 539
    .local v0, count:I
    #v0=(Null);
    new-instance v3, Landroid/database/MatrixCursor;

    #v3=(UninitRef);
    sget-object v4, Lcom/android/common/contacts/BaseEmailAddressAdapter$EmailQuery;->PROJECTION:[Ljava/lang/String;

    #v4=(Reference);
    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 540
    .local v3, newCursor:Landroid/database/MatrixCursor;
    #v3=(Reference);
    const/4 v4, -0x1

    #v4=(Byte);
    invoke-interface {p2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 541
    :cond_3
    :goto_1
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    if-ge v0, v7, :cond_4

    .line 542
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, displayName:Ljava/lang/String;
    #v1=(Reference);
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, emailAddress:Ljava/lang/String;
    #v2=(Reference);
    invoke-direct {p0, v2, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->isDuplicate(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 545
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 549
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #emailAddress:Ljava/lang/String;
    :cond_4
    #v1=(Conflicted);v2=(Conflicted);v4=(Boolean);
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    move-object p2, v3

    .line 551
    goto :goto_0
.end method


# virtual methods
.method protected onDirectoryLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 23
    .parameter "constraint"
    .parameter "directoryCursor"
    .parameter "defaultPartitionCursor"

    .prologue
    .line 368
    if-eqz p2, :cond_5

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    #v20=(Reference);
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 370
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    #v14=(Reference);
    const/16 v17, 0x0

    .line 371
    .local v17, preferredDirectory:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    #v17=(Null);
    new-instance v6, Ljava/util/ArrayList;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v6, directories:Ljava/util/List;,"Ljava/util/List<Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;>;"
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v6=(Reference);v7=(Conflicted);v10=(Conflicted);v11=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Reference);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_3

    .line 373
    const/16 v20, 0x0

    #v20=(Null);
    move-object/from16 v0, p2

    #v0=(Reference);
    move/from16 v1, v20

    #v1=(Null);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 377
    .local v10, id:J
    #v10=(LongLo);v11=(LongHi);
    const-wide/16 v20, 0x1

    #v20=(LongLo);v21=(LongHi);
    cmp-long v20, v10, v20

    #v20=(Byte);
    if-eqz v20, :cond_0

    .line 381
    new-instance v16, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    #v16=(UninitRef);
    invoke-direct/range {v16 .. v16}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;-><init>()V

    .line 382
    .local v16, partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    #v16=(Reference);
    move-object/from16 v0, v16

    iput-wide v10, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryId:J

    .line 383
    const/16 v20, 0x3

    #v20=(PosByte);
    move-object/from16 v0, p2

    move/from16 v1, v20

    #v1=(PosByte);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    #v20=(Reference);
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    #v1=(Reference);
    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 384
    const/16 v20, 0x1

    #v20=(One);
    move-object/from16 v0, p2

    move/from16 v1, v20

    #v1=(One);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    #v20=(Reference);
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    #v1=(Reference);
    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    .line 385
    const/16 v20, 0x2

    #v20=(PosByte);
    move-object/from16 v0, p2

    move/from16 v1, v20

    #v1=(PosByte);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    #v20=(Reference);
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    #v1=(Reference);
    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    .line 386
    const/16 v20, 0x4

    #v20=(PosByte);
    move-object/from16 v0, p2

    move/from16 v1, v20

    #v1=(PosByte);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 387
    .local v15, packageName:Ljava/lang/String;
    #v15=(Reference);
    const/16 v20, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 388
    .local v18, resourceId:I
    #v18=(Integer);
    if-eqz v15, :cond_1

    if-eqz v18, :cond_1

    .line 390
    :try_start_0
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v19

    .line 392
    .local v19, resources:Landroid/content/res/Resources;
    #v19=(Reference);
    move-object/from16 v0, v19

    move/from16 v1, v18

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    #v20=(Reference);
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    #v1=(Reference);
    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 393
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 394
    const-string v20, "BaseEmailAddressAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    #v21=(UninitRef);
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #v21=(Reference);
    const-string v22, "Cannot resolve directory name: "

    #v22=(Reference);
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v19           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    #v1=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    #v20=(Reference);
    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    move-object/from16 v21, v0

    #v21=(Reference);
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    #v20=(Reference);
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    #v20=(Boolean);
    if-eqz v20, :cond_2

    .line 408
    move-object/from16 v17, v16

    goto/16 :goto_0

    .line 397
    :catch_0
    #v20=(Conflicted);v21=(Conflicted);
    move-exception v7

    .line 398
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    #v7=(Reference);
    const-string v20, "BaseEmailAddressAdapter"

    #v20=(Reference);
    new-instance v21, Ljava/lang/StringBuilder;

    #v21=(UninitRef);
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #v21=(Reference);
    const-string v22, "Cannot resolve directory name: "

    #v22=(Reference);
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    #v1=(Reference);
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 410
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    #v1=(Conflicted);v7=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 414
    .end local v10           #id:J
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    .end local v18           #resourceId:I
    :cond_3
    #v0=(Conflicted);v10=(Conflicted);v11=(Conflicted);v15=(Conflicted);v16=(Conflicted);v18=(Conflicted);v20=(Boolean);
    if-eqz v17, :cond_4

    .line 415
    const/16 v20, 0x1

    #v20=(One);
    move/from16 v0, v20

    #v0=(One);
    move-object/from16 v1, v17

    #v1=(Reference);
    invoke-interface {v6, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 418
    :cond_4
    #v0=(Conflicted);v1=(Conflicted);v20=(Boolean);
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    #v9=(Reference);
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    #v16=(Reference);
    check-cast v16, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 419
    .restart local v16       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, v16

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_2

    .line 423
    .end local v6           #directories:Ljava/util/List;,"Ljava/util/List<Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v14           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    .end local v17           #preferredDirectory:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_5
    #v0=(Conflicted);v1=(Conflicted);v6=(Conflicted);v9=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);v20=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v4

    .line 424
    .local v4, count:I
    #v4=(Integer);
    const/4 v12, 0x0

    .line 428
    .local v12, limit:I
    #v12=(Null);
    const/16 v20, 0x0

    #v20=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v20

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->setNotificationsEnabled(Z)V

    .line 431
    if-eqz p3, :cond_6

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v20

    #v20=(Integer);
    if-lez v20, :cond_6

    .line 432
    const/16 v20, 0x0

    #v20=(Null);
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p3

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 435
    :cond_6
    #v2=(Conflicted);v20=(Integer);
    if-nez p3, :cond_8

    const/4 v5, 0x0

    .line 438
    .local v5, defaultPartitionCount:I
    :goto_3
    #v5=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mPreferredMaxResultCount:I

    #v0=(Integer);
    move/from16 v20, v0

    sub-int v12, v20, v5

    .line 442
    #v12=(Integer);
    const/4 v8, 0x1

    .local v8, i:I
    :goto_4
    #v0=(Conflicted);v1=(Reference);v8=(Integer);
    if-ge v8, v4, :cond_a

    .line 443
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v8}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v16

    #v16=(Reference);
    check-cast v16, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 444
    .restart local v16       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 446
    if-lez v12, :cond_9

    .line 447
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    #v0=(Boolean);
    move/from16 v20, v0

    #v20=(Boolean);
    if-nez v20, :cond_7

    .line 448
    const/16 v20, 0x1

    #v20=(One);
    move/from16 v0, v20

    #v0=(One);
    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    .line 449
    const/16 v20, 0x0

    #v20=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, v20

    #v1=(Null);
    invoke-virtual {v0, v8, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 442
    :cond_7
    :goto_5
    #v0=(Conflicted);v1=(Reference);v20=(Boolean);
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 435
    .end local v5           #defaultPartitionCount:I
    .end local v8           #i:I
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_8
    #v0=(Reference);v1=(Null);v5=(Uninit);v8=(Uninit);v12=(Null);v16=(Conflicted);v20=(Integer);
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    #v5=(Integer);
    goto :goto_3

    .line 452
    .restart local v5       #defaultPartitionCount:I
    .restart local v8       #i:I
    .restart local v16       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_9
    #v1=(Reference);v8=(Integer);v12=(Integer);v16=(Reference);
    const/16 v20, 0x0

    #v20=(Null);
    move/from16 v0, v20

    #v0=(Null);
    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    .line 453
    const/16 v20, 0x0

    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, v20

    #v1=(Null);
    invoke-virtual {v0, v8, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 457
    .end local v5           #defaultPartitionCount:I
    .end local v8           #i:I
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :catchall_0
    #v0=(Conflicted);v1=(Reference);v5=(Conflicted);v8=(Conflicted);v16=(Conflicted);v20=(Integer);
    move-exception v20

    #v20=(Reference);
    const/16 v21, 0x1

    #v21=(One);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v21

    #v1=(One);
    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->setNotificationsEnabled(Z)V

    throw v20

    .restart local v5       #defaultPartitionCount:I
    .restart local v8       #i:I
    :cond_a
    #v0=(Conflicted);v1=(Reference);v5=(Integer);v8=(Integer);v20=(Integer);v21=(Conflicted);
    const/16 v20, 0x1

    #v20=(One);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v20

    #v1=(One);
    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->setNotificationsEnabled(Z)V

    .line 462
    const/4 v8, 0x1

    :goto_6
    #v1=(Conflicted);v3=(Conflicted);v13=(Conflicted);v20=(Conflicted);
    if-ge v8, v4, :cond_e

    .line 463
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v16

    #v16=(Reference);
    check-cast v16, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 464
    .restart local v16       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    #v0=(Boolean);
    move/from16 v20, v0

    #v20=(Boolean);
    if-eqz v20, :cond_d

    .line 465
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    #v20=(Reference);
    const/16 v21, 0x1

    #v21=(One);
    move-object/from16 v0, v20

    move/from16 v1, v21

    #v1=(One);
    move-object/from16 v2, v16

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    #v22=(Null);
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    #v2=(Null);
    move-object/from16 v3, v16

    #v3=(Reference);
    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 467
    .local v13, msg:Landroid/os/Message;
    #v13=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x3e8

    #v21=(LongLo);v22=(LongHi);
    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 468
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    .line 469
    new-instance v20, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    #v20=(UninitRef);
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    move-wide/from16 v2, v21

    #v2=(LongLo);v3=(LongHi);
    invoke-direct {v0, v1, v8, v2, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;-><init>(Lcom/android/common/contacts/BaseEmailAddressAdapter;IJ)V

    #v0=(Reference);v20=(Reference);
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    .line 471
    :cond_b
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->setLimit(I)V

    .line 472
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    .line 462
    .end local v13           #msg:Landroid/os/Message;
    :cond_c
    :goto_7
    #v1=(Conflicted);v13=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 474
    :cond_d
    #v0=(Boolean);v20=(Boolean);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    #v20=(Reference);
    if-eqz v20, :cond_c

    .line 476
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #v21=(Null);
    invoke-virtual/range {v20 .. v21}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 480
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_e
    #v16=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    return-void
.end method

.method public onPartitionLoadFinished(Ljava/lang/CharSequence;ILandroid/database/Cursor;)V
    .locals 3
    .parameter "constraint"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v1

    #v1=(Integer);
    if-ge p2, v1, :cond_2

    .line 503
    invoke-virtual {p0, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 508
    .local v0, partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    #v1=(Reference);
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 509
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    .line 510
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 511
    invoke-direct {p0, p2, p3}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 522
    .end local v0           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 515
    .restart local v0       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_1
    #v0=(Reference);v1=(Boolean);v2=(Uninit);
    if-eqz p3, :cond_0

    .line 516
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 519
    .end local v0           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_2
    #v0=(Uninit);v1=(Integer);
    if-eqz p3, :cond_0

    .line 520
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method showSearchPendingIfNotComplete(I)V
    .locals 2
    .parameter "partitionIndex"

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v1

    #v1=(Integer);
    if-ge p1, v1, :cond_0

    .line 484
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 485
    .local v0, partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->createLoadingCursor()Landroid/database/Cursor;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p0, p1, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 489
    .end local v0           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method
