.class public Lcom/android/mail/ui/DividedImageCanvas;
.super Ljava/lang/Object;
.source "DividedImageCanvas.java"

# interfaces
.implements Lcom/android/mail/ui/ImageCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/DividedImageCanvas$InvalidateCallback;
    }
.end annotation


# static fields
.field private static final sClearPaint:Landroid/graphics/Paint;

.field private static final sDest:Landroid/graphics/Rect;

.field private static sDividerColor:I

.field private static sDividerLineWidth:I

.field private static final sPaint:Landroid/graphics/Paint;

.field private static final sSrc:Landroid/graphics/Rect;


# instance fields
.field private mBitmapValid:Z

.field private final mCallback:Lcom/android/mail/ui/DividedImageCanvas$InvalidateCallback;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mContext:Landroid/content/Context;

.field private mDividedBitmap:Landroid/graphics/Bitmap;

.field private final mDivisionImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mDivisionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneration:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/graphics/Paint;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/DividedImageCanvas;->sPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/DividedImageCanvas;->sClearPaint:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/DividedImageCanvas;->sSrc:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/DividedImageCanvas;->sDest:Landroid/graphics/Rect;

    .line 75
    const/4 v0, -0x1

    #v0=(Byte);
    sput v0, Lcom/android/mail/ui/DividedImageCanvas;->sDividerLineWidth:I

    .line 79
    sget-object v0, Lcom/android/mail/ui/DividedImageCanvas;->sClearPaint:Landroid/graphics/Paint;

    #v0=(Reference);
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    #v1=(UninitRef);
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #v2=(Reference);
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mail/ui/DividedImageCanvas$InvalidateCallback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v1, 0x4

    .line 82
    #v1=(PosByte);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    #p0=(Reference);
    invoke-static {v1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mBitmapValid:Z

    .line 83
    iput-object p1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/mail/ui/DividedImageCanvas;->mCallback:Lcom/android/mail/ui/DividedImageCanvas$InvalidateCallback;

    .line 85
    invoke-direct {p0}, Lcom/android/mail/ui/DividedImageCanvas;->setupDividerLines()V

    .line 86
    return-void
.end method

.method private addOrClearDivisionImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 17
    .parameter "b"
    .parameter "key"

    .prologue
    .line 242
    const-string v2, "add or clear division image"

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/DividedImageCanvas;->transformKeyToDivisionId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    #v15=(Reference);
    check-cast v15, Ljava/lang/Integer;

    .line 244
    .local v15, pos:Ljava/lang/Integer;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #v2=(Integer);
    if-ltz v2, :cond_3

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #v3=(Integer);
    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    const/4 v14, 0x0

    .line 247
    .local v14, complete:Z
    #v14=(Null);
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/mail/ui/DividedImageCanvas;->mWidth:I

    .line 248
    .local v6, width:I
    #v6=(Integer);
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/mail/ui/DividedImageCanvas;->mHeight:I

    .line 250
    .local v7, height:I
    #v7=(Integer);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v16

    .line 251
    .local v16, size:I
    #v16=(Integer);
    packed-switch v16, :pswitch_data_0

    .line 302
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #v2=(Integer);
    packed-switch v2, :pswitch_data_1

    .line 316
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/ui/DividedImageCanvas;->isPartialBitmapComplete()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_a

    :cond_1
    #v2=(Conflicted);
    const/4 v14, 0x1

    .line 319
    :goto_1
    #v14=(Boolean);
    if-eqz v14, :cond_2

    .line 321
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/mail/ui/DividedImageCanvas;->drawVerticalDivider(II)V

    .line 322
    const/4 v2, 0x0

    #v2=(Null);
    div-int/lit8 v3, v7, 0x2

    #v3=(Integer);
    div-int/lit8 v4, v7, 0x2

    #v4=(Integer);
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v4}, Lcom/android/mail/ui/DividedImageCanvas;->drawHorizontalDivider(IIII)V

    .line 327
    :cond_2
    :goto_2
    :pswitch_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    if-eqz v14, :cond_3

    .line 328
    const/4 v2, 0x1

    #v2=(One);
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mBitmapValid:Z

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mCallback:Lcom/android/mail/ui/DividedImageCanvas$InvalidateCallback;

    #v2=(Reference);
    invoke-interface {v2}, Lcom/android/mail/ui/DividedImageCanvas$InvalidateCallback;->invalidate()V

    .line 332
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v14           #complete:Z
    .end local v16           #size:I
    :cond_3
    #v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v14=(Conflicted);v16=(Conflicted);
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 333
    return-void

    .line 257
    .restart local v6       #width:I
    .restart local v7       #height:I
    .restart local v14       #complete:Z
    .restart local v16       #size:I
    :pswitch_1
    #v2=(Reference);v3=(Integer);v4=(Uninit);v5=(Uninit);v6=(Integer);v7=(Integer);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Null);v16=(Integer);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    .line 258
    const/4 v14, 0x1

    .line 259
    #v14=(One);
    goto :goto_2

    .line 262
    :pswitch_2
    #v3=(Integer);v4=(Uninit);v5=(Uninit);v14=(Null);
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #v2=(Integer);
    packed-switch v2, :pswitch_data_2

    .line 270
    :goto_3
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    #v3=(Boolean);
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/ui/DividedImageCanvas;->isPartialBitmapComplete()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_6

    :cond_5
    #v2=(Conflicted);
    const/4 v14, 0x1

    .line 272
    :goto_4
    #v14=(Boolean);
    if-eqz v14, :cond_2

    .line 274
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/mail/ui/DividedImageCanvas;->drawVerticalDivider(II)V

    goto :goto_2

    .line 264
    :pswitch_3
    #v2=(Integer);v3=(Integer);v4=(Uninit);v5=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Null);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    #v10=(Null);
    const/4 v11, 0x0

    #v11=(Null);
    div-int/lit8 v12, v6, 0x2

    #v12=(Integer);
    move-object/from16 v8, p0

    #v8=(Reference);
    move v13, v7

    #v13=(Integer);
    invoke-direct/range {v8 .. v13}, Lcom/android/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto :goto_3

    .line 267
    :pswitch_4
    #v2=(Integer);v3=(Integer);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/graphics/Bitmap;

    div-int/lit8 v4, v6, 0x2

    #v4=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto :goto_3

    .line 270
    :cond_6
    #v2=(Boolean);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    const/4 v14, 0x0

    goto :goto_4

    .line 281
    :pswitch_5
    #v2=(Reference);v3=(Integer);v4=(Uninit);v5=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #v2=(Integer);
    packed-switch v2, :pswitch_data_3

    .line 292
    :goto_5
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/ui/DividedImageCanvas;->isPartialBitmapComplete()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_9

    :cond_8
    #v2=(Conflicted);
    const/4 v14, 0x1

    .line 294
    :goto_6
    #v14=(Boolean);
    if-eqz v14, :cond_2

    .line 296
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/mail/ui/DividedImageCanvas;->drawVerticalDivider(II)V

    .line 297
    div-int/lit8 v2, v6, 0x2

    #v2=(Integer);
    div-int/lit8 v3, v7, 0x2

    #v3=(Integer);
    div-int/lit8 v4, v7, 0x2

    #v4=(Integer);
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v4}, Lcom/android/mail/ui/DividedImageCanvas;->drawHorizontalDivider(IIII)V

    goto/16 :goto_2

    .line 283
    :pswitch_6
    #v4=(Uninit);v5=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Null);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    #v10=(Null);
    const/4 v11, 0x0

    #v11=(Null);
    div-int/lit8 v12, v6, 0x2

    #v12=(Integer);
    move-object/from16 v8, p0

    #v8=(Reference);
    move v13, v7

    #v13=(Integer);
    invoke-direct/range {v8 .. v13}, Lcom/android/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto :goto_5

    .line 286
    :pswitch_7
    #v2=(Integer);v3=(Integer);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Landroid/graphics/Bitmap;

    div-int/lit8 v10, v6, 0x2

    #v10=(Integer);
    const/4 v11, 0x0

    #v11=(Null);
    div-int/lit8 v13, v7, 0x2

    #v13=(Integer);
    move-object/from16 v8, p0

    #v8=(Reference);
    move v12, v6

    #v12=(Integer);
    invoke-direct/range {v8 .. v13}, Lcom/android/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto :goto_5

    .line 289
    :pswitch_8
    #v2=(Integer);v3=(Integer);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v2=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/graphics/Bitmap;

    div-int/lit8 v4, v6, 0x2

    #v4=(Integer);
    div-int/lit8 v5, v7, 0x2

    #v5=(Integer);
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto :goto_5

    .line 292
    :cond_9
    #v2=(Boolean);v3=(PosByte);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    const/4 v14, 0x0

    goto :goto_6

    .line 304
    :pswitch_9
    #v2=(Integer);v3=(Integer);v4=(Uninit);v5=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    #v10=(Null);
    const/4 v11, 0x0

    #v11=(Null);
    div-int/lit8 v12, v6, 0x2

    #v12=(Integer);
    div-int/lit8 v13, v7, 0x2

    #v13=(Integer);
    move-object/from16 v8, p0

    #v8=(Reference);
    invoke-direct/range {v8 .. v13}, Lcom/android/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_0

    .line 307
    :pswitch_a
    #v2=(Integer);v3=(Integer);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Landroid/graphics/Bitmap;

    div-int/lit8 v10, v6, 0x2

    #v10=(Integer);
    const/4 v11, 0x0

    #v11=(Null);
    div-int/lit8 v13, v7, 0x2

    #v13=(Integer);
    move-object/from16 v8, p0

    #v8=(Reference);
    move v12, v6

    #v12=(Integer);
    invoke-direct/range {v8 .. v13}, Lcom/android/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_0

    .line 310
    :pswitch_b
    #v2=(Integer);v3=(Integer);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v2=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    #v10=(Null);
    div-int/lit8 v11, v7, 0x2

    #v11=(Integer);
    div-int/lit8 v12, v6, 0x2

    #v12=(Integer);
    move-object/from16 v8, p0

    #v8=(Reference);
    move v13, v7

    #v13=(Integer);
    invoke-direct/range {v8 .. v13}, Lcom/android/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_0

    .line 313
    :pswitch_c
    #v2=(Integer);v3=(Integer);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v2=(Reference);
    const/4 v3, 0x3

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/graphics/Bitmap;

    div-int/lit8 v4, v6, 0x2

    #v4=(Integer);
    div-int/lit8 v5, v7, 0x2

    #v5=(Integer);
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_0

    .line 316
    :cond_a
    #v2=(Boolean);v3=(PosByte);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 251
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 302
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 262
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 281
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private draw(Landroid/graphics/Bitmap;IIII)V
    .locals 9
    .parameter "b"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 147
    if-eqz p1, :cond_1

    .line 149
    const/4 v8, 0x0

    .line 150
    .local v8, srcTop:I
    #v8=(Null);
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 151
    .local v7, srcBottom:I
    #v7=(Integer);
    sub-int v6, p5, p3

    .line 152
    .local v6, destHeight:I
    #v6=(Integer);
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    #v0=(Integer);
    sub-int v1, p5, p3

    #v1=(Integer);
    if-le v0, v1, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v6, 0x2

    sub-int v8, v0, v1

    .line 154
    #v8=(Integer);
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v6, 0x2

    add-int v7, v0, v1

    .line 159
    :cond_0
    sget-object v0, Lcom/android/mail/ui/DividedImageCanvas;->sSrc:Landroid/graphics/Rect;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v0, v1, v8, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 160
    sget-object v0, Lcom/android/mail/ui/DividedImageCanvas;->sDest:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Lcom/android/mail/ui/DividedImageCanvas;->sDest:Landroid/graphics/Rect;

    #v1=(Reference);
    sget-object v2, Lcom/android/mail/ui/DividedImageCanvas;->sClearPaint:Landroid/graphics/Paint;

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 162
    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Lcom/android/mail/ui/DividedImageCanvas;->sSrc:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/mail/ui/DividedImageCanvas;->sDest:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/mail/ui/DividedImageCanvas;->sPaint:Landroid/graphics/Paint;

    #v3=(Reference);
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 167
    .end local v6           #destHeight:I
    .end local v7           #srcBottom:I
    .end local v8           #srcTop:I
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 165
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    #v0=(Reference);
    int-to-float v1, p2

    #v1=(Float);
    int-to-float v2, p3

    #v2=(Float);
    int-to-float v3, p4

    #v3=(Float);
    int-to-float v4, p5

    #v4=(Float);
    sget-object v5, Lcom/android/mail/ui/DividedImageCanvas;->sClearPaint:Landroid/graphics/Paint;

    #v5=(Reference);
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private setupDividerLines()V
    .locals 3

    .prologue
    .line 341
    sget v1, Lcom/android/mail/ui/DividedImageCanvas;->sDividerLineWidth:I

    #v1=(Integer);
    const/4 v2, -0x1

    #v2=(Byte);
    if-ne v1, v2, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/mail/ui/DividedImageCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 343
    .local v0, res:Landroid/content/res/Resources;
    #v0=(Reference);
    const v1, 0x7f090057

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/DividedImageCanvas;->sDividerLineWidth:I

    .line 345
    const v1, 0x7f0c002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/DividedImageCanvas;->sDividerColor:I

    .line 347
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method private static setupPaint()V
    .locals 2

    .prologue
    .line 350
    sget-object v0, Lcom/android/mail/ui/DividedImageCanvas;->sPaint:Landroid/graphics/Paint;

    #v0=(Reference);
    sget v1, Lcom/android/mail/ui/DividedImageCanvas;->sDividerLineWidth:I

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 351
    sget-object v0, Lcom/android/mail/ui/DividedImageCanvas;->sPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/mail/ui/DividedImageCanvas;->sDividerColor:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    return-void
