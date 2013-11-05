.class public Lcom/android/mail/ui/ImageCanvas$Dimensions;
.super Ljava/lang/Object;
.source "ImageCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ImageCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimensions"
.end annotation


# instance fields
.field public height:I

.field public scale:F

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "s"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    #p0=(Reference);
    iput p1, p0, Lcom/android/mail/ui/ImageCanvas$Dimensions;->width:I

    .line 44
    iput p2, p0, Lcom/android/mail/ui/ImageCanvas$Dimensions;->height:I

    .line 45
    iput p3, p0, Lcom/android/mail/ui/ImageCanvas$Dimensions;->scale:F

    .line 46
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    const-string v0, "Dimens [%d x %d]"

    #v0=(Reference);
    const/4 v1, 0x2

    #v1=(PosByte);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    iget v3, p0, Lcom/android/mail/ui/ImageCanvas$Dimensions;->width:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/4 v2, 0x1

    #v2=(One);
    iget v3, p0, Lcom/android/mail/ui/ImageCanvas$Dimensions;->height:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
