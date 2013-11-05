.class Lcom/android/mail/browse/ConversationItemView$ConversationItemFolderDisplayer;
.super Lcom/android/mail/ui/FolderDisplayer;
.source "ConversationItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConversationItemFolderDisplayer"
.end annotation


# instance fields
.field private mFoldersCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/android/mail/ui/FolderDisplayer;-><init>(Landroid/content/Context;)V

    .line 282
    #p0=(Reference);
    return-void
.end method

.method private measureFolders(II)I
    .locals 7
    .parameter "availableSpace"
    .parameter "cellSize"

    .prologue
    .line 302
    const/4 v4, 0x0

    .line 303
    .local v4, totalWidth:I
    #v4=(Null);
    const/4 v1, 0x1

    .line 304
    .local v1, firstTime:Z
    #v1=(One);
    iget-object v6, p0, Lcom/android/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    #v6=(Reference);
    invoke-interface {v6}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Reference);v4=(Integer);v5=(Conflicted);v6=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 305
    .local v0, f:Lcom/android/mail/providers/Folder;
    iget-object v2, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    .line 306
    .local v2, folderString:Ljava/lang/String;
    #v2=(Reference);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$000()Landroid/text/TextPaint;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    #v6=(Float);
    float-to-int v6, v6

    #v6=(Integer);
    add-int v5, v6, p2

    .line 307
    .local v5, width:I
    #v5=(Integer);
    if-eqz v1, :cond_2

    .line 308
    const/4 v1, 0x0

    .line 312
    :goto_0
    add-int/2addr v4, v5

    .line 313
    if-le v4, p1, :cond_0

    .line 318
    .end local v0           #f:Lcom/android/mail/providers/Folder;
    .end local v2           #folderString:Ljava/lang/String;
    .end local v5           #width:I
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v5=(Conflicted);
    return v4

    .line 310
    .restart local v0       #f:Lcom/android/mail/providers/Folder;
    .restart local v2       #folderString:Ljava/lang/String;
    .restart local v5       #width:I
    :cond_2
    #v0=(Reference);v2=(Reference);v5=(Integer);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$100()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0
.end method