.end method


# virtual methods
.method public addDivisionImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 0
    .parameter "b"
    .parameter "key"

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/DividedImageCanvas;->addOrClearDivisionImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 236
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "canvas"
    .parameter "matrix"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDividedBitmap:Landroid/graphics/Bitmap;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mBitmapValid:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDividedBitmap:Landroid/graphics/Bitmap;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 389
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method protected drawHorizontalDivider(IIII)V
    .locals 6
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 361
    invoke-static {}, Lcom/android/mail/ui/DividedImageCanvas;->setupPaint()V

    .line 362
    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    #v0=(Reference);
    int-to-float v1, p1

    #v1=(Float);
    int-to-float v2, p2

    #v2=(Float);
    int-to-float v3, p3

    #v3=(Float);
    int-to-float v4, p4

    #v4=(Float);
    sget-object v5, Lcom/android/mail/ui/DividedImageCanvas;->sPaint:Landroid/graphics/Paint;

    #v5=(Reference);
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 363
    return-void
.end method

.method public drawImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 0
    .parameter "b"
    .parameter "key"

    .prologue
    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/DividedImageCanvas;->addDivisionImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method protected drawVerticalDivider(II)V
    .locals 10
    .parameter "width"
    .parameter "height"

    .prologue
    .line 355
    div-int/lit8 v6, p1, 0x2

    .local v6, x1:I
    #v6=(Integer);
    const/4 v8, 0x0

    .local v8, y1:I
    #v8=(Null);
    div-int/lit8 v7, p1, 0x2

    .local v7, x2:I
    #v7=(Integer);
    move v9, p2

    .line 356
    .local v9, y2:I
    #v9=(Integer);
    invoke-static {}, Lcom/android/mail/ui/DividedImageCanvas;->setupPaint()V

    .line 357
    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    #v0=(Reference);
    int-to-float v1, v6

    #v1=(Float);
    int-to-float v2, v8

    #v2=(Float);
    int-to-float v3, v7

    #v3=(Float);
    int-to-float v4, v9

    #v4=(Float);
    sget-object v5, Lcom/android/mail/ui/DividedImageCanvas;->sPaint:Landroid/graphics/Paint;

    #v5=(Reference);
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 358
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method

