.class public Lcom/android/mail/utils/RectUtils;
.super Ljava/lang/Object;
.source "RectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static rotateRect(IIILandroid/graphics/Rect;)V
    .locals 6
    .parameter "degrees"
    .parameter "px"
    .parameter "py"
    .parameter "rect"

    .prologue
    .line 60
    new-instance v1, Landroid/graphics/RectF;

    #v1=(UninitRef);
    invoke-direct {v1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 61
    .local v1, rectF:Landroid/graphics/RectF;
    #v1=(Reference);
    new-instance v0, Landroid/graphics/Matrix;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    .local v0, matrix:Landroid/graphics/Matrix;
    #v0=(Reference);
    int-to-float v2, p0

    #v2=(Float);
    int-to-float v3, p1

    #v3=(Float);
    int-to-float v4, p2

    #v4=(Float);
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 64
    iget v2, v1, Landroid/graphics/RectF;->left:F

    #v2=(Integer);
    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    #v3=(Integer);
    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    #v4=(Integer);
    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    #v5=(Integer);
    float-to-int v5, v5

    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    return-void
.end method

.method public static rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "orientation"
    .parameter "fullRect"
    .parameter "partialRect"

    .prologue
    .line 39
    new-instance v1, Landroid/graphics/Matrix;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 42
    .local v1, matrix:Landroid/graphics/Matrix;
    #v1=(Reference);
    neg-int v3, p0

    #v3=(Integer);
    int-to-float v3, v3

    #v3=(Float);
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 44
    .local v0, fullRectF:Landroid/graphics/RectF;
    #v0=(Reference);
    new-instance v2, Landroid/graphics/RectF;

    #v2=(UninitRef);
    invoke-direct {v2, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 45
    .local v2, partialRectF:Landroid/graphics/RectF;
    #v2=(Reference);
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 46
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 48
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 49
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #v3=(Integer);
    neg-float v3, v3

    #v3=(Float);
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #v4=(Integer);
    neg-float v4, v4

    #v4=(Float);
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 50
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 51
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 53
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #v3=(Integer);
    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    #v4=(Integer);
    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    #v5=(Integer);
    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    #v6=(Integer);
    float-to-int v6, v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 55
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    return-void
.end method
