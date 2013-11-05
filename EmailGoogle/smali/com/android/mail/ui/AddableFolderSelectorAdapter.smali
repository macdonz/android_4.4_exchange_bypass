.class public Lcom/android/mail/ui/AddableFolderSelectorAdapter;
.super Lcom/android/mail/ui/FolderSelectorAdapter;
.source "AddableFolderSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;ILjava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "folders"
    .parameter
    .parameter "layout"
    .parameter "header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, initiallySelected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/mail/ui/FolderSelectorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;ILjava/lang/String;)V

    .line 35
    #p0=(Reference);
    return-void
.end method

.method public static filterFolders(Landroid/database/Cursor;Ljava/util/Set;)Landroid/database/Cursor;
    .locals 10
    .parameter "folderCursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, excludedTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v7, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    #v7=(Reference);
    array-length v5, v7

    .line 40
    .local v5, projectionSize:I
    #v5=(Integer);
    new-instance v0, Lcom/android/mail/utils/MatrixCursorWithCachedColumns;

    #v0=(UninitRef);
    sget-object v7, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/android/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;)V

    .line 42
    .local v0, cursor:Landroid/database/MatrixCursor;
    #v0=(Reference);
    new-array v3, v5, [Ljava/lang/Object;

    .line 43
    .local v3, folder:[Ljava/lang/Object;
    #v3=(Reference);
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_4

    .line 45
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const/16 v7, 0xf

    #v7=(PosByte);
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 47
    .local v6, type:I
    #v6=(Integer);
    if-eqz p1, :cond_5

    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, exclude:Z
    #v1=(Null);
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    #v4=(Reference);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 51
    .local v2, excludedType:I
    #v2=(Integer);
    invoke-static {v6, v2}, Lcom/android/mail/providers/Folder;->isType(II)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_1

    .line 52
    const/4 v1, 0x1

    .line 57
    .end local v2           #excludedType:I
    :cond_2
    #v1=(Boolean);v2=(Conflicted);
    if-eqz v1, :cond_5

    .line 113
    .end local v1           #exclude:Z
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    #v1=(Conflicted);v4=(Conflicted);v7=(PosByte);
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_0

    .line 115
    .end local v6           #type:I
    :cond_4
    #v6=(Conflicted);
    return-object v0

    .line 62
    .restart local v6       #type:I
    :cond_5
    #v6=(Integer);v7=(PosByte);
    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/mail/providers/Folder;->isType(II)Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_6

    const/4 v7, 0x1

    #v7=(One);
    invoke-static {v6, v7}, Lcom/android/mail/providers/Folder;->isType(II)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_3

    .line 64
    :cond_6
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 66
    const/4 v7, 0x1

    #v7=(One);
    const/4 v8, 0x1

    #v8=(One);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 68
    const/4 v7, 0x2

    #v7=(PosByte);
    const/4 v8, 0x2

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 70
    const/4 v7, 0x3

    const/4 v8, 0x3

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 72
    const/4 v7, 0x4

    const/4 v8, 0x4

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 74
    const/4 v7, 0x5

    const/4 v8, 0x5

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 76
    const/4 v7, 0x6

    const/4 v8, 0x6

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 78
    const/4 v7, 0x7

    const/4 v8, 0x7

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 80
    const/16 v7, 0x8

    const/16 v8, 0x8

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 82
    const/16 v7, 0x9

    const/16 v8, 0x9

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 84
    const/16 v7, 0xa

    const/16 v8, 0xa

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 86
    const/16 v7, 0xb

    const/16 v8, 0xb

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 88
    const/16 v7, 0xc

    const/16 v8, 0xc

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 90
    const/16 v7, 0xd

    const/16 v8, 0xd

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 92
    const/16 v7, 0xe

    const/16 v8, 0xe

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 94
    const/16 v7, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    .line 95
    const/16 v7, 0x10

    const/16 v8, 0x10

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 97
    const/16 v7, 0x11

    const/16 v8, 0x11

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 99
    const/16 v7, 0x12

    const/16 v8, 0x12

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 101
    const/16 v7, 0x13

    const/16 v8, 0x13

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 103
    const/16 v7, 0x14

    const/16 v8, 0x14

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 105
    const/16 v7, 0x15

    const/16 v8, 0x15

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 107
    const/16 v7, 0x16

    const/16 v8, 0x16

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    #v8=(LongLo);
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 109
    const/16 v7, 0x17

    const/16 v8, 0x17

    #v8=(PosByte);
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    aput-object v8, v3, v7

    .line 111
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