.method public getDesiredDimensions(Ljava/lang/Object;Lcom/android/mail/ui/ImageCanvas$Dimensions;)V
    .locals 7
    .parameter "key"
    .parameter "outDim"

    .prologue
    .line 177
    const-string v5, "get desired dimensions"

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 178
    const/4 v4, 0x0

    .local v4, w:I
    #v4=(Null);
    const/4 v0, 0x0

    .line 179
    .local v0, h:I
    #v0=(Null);
    const/4 v2, 0x0

    .line 180
    .local v2, scale:F
    #v2=(Null);
    iget-object v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/mail/ui/DividedImageCanvas;->transformKeyToDivisionId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Integer;

    .line 181
    .local v1, pos:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    #v5=(Integer);
    if-ltz v5, :cond_0

    .line 182
    iget-object v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    #v5=(Reference);
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v3

    .line 183
    .local v3, size:I
    #v3=(Integer);
    packed-switch v3, :pswitch_data_0

    .line 216
    .end local v3           #size:I
    :cond_0
    :goto_0
    :pswitch_0
    #v0=(Integer);v2=(Integer);v3=(Conflicted);v4=(Integer);v5=(Conflicted);
    iput v4, p2, Lcom/android/mail/ui/ImageCanvas$Dimensions;->width:I

    .line 217
    iput v0, p2, Lcom/android/mail/ui/ImageCanvas$Dimensions;->height:I

    .line 218
    iput v2, p2, Lcom/android/mail/ui/ImageCanvas$Dimensions;->scale:F

    .line 219
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 220
    return-void

    .line 187
    .restart local v3       #size:I
    :pswitch_1
    #v0=(Null);v2=(Null);v3=(Integer);v4=(Null);v5=(Reference);
    iget v4, p0, Lcom/android/mail/ui/DividedImageCanvas;->mWidth:I

    .line 188
    #v4=(Integer);
    iget v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mHeight:I

    .line 189
    #v0=(Integer);
    const/high16 v2, 0x3f80

    .line 190
    #v2=(Integer);
    goto :goto_0

    .line 192
    :pswitch_2
    #v0=(Null);v2=(Null);v4=(Null);
    iget v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mWidth:I

    #v5=(Integer);
    div-int/lit8 v4, v5, 0x2

    .line 193
    #v4=(Integer);
    iget v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mHeight:I

    .line 194
    #v0=(Integer);
    const/high16 v2, 0x3f00

    .line 195
    #v2=(Integer);
    goto :goto_0

    .line 197
    :pswitch_3
    #v0=(Null);v2=(Null);v4=(Null);v5=(Reference);
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    #v5=(Integer);
    packed-switch v5, :pswitch_data_1

    .line 204
    iget v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mWidth:I

    div-int/lit8 v4, v5, 0x2

    .line 205
    #v4=(Integer);
    iget v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mHeight:I

    div-int/lit8 v0, v5, 0x2

    .line 206
    #v0=(Integer);
    const/high16 v2, 0x3e80

    .line 208
    #v2=(Integer);
    goto :goto_0

    .line 199
    :pswitch_4
    #v0=(Null);v2=(Null);v4=(Null);
    iget v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mWidth:I

    div-int/lit8 v4, v5, 0x2

    .line 200
    #v4=(Integer);
    iget v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mHeight:I

    .line 201
    #v0=(Integer);
    const/high16 v2, 0x3f00

    .line 202
    #v2=(Integer);
    goto :goto_0

    .line 210
    :pswitch_5
    #v0=(Null);v2=(Null);v4=(Null);v5=(Reference);
    iget v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mWidth:I

    #v5=(Integer);
    div-int/lit8 v4, v5, 0x2

    .line 211
    #v4=(Integer);
    iget v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mHeight:I

    div-int/lit8 v0, v5, 0x2

    .line 212
    #v0=(Integer);
    const/high16 v2, 0x3e80

    #v2=(Integer);
    goto :goto_0

    .line 183
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 197
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public getDivisionCount()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getDivisionIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mGeneration:I

    #v0=(Integer);
    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mHeight:I

    #v0=(Integer);
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mWidth:I

    #v0=(Integer);
    return v0
