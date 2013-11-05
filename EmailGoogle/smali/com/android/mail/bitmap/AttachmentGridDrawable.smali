.class public Lcom/android/mail/bitmap/AttachmentGridDrawable;
.super Lcom/android/mail/bitmap/CompositeDrawable;
.source "AttachmentGridDrawable.java"

# interfaces
.implements Lcom/android/mail/bitmap/Parallaxable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/bitmap/CompositeDrawable",
        "<",
        "Lcom/android/mail/bitmap/AttachmentDrawable;",
        ">;",
        "Lcom/android/mail/bitmap/Parallaxable;"
    }
.end annotation


# instance fields
.field private mCache:Lcom/android/bitmap/BitmapCache;

.field private mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

.field private mDecodeAggregator:Lcom/android/bitmap/DecodeAggregator;

.field private final mOverflowBadgeColor:I

.field private mOverflowText:Ljava/lang/String;

.field private final mOverflowTextColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mParallaxFraction:F

.field private final mPlaceholder:Landroid/graphics/drawable/Drawable;

.field private final mProgress:Landroid/graphics/drawable/Drawable;

.field private final mRect:Landroid/graphics/Rect;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "res"
    .parameter "placeholder"
    .parameter "progress"

    .prologue
    .line 39
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-direct {p0, v0}, Lcom/android/mail/bitmap/CompositeDrawable;-><init>(I)V

    .line 28
    #p0=(Reference);
    const/high16 v0, 0x3f00

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mParallaxFraction:F

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mRect:Landroid/graphics/Rect;

    .line 40
    iput-object p1, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mResources:Landroid/content/res/Resources;

    .line 41
    iput-object p2, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object p3, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mProgress:Landroid/graphics/drawable/Drawable;

    .line 43
    const v0, 0x7f0c0011

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mOverflowTextColor:I

    .line 44
    const v0, 0x7f0c0010

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mOverflowBadgeColor:I

    .line 46
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    return-void
.end method

.method private layoutOverflowBadge()V
    .locals 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mOverflowText:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 78
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    #v1=(Reference);
    iget v1, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowFontSize:F

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 80
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 81
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mOverflowText:Ljava/lang/String;

    const/4 v2, 0x0

    #v2=(Null);
    iget-object v3, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mOverflowText:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    #v3=(Integer);
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mRect:Landroid/graphics/Rect;

    #v4=(Reference);
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createDivisionDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/mail/bitmap/AttachmentGridDrawable;->createDivisionDrawable()Lcom/android/mail/bitmap/AttachmentDrawable;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected createDivisionDrawable()Lcom/android/mail/bitmap/AttachmentDrawable;
    .locals 7

    .prologue
    .line 51
    new-instance v0, Lcom/android/mail/bitmap/AttachmentDrawable;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mResources:Landroid/content/res/Resources;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mCache:Lcom/android/bitmap/BitmapCache;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mDecodeAggregator:Lcom/android/bitmap/DecodeAggregator;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mProgress:Landroid/graphics/drawable/Drawable;

    #v6=(Reference);
    invoke-direct/range {v0 .. v6}, Lcom/android/mail/bitmap/AttachmentDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Lcom/android/bitmap/DecodeAggregator;Lcom/android/mail/browse/ConversationItemViewCoordinates;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 53
    .local v0, result:Lcom/android/mail/bitmap/AttachmentDrawable;
    #v0=(Reference);
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x4000

    .line 86
    #v6=(Integer);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v4=(Conflicted);v5=(Conflicted);
    iget v4, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mCount:I

    #v4=(Integer);
    if-ge v0, v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/android/mail/bitmap/CompositeDrawable;->mDrawables:Ljava/util/List;

    #v4=(Reference);
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mail/bitmap/AttachmentDrawable;

    iget v5, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mParallaxFraction:F

    #v5=(Integer);
    invoke-virtual {v4, v5}, Lcom/android/mail/bitmap/AttachmentDrawable;->setParallaxFraction(F)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    #v4=(Integer);v5=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/mail/bitmap/CompositeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mOverflowText:Ljava/lang/String;

    #v4=(Reference);
    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    if-eqz v4, :cond_1

    .line 94
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowDiameter:I

    #v4=(Integer);
    int-to-float v4, v4

    #v4=(Float);
    div-float v1, v4, v6

    .line 96
    .local v1, radius:F
    #v1=(Float);
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    #v4=(Reference);
    iget v4, v4, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowXEnd:I

    #v4=(Integer);
    iget-object v5, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    #v5=(Reference);
    iget v5, v5, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsX:I

    #v5=(Integer);
    sub-int/2addr v4, v5

    int-to-float v4, v4

    #v4=(Float);
    sub-float v2, v4, v1

    .line 97
    .local v2, x:F
    #v2=(Float);
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    #v4=(Reference);
    iget v4, v4, Lcom/android/mail/browse/ConversationItemViewCoordinates;->overflowYEnd:I

    #v4=(Integer);
    iget-object v5, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    #v5=(Reference);
    iget v5, v5, Lcom/android/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    #v5=(Integer);
    sub-int/2addr v4, v5

    int-to-float v4, v4

    #v4=(Float);
    sub-float v3, v4, v1

    .line 99
    .local v3, y:F
    #v3=(Float);
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    #v4=(Reference);
    iget v5, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mOverflowBadgeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 102
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mOverflowTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v4, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mOverflowText:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mRect:Landroid/graphics/Rect;

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    #v5=(Integer);
    int-to-float v5, v5

    #v5=(Float);
    div-float/2addr v5, v6

    add-float/2addr v5, v3

    iget-object v6, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    #v6=(Reference);
    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 105
    .end local v1           #radius:F
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void
.end method

.method public setBitmapCache(Lcom/android/bitmap/BitmapCache;)V
    .locals 0
    .parameter "cache"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mCache:Lcom/android/bitmap/BitmapCache;

    .line 58
    return-void
.end method

.method public setCoordinates(Lcom/android/mail/browse/ConversationItemViewCoordinates;)V
    .locals 0
    .parameter "coordinates"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    .line 71
    invoke-direct {p0}, Lcom/android/mail/bitmap/AttachmentGridDrawable;->layoutOverflowBadge()V

    .line 72
    return-void
.end method

.method public setDecodeAggregator(Lcom/android/bitmap/DecodeAggregator;)V
    .locals 0
    .parameter "decodeAggregator"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mDecodeAggregator:Lcom/android/bitmap/DecodeAggregator;

    .line 62
    return-void
.end method

.method public setOverflowText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mOverflowText:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/android/mail/bitmap/AttachmentGridDrawable;->layoutOverflowBadge()V

    .line 67
    return-void
.end method

.method public setParallaxFraction(F)V
    .locals 0
    .parameter "fraction"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/mail/bitmap/AttachmentGridDrawable;->mParallaxFraction:F

    .line 110
    return-void
.end method
