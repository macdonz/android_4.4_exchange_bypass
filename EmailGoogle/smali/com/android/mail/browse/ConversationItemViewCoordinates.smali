.class public Lcom/android/mail/browse/ConversationItemViewCoordinates;
.super Ljava/lang/Object;
.source "ConversationItemViewCoordinates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;,
        Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;
    }
.end annotation


# static fields
.field private static COLOR_BLOCK_HEIGHT:I

.field private static COLOR_BLOCK_WIDTH:I


# instance fields
.field public final attachmentPreviewsDecodeHeight:I

.field final attachmentPreviewsHeight:I

.field final attachmentPreviewsWidth:I

.field public final attachmentPreviewsX:I

.field public final attachmentPreviewsY:I

.field final colorBlockHeight:I

.field final colorBlockWidth:I

.field final colorBlockX:I

.field final colorBlockY:I

.field final contactImagesHeight:I

.field final contactImagesWidth:I

.field final contactImagesX:I

.field final contactImagesY:I

.field final dateFontSize:F

.field final datePaddingLeft:I

.field final dateXEnd:I

.field final dateY:I

.field final dateYBaseline:I

.field final foldersFontSize:F

.field final foldersHeight:I

.field final foldersTextBottomPadding:I

.field final foldersTypeface:Landroid/graphics/Typeface;

.field final foldersX:I

.field final foldersXEnd:I

.field final foldersY:I

.field final height:I

.field final infoIconXEnd:I

.field final infoIconY:I

.field private final mFolderCellWidth:I

.field private final mFolderMinimumWidth:I

.field private final mMinListWidthForWide:I

.field private final mMinListWidthIsSpacious:I

.field private final mMode:I

.field public final overflowDiameter:I

.field public final overflowFontSize:F

.field public final overflowTypeface:Landroid/graphics/Typeface;

.field public final overflowXEnd:I

.field public final overflowYEnd:I

.field final paperclipPaddingLeft:I

.field final paperclipY:I

.field final personalIndicatorX:I

.field final personalIndicatorY:I

.field public final placeholderHeight:I

.field public final placeholderWidth:I

.field final placeholderY:I

.field public final progressBarHeight:I

.field public final progressBarWidth:I

.field final progressBarY:I

.field final replyStateX:I

.field final replyStateY:I

.field final sendersFontSize:F

.field final sendersHeight:I

.field final sendersLineCount:I

.field final sendersLineHeight:I

.field final sendersWidth:I

.field final sendersX:I

.field final sendersY:I

.field final starWidth:I

.field final starX:I

.field final starY:I

.field final subjectFontSize:F

.field final subjectHeight:I

.field final subjectLineCount:I

.field final subjectWidth:I

.field final subjectX:I

