.class public Lcom/android/mail/ui/CustomTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "CustomTypefaceSpan.java"


# instance fields
.field private newColor:I

.field private newSize:I

.field private final newType:Landroid/graphics/Typeface;


# direct methods
.method private static applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;II)V
    .locals 4
    .parameter "paint"
    .parameter "tf"
    .parameter "newSize"
    .parameter "newColor"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 63
    .local v1, old:Landroid/graphics/Typeface;
    #v1=(Reference);
    if-nez v1, :cond_2

    .line 64
    const/4 v2, 0x0

    .line 69
    .local v2, oldStyle:I
    :goto_0
    #v2=(Integer);
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    #v3=(Integer);
    xor-int/lit8 v3, v3, -0x1

    and-int v0, v2, v3

    .line 70
    .local v0, fake:I
    #v0=(Integer);
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 71
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 74
    :cond_0
    #v3=(Integer);
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 75
    const/high16 v3, -0x4180

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 78
    :cond_1
    int-to-float v3, p2

    #v3=(Float);
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 81
    return-void

    .line 66
    .end local v0           #fake:I
    .end local v2           #oldStyle:I
    :cond_2
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .restart local v2       #oldStyle:I
    #v2=(Integer);
    goto :goto_0
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .parameter "ds"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mail/ui/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    #v0=(Reference);
    iget v1, p0, Lcom/android/mail/ui/CustomTypefaceSpan;->newSize:I

    #v1=(Integer);
    iget v2, p0, Lcom/android/mail/ui/CustomTypefaceSpan;->newColor:I

    #v2=(Integer);
    invoke-static {p1, v0, v1, v2}, Lcom/android/mail/ui/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;II)V

    .line 53
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 3
    .parameter "paint"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mail/ui/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    #v0=(Reference);
    iget v1, p0, Lcom/android/mail/ui/CustomTypefaceSpan;->newSize:I

    #v1=(Integer);
    iget v2, p0, Lcom/android/mail/ui/CustomTypefaceSpan;->newColor:I

    #v2=(Integer);
    invoke-static {p1, v0, v1, v2}, Lcom/android/mail/ui/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;II)V

    .line 58
    return-void
.end method
