.class public Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
.super Ljava/lang/Object;
.source "PhotoBitmapLoaderInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapResult"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method