# virtual methods
.method public drawFolders(Landroid/graphics/Canvas;Lcom/android/mail/browse/ConversationItemViewCoordinates;)V
    .locals 34
    .parameter "canvas"
    .parameter "coordinates"

    .prologue
    .line 322
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v2, v0, Lcom/android/mail/browse/ConversationItemView$ConversationItemFolderDisplayer;->mFoldersCount:I

    #v2=(Integer);
    if-nez v2, :cond_1

    .line 403
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v28=(Conflicted);v29=(Conflicted);v30=(Conflicted);v31=(Conflicted);v32=(Conflicted);v33=(Conflicted);
    return-void

    .line 325
    :cond_1
    #v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);v30=(Uninit);v31=(Uninit);v32=(Uninit);v33=(Uninit);
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersX:I

    #v0=(Integer);
    move/from16 v31, v0

    .line 326
    .local v31, xMinStart:I
    #v31=(Integer);
    move-object/from16 v0, p2

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersXEnd:I

    #v0=(Integer);
    move/from16 v30, v0

    .line 327
    .local v30, xEnd:I
    #v30=(Integer);
    move-object/from16 v0, p2

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersY:I

    #v0=(Integer);
    move/from16 v33, v0

    .line 328
    .local v33, y:I
    #v33=(Integer);
    move-object/from16 v0, p2

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersHeight:I

    #v0=(Integer);
    move/from16 v17, v0

    .line 329
    .local v17, height:I
    #v17=(Integer);
    move-object/from16 v0, p2

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersTextBottomPadding:I

    #v0=(Integer);
    move/from16 v26, v0

    .line 331
    .local v26, textBottomPadding:I
    #v26=(Integer);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$000()Landroid/text/TextPaint;

    move-result-object v2

    #v2=(Reference);
    move-object/from16 v0, p2

    #v0=(Reference);
    iget v3, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersFontSize:F

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 332
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$000()Landroid/text/TextPaint;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersTypeface:Landroid/graphics/Typeface;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 335
    sub-int v9, v30, v31

    .line 336
    .local v9, availableSpace:I
    #v9=(Integer);
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getFolderMinimumWidth()I

    move-result v2

    #v2=(Integer);
    div-int v22, v9, v2

    .line 337
    .local v22, maxFoldersCount:I
    #v22=(Integer);
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mail/browse/ConversationItemView$ConversationItemFolderDisplayer;->mFoldersCount:I

    move/from16 v0, v22

    #v0=(Integer);
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 338
    .local v16, foldersCount:I
    #v16=(Integer);
    div-int v10, v9, v16

    .line 339
    .local v10, averageWidth:I
    #v10=(Integer);
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getFolderCellWidth()I

    move-result v12

    .line 344
    .local v12, cellSize:I
    #v12=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-direct {v0, v9, v12}, Lcom/android/mail/browse/ConversationItemView$ConversationItemFolderDisplayer;->measureFolders(II)I

    move-result v28

    .line 345
    .local v28, totalWidth:I
    #v28=(Integer);
    move/from16 v0, v28

    #v0=(Integer);
    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v32, v30, v2

    .line 346
    .local v32, xStart:I
    #v32=(Integer);
    move/from16 v0, v28

    if-le v0, v9, :cond_5

    const/16 v23, 0x1

    .line 349
    .local v23, overflow:Z
    :goto_0
    #v23=(Boolean);
    const/16 v18, 0x0

    .line 350
    .local v18, i:I
    #v18=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/android/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v18=(Integer);v19=(Reference);v20=(Conflicted);v21=(Conflicted);v24=(Conflicted);v25=(Conflicted);v27=(Conflicted);v29=(Conflicted);
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Lcom/android/mail/providers/Folder;

    .line 351
    .local v13, f:Lcom/android/mail/providers/Folder;
    if-lez v9, :cond_0

    .line 354
    iget-object v15, v13, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    .line 355
    .local v15, folderString:Ljava/lang/String;
    #v15=(Reference);
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mail/ui/FolderDisplayer;->mDefaultFgColor:I

    #v2=(Integer);
    invoke-virtual {v13, v2}, Lcom/android/mail/providers/Folder;->getForegroundColor(I)I

    move-result v14

    .line 356
    .local v14, fgColor:I
    #v14=(Integer);
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mail/ui/FolderDisplayer;->mDefaultBgColor:I

    invoke-virtual {v13, v2}, Lcom/android/mail/providers/Folder;->getBackgroundColor(I)I

    move-result v11

    .line 357
    .local v11, bgColor:I
    #v11=(Integer);
    const/16 v21, 0x0

    .line 358
    .local v21, labelTooLong:Z
    #v21=(Null);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$000()Landroid/text/TextPaint;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    #v2=(Float);
    float-to-int v0, v2

    #v0=(Integer);
    move/from16 v27, v0

    .line 359
    .local v27, textW:I
    #v27=(Integer);
    add-int v2, v27, v12

    #v2=(Integer);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$100()I

    move-result v3

    #v3=(Integer);
    add-int v29, v2, v3

    .line 361
    .local v29, width:I
    #v29=(Integer);
    if-eqz v23, :cond_2

    move/from16 v0, v29

    if-le v0, v10, :cond_2

    .line 362
    add-int/lit8 v2, v16, -0x1

    move/from16 v0, v18

    if-ge v0, v2, :cond_6

    .line 363
    move/from16 v29, v10

    .line 369
    :goto_2
    const/16 v21, 0x1

    .line 373
    :cond_2
    #v21=(Boolean);
    const/16 v20, 0x0

    .line 378
    .local v20, isMuted:Z
    #v20=(Null);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$000()Landroid/text/TextPaint;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 379
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$000()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 380
    move/from16 v0, v32

    int-to-float v2, v0

    #v2=(Float);
    move/from16 v0, v33

    int-to-float v3, v0

    #v3=(Float);
    add-int v4, v32, v29

    #v4=(Integer);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$100()I

    move-result v5

    #v5=(Integer);
    sub-int/2addr v4, v5

    int-to-float v4, v4

    #v4=(Float);
    add-int v5, v33, v17

    int-to-float v5, v5

    #v5=(Float);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$000()Landroid/text/TextPaint;

    move-result-object v6

    #v6=(Reference);
    move-object/from16 v1, p1

    #v1=(Reference);
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 384
    div-int/lit8 v24, v12, 0x2

    .line 385
    .local v24, padding:I
    #v24=(Integer);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$000()Landroid/text/TextPaint;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 386
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$000()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 387
    if-eqz v21, :cond_3

    .line 388
    add-int v2, v32, v29

    #v2=(Integer);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$100()I

    move-result v3

    #v3=(Integer);
    sub-int/2addr v2, v3

    sub-int v25, v2, v24

    .line 389
    .local v25, rightBorder:I
    #v25=(Integer);
    new-instance v1, Landroid/graphics/LinearGradient;

    #v1=(UninitRef);
    sub-int v2, v25, v24

    int-to-float v2, v2

    #v2=(Float);
    move/from16 v0, v33

    int-to-float v3, v0

    #v3=(Float);
    move/from16 v0, v25

    int-to-float v4, v0

    move/from16 v0, v33

    int-to-float v5, v0

    invoke-static {v14}, Lcom/android/mail/utils/Utils;->getTransparentColor(I)I

    move-result v7

    #v7=(Integer);
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #v8=(Reference);
    move v6, v14

    #v6=(Integer);
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 391
    .local v1, shader:Landroid/graphics/Shader;
    #v1=(Reference);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$000()Landroid/text/TextPaint;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 393
    .end local v1           #shader:Landroid/graphics/Shader;
    .end local v25           #rightBorder:I
    :cond_3
    #v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v25=(Conflicted);
    add-int v2, v32, v24

    #v2=(Integer);
    int-to-float v2, v2

    #v2=(Float);
    add-int v3, v33, v17

    #v3=(Integer);
    sub-int v3, v3, v26

    int-to-float v3, v3

    #v3=(Float);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$000()Landroid/text/TextPaint;

    move-result-object v4

    #v4=(Reference);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-virtual {v0, v15, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 395
    if-eqz v21, :cond_4

    .line 396
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$000()Landroid/text/TextPaint;

    move-result-object v2

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 399
    :cond_4
    #v2=(Conflicted);v3=(Float);
    sub-int v9, v9, v29

    .line 400
    add-int v32, v32, v29

    .line 401
    add-int/lit8 v18, v18, 0x1

    .line 402
    goto/16 :goto_1

    .line 346
    .end local v11           #bgColor:I
    .end local v13           #f:Lcom/android/mail/providers/Folder;
    .end local v14           #fgColor:I
    .end local v15           #folderString:Ljava/lang/String;
    .end local v18           #i:I
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #isMuted:Z
    .end local v21           #labelTooLong:Z
    .end local v23           #overflow:Z
    .end local v24           #padding:I
    .end local v27           #textW:I
    .end local v29           #width:I
    :cond_5
    #v0=(Integer);v1=(Uninit);v2=(Integer);v3=(Reference);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v11=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v27=(Uninit);v29=(Uninit);
    const/16 v23, 0x0

    #v23=(Null);
    goto/16 :goto_0

    .line 367
    .restart local v11       #bgColor:I
    .restart local v13       #f:Lcom/android/mail/providers/Folder;
    .restart local v14       #fgColor:I
    .restart local v15       #folderString:Ljava/lang/String;
    .restart local v18       #i:I
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v21       #labelTooLong:Z
    .restart local v23       #overflow:Z
    .restart local v27       #textW:I
    .restart local v29       #width:I
    :cond_6
    #v1=(Conflicted);v3=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v11=(Integer);v13=(Reference);v14=(Integer);v15=(Reference);v18=(Integer);v19=(Reference);v20=(Conflicted);v21=(Null);v23=(Boolean);v24=(Conflicted);v25=(Conflicted);v27=(Integer);v29=(Integer);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$100()I

    move-result v2

    add-int v29, v9, v2

    goto/16 :goto_2
.end method

.method public hasVisibleFolders()Z
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/android/mail/browse/ConversationItemView$ConversationItemFolderDisplayer;->mFoldersCount:I

    #v0=(Integer);
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public loadConversationFolders(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/FolderUri;I)V
    .locals 1
    .parameter "conv"
    .parameter "ignoreFolderUri"
    .parameter "ignoreFolderType"

    .prologue
    .line 287
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/ui/FolderDisplayer;->loadConversationFolders(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/FolderUri;I)V

    .line 288
    iget-object v0, p0, Lcom/android/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/browse/ConversationItemView$ConversationItemFolderDisplayer;->mFoldersCount:I

    .line 289
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Lcom/android/mail/ui/FolderDisplayer;->reset()V

    .line 294
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/mail/browse/ConversationItemView$ConversationItemFolderDisplayer;->mFoldersCount:I

    .line 295
    return-void
.end method
