.class public Lcom/android/bitmap/ReusableBitmap;
.super Ljava/lang/Object;
.source "ReusableBitmap.java"

# interfaces
.implements Lcom/android/bitmap/Poolable;


# instance fields
.field public final bmp:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mOrientation:I

.field private mRefCount:I

.field private final mReusable:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 36
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, p1, v0}, Lcom/android/bitmap/ReusableBitmap;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 37
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "reusable"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/bitmap/ReusableBitmap;->mRefCount:I

    .line 40
    iput-object p1, p0, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    .line 41
    iput-boolean p2, p0, Lcom/android/bitmap/ReusableBitmap;->mReusable:Z

    .line 42
    return-void
.end method


# virtual methods
.method public acquireReference()V
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/bitmap/ReusableBitmap;->mRefCount:I

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bitmap/ReusableBitmap;->mRefCount:I

    .line 80
    return-void
.end method

.method public getByteCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getLogicalHeight()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/bitmap/ReusableBitmap;->mHeight:I

    #v0=(Integer);
    return v0
.end method

.method public getLogicalWidth()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/bitmap/ReusableBitmap;->mWidth:I

    #v0=(Integer);
    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/bitmap/ReusableBitmap;->mOrientation:I

    #v0=(Integer);
    return v0
.end method

.method public getRefCount()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/bitmap/ReusableBitmap;->mRefCount:I

    #v0=(Integer);
    return v0
.end method

.method public isEligibleForPooling()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/bitmap/ReusableBitmap;->mReusable:Z

    #v0=(Boolean);
    return v0
.end method

.method public releaseReference()V
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/bitmap/ReusableBitmap;->mRefCount:I

    #v0=(Integer);
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 87
    :cond_0
    #v0=(Integer);
    iget v0, p0, Lcom/android/bitmap/ReusableBitmap;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/bitmap/ReusableBitmap;->mRefCount:I

    .line 88
    return-void
.end method

.method public setLogicalHeight(I)V
    .locals 0
    .parameter "h"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/bitmap/ReusableBitmap;->mHeight:I

    .line 55
    return-void
.end method

.method public setLogicalWidth(I)V
    .locals 0
    .parameter "w"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/bitmap/ReusableBitmap;->mWidth:I

    .line 51
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/bitmap/ReusableBitmap;->mOrientation:I

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "["

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, " refCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Lcom/android/bitmap/ReusableBitmap;->mRefCount:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, " mReusable="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-boolean v1, p0, Lcom/android/bitmap/ReusableBitmap;->mReusable:Z

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, " bmp="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, " logicalW/H="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/android/bitmap/ReusableBitmap;->mWidth:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "/"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Lcom/android/bitmap/ReusableBitmap;->mHeight:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 110
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    #v1=(Integer);
    shr-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "KB"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