.end method

.method public hasImageFor(Ljava/lang/Object;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    #v1=(Reference);
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/DividedImageCanvas;->transformKeyToDivisionId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Integer;

    .line 337
    .local v0, pos:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #v1=(Boolean);v2=(Conflicted);
    return v1

    :cond_0
    #v1=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method protected isPartialBitmapComplete()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDividedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mBitmapValid:Z

    .line 396
    :cond_0
    #v0=(Reference);
    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 397
    iget-object v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 398
    iget v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mGeneration:I

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mail/ui/DividedImageCanvas;->mGeneration:I

    .line 399
    return-void
.end method

.method public setDimensions(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 412
    const-string v1, "set dimensions"

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 413
    iget v1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mWidth:I

    #v1=(Integer);
    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mHeight:I

    if-ne v1, p2, :cond_0

    .line 414
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 429
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return-void

    .line 418
    :cond_0
    #v0=(Uninit);v2=(Uninit);
    iput p1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mWidth:I

    .line 419
    iput p2, p0, Lcom/android/mail/ui/DividedImageCanvas;->mHeight:I

    .line 421
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #v1=(Reference);
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDividedBitmap:Landroid/graphics/Bitmap;

    .line 422
    new-instance v1, Landroid/graphics/Canvas;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDividedBitmap:Landroid/graphics/Bitmap;

    #v2=(Reference);
    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    .line 424
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/DividedImageCanvas;->getDivisionCount()I

    move-result v1

    #v1=(Integer);
    if-ge v0, v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_1
    #v1=(Integer);v2=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mBitmapValid:Z

    .line 428
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    goto :goto_0
.end method

.method public setDivisionIds(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    #v5=(Integer);
    const/4 v6, 0x4

    #v6=(PosByte);
    if-le v5, v6, :cond_0

    .line 118
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #v5=(UninitRef);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "too many divisionIds: "

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v5=(Reference);
    throw v5

    .line 121
    :cond_0
    #v5=(Integer);v6=(PosByte);v7=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/ui/DividedImageCanvas;->getDivisionCount()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    #v6=(Integer);
    if-eq v5, v6, :cond_3

    const/4 v4, 0x1

    .line 122
    .local v4, needClear:Z
    :goto_0
    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 123
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v0=(Conflicted);v1=(Integer);
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 124
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {p0, v5}, Lcom/android/mail/ui/DividedImageCanvas;->transformKeyToDivisionId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, divisionId:Ljava/lang/String;
    #v0=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    #v5=(Reference);
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    #v5=(Integer);
    if-eq v5, v1, :cond_4

    .line 127
    :cond_1
    const/4 v4, 0x1

    .line 133
    .end local v0           #divisionId:Ljava/lang/String;
    .end local v1           #i:I
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);
    if-eqz v4, :cond_5

    .line 134
    iget-object v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    #v5=(Reference);
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 135
    iget-object v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 136
    const/4 v1, 0x0

    .line 137
    .restart local v1       #i:I
    #v1=(Null);
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    #v1=(Integer);v2=(Reference);v3=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 138
    .local v3, key:Ljava/lang/Object;
    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/android/mail/ui/DividedImageCanvas;->transformKeyToDivisionId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0       #divisionId:Ljava/lang/String;
    #v0=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    #v5=(Reference);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference);
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v5, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v1, v1, 0x1

    .line 142
    goto :goto_2

    .line 121
    .end local v0           #divisionId:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/Object;
    .end local v4           #needClear:Z
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Integer);v6=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_0

    .line 123
    .restart local v0       #divisionId:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v4       #needClear:Z
    :cond_4
    #v0=(Reference);v1=(Integer);v4=(Boolean);
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    .end local v0           #divisionId:Ljava/lang/String;
    .end local v1           #i:I
    :cond_5
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "{"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, " mDivisionMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, " mDivisionImages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, " mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mWidth:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, " mHeight="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/android/mail/ui/DividedImageCanvas;->mHeight:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "}"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected transformKeyToDivisionId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 370
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
