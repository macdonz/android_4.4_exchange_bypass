.class public final Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;
.super Ljava/lang/Object;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/photomanager/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitmapIdentifier"
.end annotation


# static fields
.field private static final sWorkDims:Lcom/android/mail/ui/ImageCanvas$Dimensions;


# instance fields
.field public final h:I

.field public final key:Ljava/lang/Object;

.field public final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 832
    new-instance v0, Lcom/android/mail/ui/ImageCanvas$Dimensions;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/ImageCanvas$Dimensions;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->sWorkDims:Lcom/android/mail/ui/ImageCanvas$Dimensions;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0
    .parameter "key"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 849
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 850
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->key:Ljava/lang/Object;

    .line 851
    iput p2, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    .line 852
    iput p3, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    .line 853
    return-void
.end method

.method public static getBitmapKey(Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/android/mail/ui/ImageCanvas;Lcom/android/mail/ui/ImageCanvas$Dimensions;)Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;
    .locals 4
    .parameter "id"
    .parameter "view"
    .parameter "dimensions"

    .prologue
    .line 838
    if-eqz p2, :cond_0

    .line 839
    iget v1, p2, Lcom/android/mail/ui/ImageCanvas$Dimensions;->width:I

    .line 840
    .local v1, width:I
    #v1=(Integer);
    iget v0, p2, Lcom/android/mail/ui/ImageCanvas$Dimensions;->height:I

    .line 846
    .local v0, height:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);v3=(Conflicted);
    new-instance v2, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    #v2=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;->getKey()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    invoke-direct {v2, v3, v1, v0}, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;-><init>(Ljava/lang/Object;II)V

    #v2=(Reference);
    return-object v2

    .line 842
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;->getKey()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    sget-object v3, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->sWorkDims:Lcom/android/mail/ui/ImageCanvas$Dimensions;

    #v3=(Reference);
    invoke-interface {p1, v2, v3}, Lcom/android/mail/ui/ImageCanvas;->getDesiredDimensions(Ljava/lang/Object;Lcom/android/mail/ui/ImageCanvas$Dimensions;)V

    .line 843
    sget-object v2, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->sWorkDims:Lcom/android/mail/ui/ImageCanvas$Dimensions;

    iget v1, v2, Lcom/android/mail/ui/ImageCanvas$Dimensions;->width:I

    .line 844
    .restart local v1       #width:I
    #v1=(Integer);
    sget-object v2, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->sWorkDims:Lcom/android/mail/ui/ImageCanvas$Dimensions;

    iget v0, v2, Lcom/android/mail/ui/ImageCanvas$Dimensions;->height:I

    .restart local v0       #height:I
    #v0=(Integer);
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 866
    #v2=(Null);
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    #v4=(Reference);
    if-eq v3, v4, :cond_2

    :cond_0
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 872
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    .line 868
    :cond_2
    #v0=(Uninit);v1=(One);v3=(Reference);v4=(Reference);
    if-eq p1, p0, :cond_1

    move-object v0, p1

    .line 871
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    .line 872
    .local v0, o:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;
    iget-object v3, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->key:Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->key:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    #v3=(Integer);
    iget v4, v0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    #v4=(Integer);
    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    iget v4, v0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    if-eq v3, v4, :cond_1

    :cond_3
    #v4=(Conflicted);
    move v1, v2

    #v1=(Null);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 857
    const/16 v0, 0x13

    .line 858
    .local v0, hash:I
    #v0=(PosByte);
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->key:Ljava/lang/Object;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    #v1=(Integer);
    add-int/lit16 v0, v1, 0x24d

    .line 859
    #v0=(Integer);
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    #v2=(Integer);
    add-int v0, v1, v2

    .line 860
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    add-int v0, v1, v2

    .line 861
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "{"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 878
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    const-string v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 881
    const-string v1, " w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    iget v1, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 883
    const-string v1, " h="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    iget v1, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 885
    const-string v1, "}"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