.field final subjectY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 66
    #v0=(Byte);
    sput v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->COLOR_BLOCK_WIDTH:I

    .line 67
    sput v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->COLOR_BLOCK_HEIGHT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;)V
    .locals 34
    .parameter "context"
    .parameter "config"
    .parameter "cache"

    .prologue
    .line 294
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 295
    #p0=(Reference);
    const-string v30, "CIV coordinates constructor"

    #v30=(Reference);
    invoke-static/range {v30 .. v30}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 297
    .local v22, res:Landroid/content/res/Resources;
    #v22=(Reference);
    const v30, 0x7f090018

    #v30=(Integer);
    move-object/from16 v0, v22

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->mFolderCellWidth:I

    .line 298
    const v30, 0x7f09000c

    move-object/from16 v0, v22

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->mMinListWidthForWide:I

    .line 299
    const v30, 0x7f09000d

    move-object/from16 v0, v22

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->mMinListWidthIsSpacious:I

    .line 301
    const v30, 0x7f090063

    move-object/from16 v0, v22

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->mFolderMinimumWidth:I

    .line 303
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, v22

    move-object/from16 v2, p2

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->calculateMode(Landroid/content/res/Resources;Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;)I

    move-result v30

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->mMode:I

    .line 306
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->mMode:I

    #v0=(Integer);
    move/from16 v30, v0

    if-nez v30, :cond_2

    .line 307
    const v13, 0x7f040029

    .line 316
    .local v13, layoutId:I
    :goto_0
    #v1=(Conflicted);v13=(Integer);v31=(Conflicted);
    move-object/from16 v0, p3

    #v0=(Reference);
    invoke-virtual {v0, v13}, Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->getView(I)Landroid/view/View;

    move-result-object v28

    #v28=(Reference);
    check-cast v28, Landroid/view/ViewGroup;

    .line 317
    .local v28, view:Landroid/view/ViewGroup;
    if-nez v28, :cond_0

    .line 318
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v30

    #v30=(Reference);
    const/16 v31, 0x0

    #v31=(Null);
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    #v1=(Null);
    invoke-virtual {v0, v13, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .end local v28           #view:Landroid/view/ViewGroup;
    check-cast v28, Landroid/view/ViewGroup;

    .line 319
    .restart local v28       #view:Landroid/view/ViewGroup;
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    #v1=(Reference);
    invoke-virtual {v0, v13, v1}, Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->put(ILandroid/view/View;)V

    .line 324
    :cond_0
    #v1=(Conflicted);v30=(Conflicted);v31=(Conflicted);
    const v30, 0x7f08009b

    #v30=(Integer);
    move-object/from16 v0, v28

    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 325
    .local v5, attachmentPreviews:Landroid/view/View;
    #v5=(Reference);
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->getAttachmentPreviewMode()I

    move-result v30

    if-eqz v30, :cond_4

    .line 326
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 327
    .local v17, params:Landroid/view/ViewGroup$LayoutParams;
    #v17=(Reference);
    const/16 v30, 0x0

    #v30=(Null);
    move/from16 v0, v30

    #v0=(Null);
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->getAttachmentPreviewMode()I

    move-result v30

    #v30=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, p1

    #v1=(Reference);
    move/from16 v2, v30

    #v2=(Integer);
    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getAttachmentPreviewsHeight(Landroid/content/Context;I)I

    move-result v30

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    move-object/from16 v0, v17

    #v0=(Reference);
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    .end local v17           #params:Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v17=(Conflicted);
    const/16 v30, 0x1

    #v30=(One);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, p1

    #v1=(Reference);
    move/from16 v2, v30

    #v2=(One);
    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getAttachmentPreviewsHeight(Landroid/content/Context;I)I

    move-result v30

    #v30=(Integer);
    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsDecodeHeight:I

    .line 336
    const v30, 0x7f0800a7

    move-object/from16 v0, v28

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    #v10=(Reference);
    check-cast v10, Landroid/widget/TextView;

    .line 337
    .local v10, folders:Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->areFoldersVisible()Z

    move-result v30

    #v30=(Boolean);
    if-eqz v30, :cond_5

    const/16 v30, 0x0

    :goto_2
    #v30=(PosByte);
    move/from16 v0, v30

    #v0=(PosByte);
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    const v30, 0x7f0800a6

    #v30=(Integer);
    move-object/from16 v0, v28

    #v0=(Reference);
    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 342
    .local v6, attachmentPreviewsBottomMargin:Landroid/view/View;
    #v6=(Reference);
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->getAttachmentPreviewMode()I

    move-result v30

    if-eqz v30, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->areFoldersVisible()Z

    move-result v30

    #v30=(Boolean);
    if-eqz v30, :cond_6

    const/4 v14, 0x1

    .line 344
    .local v14, marginVisible:Z
    :goto_3
    #v14=(Boolean);v30=(Integer);
    if-eqz v14, :cond_7

    const/16 v30, 0x0

    :goto_4
    #v30=(PosByte);
    move/from16 v0, v30

    #v0=(PosByte);
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 346
    const v30, 0x7f080016

    #v30=(Integer);
    move-object/from16 v0, v28

    #v0=(Reference);
    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 348
    .local v8, contactImagesView:Landroid/view/View;
    #v8=(Reference);
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->getGadgetMode()I

    move-result v30

    packed-switch v30, :pswitch_data_0

    .line 357
    const/16 v30, 0x8

    #v30=(PosByte);
    move/from16 v0, v30

    #v0=(PosByte);
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 358
    const/4 v8, 0x0

    .line 362
    :goto_5
    const v30, 0x7f080014

    #v30=(Integer);
    move-object/from16 v0, v28

    #v0=(Reference);
    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 363
    .local v21, replyState:Landroid/view/View;
    #v21=(Reference);
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->isReplyStateVisible()Z

    move-result v30

    #v30=(Boolean);
    if-eqz v30, :cond_8

    const/16 v30, 0x0

    :goto_6
    #v30=(PosByte);
    move-object/from16 v0, v21

    move/from16 v1, v30

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    const v30, 0x7f0800a0

    #v30=(Integer);
    move-object/from16 v0, v28

    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 366
    .local v18, personalIndicator:Landroid/view/View;
    #v18=(Reference);
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->isPersonalIndicatorVisible()Z

    move-result v30

    #v30=(Boolean);
    if-eqz v30, :cond_9

    const/16 v30, 0x0

    :goto_7
    #v30=(PosByte);
    move-object/from16 v0, v18

    move/from16 v1, v30

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->getWidth()I

    move-result v30

    #v30=(Integer);
    const/high16 v31, 0x4000

    #v31=(Integer);
    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 371
    .local v29, widthSpec:I
    #v29=(Integer);
    const/16 v30, 0x0

    #v30=(Null);
    const/16 v31, 0x0

    #v31=(Null);
    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 373
    .local v11, heightSpec:I
    #v11=(Integer);
    move-object/from16 v0, v28

    move/from16 v1, v29

    #v1=(Integer);
    invoke-virtual {v0, v1, v11}, Landroid/view/ViewGroup;->measure(II)V

    .line 374
    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v32

    #v32=(Integer);
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v33

    #v33=(Integer);
    move-object/from16 v0, v28

    move/from16 v1, v30

    #v1=(Null);
    move/from16 v2, v31

    #v2=(Null);
    move/from16 v3, v32

    #v3=(Integer);
    move/from16 v4, v33

    #v4=(Integer);
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 381
    if-eqz v8, :cond_a

    .line 382
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v30

    #v30=(Integer);
    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    .line 383
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesHeight:I

    .line 384
    invoke-static {v8}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    .line 385
    invoke-static {v8}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesY:I

    .line 390
    :goto_8
    const v30, 0x7f0800a5

    move-object/from16 v0, v28

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 391
    .local v25, star:Landroid/view/View;
    #v25=(Reference);
    invoke-static/range {v25 .. v25}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v30

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->starX:I

    .line 392
    invoke-static/range {v25 .. v25}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->starY:I

    .line 393
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->starWidth:I

    .line 395
    const v30, 0x7f0800a1

    move-object/from16 v0, v28

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    #v23=(Reference);
    check-cast v23, Landroid/widget/TextView;

    .line 396
    .local v23, senders:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getLatinTopAdjustment(Landroid/widget/TextView;)I

    move-result v24

    .line 397
    .local v24, sendersTopAdjust:I
    #v24=(Integer);
    invoke-static/range {v23 .. v23}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v30

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->sendersX:I

    .line 398
    invoke-static/range {v23 .. v23}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    add-int v30, v30, v24

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->sendersY:I

    .line 399
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getWidth()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->sendersWidth:I

    .line 400
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getHeight()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->sendersHeight:I

    .line 401
    invoke-static/range {v23 .. v23}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getLineCount(Landroid/widget/TextView;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->sendersLineCount:I

    .line 402
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getLineHeight()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->sendersLineHeight:I

    .line 403
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getTextSize()F

    move-result v30

    #v30=(Float);
    move/from16 v0, v30

    #v0=(Float);
    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->sendersFontSize:F

    .line 405
    const v30, 0x7f08008a

    #v30=(Integer);
    move-object/from16 v0, v28

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v26

    #v26=(Reference);
    check-cast v26, Landroid/widget/TextView;

    .line 406
    .local v26, subject:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getLatinTopAdjustment(Landroid/widget/TextView;)I

    move-result v27

    .line 407
    .local v27, subjectTopAdjust:I
    #v27=(Integer);
    invoke-static/range {v26 .. v26}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v30

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->subjectX:I

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->isWide()Z

    move-result v30

    #v30=(Boolean);
    if-eqz v30, :cond_b

    .line 409
    invoke-static/range {v26 .. v26}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    #v30=(Integer);
    add-int v30, v30, v27

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->subjectY:I

    .line 413
    :goto_9
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getWidth()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->subjectWidth:I

    .line 414
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getHeight()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->subjectHeight:I

    .line 415
    invoke-static/range {v26 .. v26}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getLineCount(Landroid/widget/TextView;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->subjectLineCount:I

    .line 416
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getTextSize()F

    move-result v30

    #v30=(Float);
    move/from16 v0, v30

    #v0=(Float);
    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->subjectFontSize:F

    .line 418
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->areFoldersVisible()Z

    move-result v30

    #v30=(Boolean);
    if-eqz v30, :cond_d

    .line 420
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->subjectX:I

    #v0=(Integer);
    move/from16 v30, v0

    #v30=(Integer);
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersX:I

    .line 421
    invoke-static {v10}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v30

    invoke-virtual {v10}, Landroid/widget/TextView;->getWidth()I

    move-result v31

    #v31=(Integer);
    add-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersXEnd:I

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->isWide()Z

    move-result v30

    #v30=(Boolean);
    if-eqz v30, :cond_c

    .line 423
    invoke-static {v10}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    #v30=(Integer);
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersY:I

    .line 427
    :goto_a
    invoke-virtual {v10}, Landroid/widget/TextView;->getHeight()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersHeight:I

    .line 428
    invoke-virtual {v10}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v30

    #v30=(Reference);
    move-object/from16 v0, v30

    #v0=(Reference);
    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersTypeface:Landroid/graphics/Typeface;

    .line 429
    const v30, 0x7f09000f

    #v30=(Integer);
    move-object/from16 v0, v22

    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersTextBottomPadding:I

    .line 431
    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v30

    #v30=(Float);
    move/from16 v0, v30

    #v0=(Float);
    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersFontSize:F

    .line 442
    :goto_b
    const v30, 0x7f080076

    #v30=(Integer);
    move-object/from16 v0, v28

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 443
    .local v7, colorBlock:Landroid/view/View;
    #v7=(Reference);
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->isColorBlockVisible()Z

    move-result v30

    #v30=(Boolean);
    if-eqz v30, :cond_e

    if-eqz v7, :cond_e

    .line 444
    invoke-static {v7}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v30

    #v30=(Integer);
    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->colorBlockX:I

    .line 445
    invoke-static {v7}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->colorBlockY:I

    .line 446
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->colorBlockWidth:I

    .line 447
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->colorBlockHeight:I

    .line 452
    :goto_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->isReplyStateVisible()Z

    move-result v30

    #v30=(Boolean);
    if-eqz v30, :cond_f

    .line 453
    invoke-static/range {v21 .. v21}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v30

    #v30=(Integer);
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->replyStateX:I

    .line 454
    invoke-static/range {v21 .. v21}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->replyStateY:I

    .line 459
    :goto_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->isPersonalIndicatorVisible()Z

    move-result v30

    #v30=(Boolean);
    if-eqz v30, :cond_10

    .line 460
    invoke-static/range {v18 .. v18}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v30

    #v30=(Integer);
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->personalIndicatorX:I

    .line 461
    invoke-static/range {v18 .. v18}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->personalIndicatorY:I

    .line 466
    :goto_e
    const v30, 0x7f0800a2

    move-object/from16 v0, v28

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 467
    .local v12, infoIcon:Landroid/view/View;
    #v12=(Reference);
    invoke-static {v12}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v30

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->infoIconXEnd:I

    .line 468
    invoke-static {v12}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->infoIconY:I

    .line 470
    const v30, 0x7f0800a3

    move-object/from16 v0, v28

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Landroid/widget/TextView;

    .line 471
    .local v9, date:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v30

    invoke-virtual {v9}, Landroid/widget/TextView;->getWidth()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->dateXEnd:I

    .line 472
    invoke-static {v9}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->dateY:I

    .line 473
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->datePaddingLeft:I

    .line 474
    invoke-virtual {v9}, Landroid/widget/TextView;->getTextSize()F

    move-result v30

    #v30=(Float);
    move/from16 v0, v30

    #v0=(Float);
    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->dateFontSize:F

    .line 475
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->dateY:I

    #v0=(Integer);
    move/from16 v30, v0

    #v30=(Integer);
    invoke-static {v9}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getLatinTopAdjustment(Landroid/widget/TextView;)I

    move-result v31

    add-int v30, v30, v31

    invoke-virtual {v9}, Landroid/widget/TextView;->getBaseline()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->dateYBaseline:I

    .line 477
    const v30, 0x7f0800a4

    move-object/from16 v0, v28

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 478
    .local v16, paperclip:Landroid/view/View;
    #v16=(Reference);
    invoke-static/range {v16 .. v16}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->paperclipY:I

    .line 479
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getPaddingLeft()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->paperclipPaddingLeft:I

    .line 481
    if-eqz v5, :cond_11

    .line 482
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->subjectX:I

    #v0=(Integer);
    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsX:I

    .line 483
    invoke-static {v5}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    add-int v30, v30, v24

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    .line 484
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->subjectWidth:I

    #v0=(Integer);
    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsWidth:I

    .line 485
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    .line 488
    const v30, 0x7f08009c

    move-object/from16 v0, v28

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    #v15=(Reference);
    check-cast v15, Landroid/widget/TextView;

    .line 489
    .local v15, overflow:Landroid/widget/TextView;
    invoke-virtual {v15}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    #v17=(Reference);
    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .line 491
    .local v17, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsX:I

    #v0=(Integer);
    move/from16 v30, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsWidth:I

    #v0=(Integer);
    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #v0=(Integer);
    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowXEnd:I

    .line 492
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    #v0=(Integer);
    move/from16 v30, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    #v0=(Integer);
    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v17

    #v0=(Reference);
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #v0=(Integer);
    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowYEnd:I

    .line 493
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowDiameter:I

    .line 494
    invoke-virtual {v15}, Landroid/widget/TextView;->getTextSize()F

    move-result v30

    #v30=(Float);
    move/from16 v0, v30

    #v0=(Float);
    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowFontSize:F

    .line 495
    invoke-virtual {v15}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v30

    #v30=(Reference);
    move-object/from16 v0, v30

    #v0=(Reference);
    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowTypeface:Landroid/graphics/Typeface;

    .line 497
    const v30, 0x7f08009d

    #v30=(Integer);
    move-object/from16 v0, v28

    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 498
    .local v19, placeholder:Landroid/view/View;
    #v19=(Reference);
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v30

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->placeholderWidth:I

    .line 499
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->placeholderHeight:I

    .line 500
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    #v0=(Integer);
    move/from16 v30, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    #v0=(Integer);
    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->placeholderHeight:I

    #v0=(Integer);
    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->placeholderY:I

    .line 503
    const v30, 0x7f08009e

    move-object/from16 v0, v28

    #v0=(Reference);
    move/from16 v1, v30

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 504
    .local v20, progressBar:Landroid/view/View;
    #v20=(Reference);
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v30

    move/from16 v0, v30

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->progressBarWidth:I

    .line 505
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->progressBarHeight:I

    .line 506
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    #v0=(Integer);
    move/from16 v30, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    #v0=(Integer);
    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->progressBarHeight:I

    #v0=(Integer);
    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->progressBarY:I

    .line 526
    .end local v15           #overflow:Landroid/widget/TextView;
    .end local v17           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v19           #placeholder:Landroid/view/View;
    .end local v20           #progressBar:Landroid/view/View;
    :goto_f
    #v15=(Conflicted);v17=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getHeight()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->isWide()Z

    move-result v31

    #v31=(Boolean);
    if-eqz v31, :cond_1

    const/16 v24, 0x0

    .end local v24           #sendersTopAdjust:I
    :cond_1
    add-int v30, v30, v24

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->height:I

    .line 527
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 528
    return-void

    .line 309
    .end local v5           #attachmentPreviews:Landroid/view/View;
    .end local v6           #attachmentPreviewsBottomMargin:Landroid/view/View;
    .end local v7           #colorBlock:Landroid/view/View;
    .end local v8           #contactImagesView:Landroid/view/View;
    .end local v9           #date:Landroid/widget/TextView;
    .end local v10           #folders:Landroid/widget/TextView;
    .end local v11           #heightSpec:I
    .end local v12           #infoIcon:Landroid/view/View;
    .end local v13           #layoutId:I
    .end local v14           #marginVisible:Z
    .end local v16           #paperclip:Landroid/view/View;
    .end local v18           #personalIndicator:Landroid/view/View;
    .end local v21           #replyState:Landroid/view/View;
    .end local v23           #senders:Landroid/widget/TextView;
    .end local v25           #star:Landroid/view/View;
    .end local v26           #subject:Landroid/widget/TextView;
    .end local v27           #subjectTopAdjust:I
    .end local v28           #view:Landroid/view/ViewGroup;
    .end local v29           #widthSpec:I
    :cond_2
    #v2=(Reference);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);v31=(Uninit);v32=(Uninit);v33=(Uninit);
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->mMinListWidthIsSpacious:I

    #v0=(Integer);
    move/from16 v31, v0

    #v31=(Integer);
    move/from16 v0, v30

    move/from16 v1, v31

    #v1=(Integer);
    if-lt v0, v1, :cond_3

    .line 310
    const v13, 0x7f040028

    .restart local v13       #layoutId:I
    #v13=(Integer);
    goto/16 :goto_0

    .line 312
    .end local v13           #layoutId:I
    :cond_3
    #v13=(Uninit);
    const v13, 0x7f040027

    .restart local v13       #layoutId:I
    #v13=(Integer);
    goto/16 :goto_0

    .line 331
    .restart local v5       #attachmentPreviews:Landroid/view/View;
    .restart local v28       #view:Landroid/view/ViewGroup;
    :cond_4
    #v0=(Reference);v5=(Reference);v28=(Reference);v31=(Conflicted);
    const/16 v30, 0x8

    #v30=(PosByte);
    move/from16 v0, v30

    #v0=(PosByte);
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 337
    .restart local v10       #folders:Landroid/widget/TextView;
    :cond_5
    #v0=(Reference);v2=(One);v10=(Reference);v17=(Conflicted);v30=(Boolean);
    const/16 v30, 0x8

    #v30=(PosByte);
    goto/16 :goto_2

    .line 342
    .restart local v6       #attachmentPreviewsBottomMargin:Landroid/view/View;
    :cond_6
    #v6=(Reference);v30=(Integer);
    const/4 v14, 0x0

    #v14=(Null);
    goto/16 :goto_3

    .line 344
    .restart local v14       #marginVisible:Z
    :cond_7
    #v14=(Boolean);
    const/16 v30, 0x8

    #v30=(PosByte);
    goto/16 :goto_4

    .line 350
    .restart local v8       #contactImagesView:Landroid/view/View;
    :pswitch_0
    #v8=(Reference);v30=(Integer);
    const/16 v30, 0x0

    #v30=(Null);
    move/from16 v0, v30

    #v0=(Null);
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 353
    :pswitch_1
    #v0=(Reference);v30=(Integer);
    const/16 v30, 0x8

    #v30=(PosByte);
    move/from16 v0, v30

    #v0=(PosByte);
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 354
    const/4 v8, 0x0

    .line 355
    #v8=(Null);
    goto/16 :goto_5

    .line 363
    .restart local v21       #replyState:Landroid/view/View;
    :cond_8
    #v0=(Reference);v8=(Reference);v21=(Reference);v30=(Boolean);
    const/16 v30, 0x8

    #v30=(PosByte);
    goto/16 :goto_6

    .line 366
    .restart local v18       #personalIndicator:Landroid/view/View;
    :cond_9
    #v18=(Reference);v30=(Boolean);
    const/16 v30, 0x8

    #v30=(PosByte);
    goto/16 :goto_7

    .line 387
    .restart local v11       #heightSpec:I
    .restart local v29       #widthSpec:I
    :cond_a
    #v1=(Null);v2=(Null);v3=(Integer);v4=(Integer);v11=(Integer);v29=(Integer);v30=(Null);v31=(Null);v32=(Integer);v33=(Integer);
    const/16 v30, 0x0

    move/from16 v0, v30

    #v0=(Null);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesHeight:I

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesY:I

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    goto/16 :goto_8

    .line 411
    .restart local v23       #senders:Landroid/widget/TextView;
    .restart local v24       #sendersTopAdjust:I
    .restart local v25       #star:Landroid/view/View;
    .restart local v26       #subject:Landroid/widget/TextView;
    .restart local v27       #subjectTopAdjust:I
    :cond_b
    #v0=(Integer);v23=(Reference);v24=(Integer);v25=(Reference);v26=(Reference);v27=(Integer);v30=(Boolean);
    invoke-static/range {v26 .. v26}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    #v30=(Integer);
    add-int v30, v30, v24

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->subjectY:I

    goto/16 :goto_9

    .line 425
    :cond_c
    #v30=(Boolean);v31=(Integer);
    invoke-static {v10}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v30

    #v30=(Integer);
    add-int v30, v30, v24

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersY:I

    goto/16 :goto_a

    .line 433
    :cond_d
    #v0=(Float);v30=(Boolean);v31=(Null);
    const/16 v30, 0x0

    #v30=(Null);
    move/from16 v0, v30

    #v0=(Null);
    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersX:I

    .line 434
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersXEnd:I

    .line 435
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersY:I

    .line 436
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersHeight:I

    .line 437
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersTypeface:Landroid/graphics/Typeface;

    .line 438
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersTextBottomPadding:I

    .line 439
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->foldersFontSize:F

    goto/16 :goto_b

    .line 449
    .restart local v7       #colorBlock:Landroid/view/View;
    :cond_e
    #v0=(Reference);v1=(Integer);v7=(Reference);v30=(Boolean);v31=(Integer);
    const/16 v30, 0x0

    #v30=(Null);
    move/from16 v0, v30

    #v0=(Null);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->colorBlockHeight:I

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->colorBlockWidth:I

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->colorBlockY:I

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->colorBlockX:I

    goto/16 :goto_c

    .line 456
    :cond_f
    #v0=(Integer);v30=(Boolean);
    const/16 v30, 0x0

    #v30=(Null);
    move/from16 v0, v30

    #v0=(Null);
    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->replyStateY:I

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->replyStateX:I

    goto/16 :goto_d

    .line 463
    :cond_10
    #v0=(Integer);v30=(Boolean);
    const/16 v30, 0x0

    #v30=(Null);
    move/from16 v0, v30

    #v0=(Null);
    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->personalIndicatorY:I

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->personalIndicatorX:I

    goto/16 :goto_e

    .line 509
    .restart local v9       #date:Landroid/widget/TextView;
    .restart local v12       #infoIcon:Landroid/view/View;
    .restart local v16       #paperclip:Landroid/view/View;
    :cond_11
    #v0=(Integer);v9=(Reference);v12=(Reference);v16=(Reference);v30=(Integer);
    const/16 v30, 0x0

    #v30=(Null);
    move/from16 v0, v30

    #v0=(Null);
    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsX:I

    .line 510
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    .line 511
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsWidth:I

    .line 512
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    .line 513
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowXEnd:I

    .line 514
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowYEnd:I

    .line 515
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowDiameter:I

    .line 516
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowFontSize:F

    .line 517
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowTypeface:Landroid/graphics/Typeface;

    .line 518
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->placeholderY:I

    .line 519
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->placeholderWidth:I

    .line 520
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->placeholderHeight:I

    .line 521
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->progressBarY:I

    .line 522
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->progressBarWidth:I

    .line 523
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->progressBarHeight:I

    goto/16 :goto_f

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private calculateMode(Landroid/content/res/Resources;Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;)I
    .locals 2
    .parameter "res"
    .parameter "config"

    .prologue
    .line 556
    invoke-virtual {p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->getViewMode()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 564
    const v0, 0x7f0e0011

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    #v1=(Conflicted);
    return v0

    .line 558
    :pswitch_0
    #v1=(Uninit);
    invoke-virtual {p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->mMinListWidthForWide:I

    #v1=(Integer);
    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 561
    :pswitch_1
    #v0=(Integer);v1=(Uninit);
    const v0, 0x7f0e0012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 556
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static forConfig(Landroid/content/Context;Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;)Lcom/android/mail/browse/ConversationItemViewCoordinates;
    .locals 3
    .parameter "context"
    .parameter "config"
    .parameter "cache"

    .prologue
    .line 664
    invoke-static {p1}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->access$000(Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;)I

    move-result v0

    .line 665
    .local v0, cacheKey:I
    #v0=(Integer);
    invoke-virtual {p2, v0}, Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->getCoordinates(I)Lcom/android/mail/browse/ConversationItemViewCoordinates;

    move-result-object v1

    .line 666
    .local v1, coordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;
    #v1=(Reference);
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 672
    .end local v1           #coordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;
    .local v2, coordinates:Ljava/lang/Object;
    :goto_0
    #v2=(Reference);
    return-object v2

    .line 670
    .end local v2           #coordinates:Ljava/lang/Object;
    .restart local v1       #coordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;
    :cond_0
    #v2=(Uninit);
    new-instance v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;

    .end local v1           #coordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;
    #v1=(UninitRef);
    invoke-direct {v1, p0, p1, p2}, Lcom/android/mail/browse/ConversationItemViewCoordinates;-><init>(Landroid/content/Context;Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;)V

    .line 671
    .restart local v1       #coordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;
    #v1=(Reference);
    invoke-virtual {p2, v0, v1}, Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->put(ILcom/android/mail/browse/ConversationItemViewCoordinates;)V

    move-object v2, v1

    .line 672
    .restart local v2       #coordinates:Ljava/lang/Object;
    #v2=(Reference);
    goto :goto_0
.end method

.method private getAttachmentPreviewsHeight(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "attachmentPreviewMode"

    .prologue
    .line 570
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 571
    .local v0, res:Landroid/content/res/Resources;
    #v0=(Reference);
    packed-switch p2, :pswitch_data_0

    .line 578
    const/4 v1, 0x0

    :goto_0
    #v1=(Integer);
    return v1

    .line 573
    :pswitch_0
    #v1=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationItemViewCoordinates;->isWide()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const v1, 0x7f090059

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_1
    #v1=(Float);
    float-to-int v1, v1

    #v1=(Integer);
    goto :goto_0

    :cond_0
    #v1=(Boolean);
    const v1, 0x7f090058

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    #v1=(Float);
    goto :goto_1

    .line 576
    :pswitch_1
    #v1=(Uninit);
    const v1, 0x7f09005a

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    #v1=(Float);
    float-to-int v1, v1

    #v1=(Integer);
    goto :goto_0

    .line 571
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getLatinTopAdjustment(Landroid/widget/TextView;)I
    .locals 3
    .parameter "t"

    .prologue
    .line 548
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 549
    .local v0, fmi:Landroid/graphics/Paint$FontMetricsInt;
    #v0=(Reference);
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #v1=(Integer);
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #v2=(Integer);
    sub-int/2addr v1, v2

    return v1
.end method

.method private static getLineCount(Landroid/widget/TextView;)I
    .locals 2
    .parameter "textView"

    .prologue
    .line 610
    invoke-static {}, Lcom/android/mail/utils/Utils;->isRunningJellybeanOrLater()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    .line 613
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    return v0

    :cond_0
    #v0=(Boolean);v1=(Uninit);
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method public static getSendersLength(Landroid/content/Context;IZ)I
    .locals 2
    .parameter "context"
    .parameter "mode"
    .parameter "hasAttachments"

    .prologue
    .line 621
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 622
    .local v0, res:Landroid/content/res/Resources;
    #v0=(Reference);
    if-eqz p2, :cond_0

    .line 623
    const v1, 0x7f0f0001

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    #v1=(Reference);
    aget v1, v1, p1

    .line 625
    :goto_0
    #v1=(Integer);
    return v1

    :cond_0
    #v1=(Uninit);
    const v1, 0x7f0f0002

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    #v1=(Reference);
    aget v1, v1, p1

    #v1=(Integer);
    goto :goto_0
.end method

.method private static getX(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, x:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-eqz p0, :cond_0

    .line 588
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    #v1=(Float);
    float-to-int v1, v1

    #v1=(Integer);
    add-int/2addr v0, v1

    .line 589
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    .restart local p0
    goto :goto_0

    .line 591
    :cond_0
    #v1=(Conflicted);
    return v0
.end method

.method private static getY(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, y:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-eqz p0, :cond_0

    .line 600
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    #v1=(Float);
    float-to-int v1, v1

    #v1=(Integer);
    add-int/2addr v0, v1

    .line 601
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    .restart local p0
    goto :goto_0

    .line 603
    :cond_0
    #v1=(Conflicted);
    return v0
.end method


# virtual methods
.method public getFolderCellWidth()I
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->mFolderCellWidth:I

    #v0=(Integer);
    return v0
.end method

.method public getFolderMinimumWidth()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->mFolderMinimumWidth:I

    #v0=(Integer);
    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->mMode:I

    #v0=(Integer);
    return v0
.end method

.method public isWide()Z
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates;->mMode:I

    #v0=(Integer);
    if-nez v0, :cond_0

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
